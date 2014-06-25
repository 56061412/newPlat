/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : auto

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2014-06-25 10:03:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_auto_oa_menu_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_menu_info`;
CREATE TABLE `t_auto_oa_menu_info` (
  `APME_GUID` varchar(64) NOT NULL COMMENT '菜单配置表主键',
  `APME_PARENT_GUID` varchar(64) DEFAULT NULL COMMENT '菜单配置表父主键',
  `APME_MENU_NAME` varchar(64) NOT NULL COMMENT '菜单名称',
  `APME_MENU_DESC` varchar(128) NOT NULL DEFAULT ' ' COMMENT '菜单说明',
  `APME_MENU_URL` varchar(128) NOT NULL COMMENT '菜单地址',
  `APME_SORT` int(11) NOT NULL DEFAULT '0' COMMENT '菜单排序',
  `APME_DEPTH` int(11) NOT NULL DEFAULT '0' COMMENT '菜单树节点深度',
  `APME_FULL_PATH` varchar(1024) NOT NULL DEFAULT ' ' COMMENT '菜单树结构完整路径',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `RECORD_VERSION` int(11) NOT NULL DEFAULT '1' COMMENT '版本号(修改一次加1)',
  PRIMARY KEY (`APME_GUID`),
  KEY `INDEX_MENU` (`APME_MENU_NAME`),
  KEY `FK_MENU_SELF` (`APME_PARENT_GUID`),
  CONSTRAINT `FK_MENU_SELF` FOREIGN KEY (`APME_PARENT_GUID`) REFERENCES `t_auto_oa_menu_info` (`APME_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单配置表';

-- ----------------------------
-- Records of t_auto_oa_menu_info
-- ----------------------------
INSERT INTO `t_auto_oa_menu_info` VALUES ('0a80c68d-a671-4b3d-aeaf-ae9bbe232edb', '5dad9b8d-c30d-46eb-9eab-3ec9507c5a98', '组织用户', '组织用户', 'AUTO/OA/ORG/orgUserIndex.jsp', '0', '2', '/ROOT/5dad9b8d-c30d-46eb-9eab-3ec9507c5a98/0a80c68d-a671-4b3d-aeaf-ae9bbe232edb', '0', '123', 'admin', '2013-01-25 16:50:27', '2013-01-25 16:50:27', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('12f04341-6f13-4e1d-9d5d-10737e986294', '1c9a50d7-0717-4391-8b66-f7a3e7fb61c0', '系统常量', '系统常量', 'AUTO/OA/SYS/sysConstantCodeIndex.jsp', '0', '2', '/ROOT/1c9a50d7-0717-4391-8b66-f7a3e7fb61c0/12f04341-6f13-4e1d-9d5d-10737e986294', '0', '123', 'admin', '2013-01-25 16:51:20', '2013-01-25 16:51:20', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('1c9a50d7-0717-4391-8b66-f7a3e7fb61c0', 'ROOT', '系统管理', '系统管理', ' ', '3', '1', '/ROOT/1c9a50d7-0717-4391-8b66-f7a3e7fb61c0', '0', '123', 'admin', '2013-01-25 16:48:56', '2013-01-25 16:48:56', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('5c585d0c-88af-48eb-9145-cced7db1fe77', 'e9d1e1b4-cbc9-45c9-acd9-a38d70055bfb', '菜单配置', '菜单配置', 'AUTO/OA/MENU/menuInfoIndex.jsp', '0', '2', '/ROOT/e9d1e1b4-cbc9-45c9-acd9-a38d70055bfb/5c585d0c-88af-48eb-9145-cced7db1fe77', '0', '213', 'admin', '2013-01-25 16:46:58', '2013-01-25 16:46:58', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('5dad9b8d-c30d-46eb-9eab-3ec9507c5a98', 'ROOT', '用户管理', '用户管理', ' ', '1', '1', '/ROOT/5dad9b8d-c30d-46eb-9eab-3ec9507c5a98', '0', '123', 'admin', '2013-01-25 00:00:00', '2013-01-25 16:48:41', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('7801a049-c2dc-45a3-b097-763ebb158194', 'ROOT', '组织管理', '组织管理', ' ', '0', '1', '/ROOT/7801a049-c2dc-45a3-b097-763ebb158194', '0', '123', 'admin', '2013-01-25 00:00:00', '2014-02-24 21:32:48', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('9b38b16b-8e61-443f-b966-920269aad65f', '7801a049-c2dc-45a3-b097-763ebb158194', '区域信息', '区域信息', 'AUTO/OA/ORG/orgAreaIndex.jsp', '1', '2', '/ROOT/7801a049-c2dc-45a3-b097-763ebb158194/9b38b16b-8e61-443f-b966-920269aad65f', '0', '123', 'admin', '2013-01-25 16:49:50', '2013-01-25 16:49:50', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('a65899f0-3f3d-45e2-823f-9f27adc0f6dc', '5dad9b8d-c30d-46eb-9eab-3ec9507c5a98', '岗位信息', '岗位信息', 'AUTO/OA/USER/userPostList.jsp', '1', '2', '/ROOT/5dad9b8d-c30d-46eb-9eab-3ec9507c5a98/a65899f0-3f3d-45e2-823f-9f27adc0f6dc', '0', '123', 'admin', '2013-01-25 16:50:50', '2013-01-25 16:50:50', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('aca69656-20c6-4729-8acb-f62d6a565756', '7801a049-c2dc-45a3-b097-763ebb158194', '组织信息', '组织信息', 'AUTO/OA/ORG/orgInfoIndex.jsp', '0', '2', '/ROOT/7801a049-c2dc-45a3-b097-763ebb158194/aca69656-20c6-4729-8acb-f62d6a565756', '0', '123', 'admin', '2013-01-25 16:49:32', '2013-01-25 16:49:32', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('c6d9974f-8f3e-49ea-b4cf-9c604b0d64e8', 'ec1f47fd-aa42-4314-81bb-6194dff81b5e', '注册用户', '注册用户', 'AUTO/OA/USER/snsLoginUserInfoList.jsp', '0', '2', '/ROOT/ec1f47fd-aa42-4314-81bb-6194dff81b5e/c6d9974f-8f3e-49ea-b4cf-9c604b0d64e8', '0', 'admin', 'admin', '2013-04-05 10:26:21', '2013-04-05 10:26:21', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('cde5c6ae-a32a-44ee-bdf2-5973446e0da9', 'e9d1e1b4-cbc9-45c9-acd9-a38d70055bfb', '角色配置', '角色配置', 'AUTO/OA/MENU/menuRoleIndex.jsp', '1', '2', '/ROOT/e9d1e1b4-cbc9-45c9-acd9-a38d70055bfb/cde5c6ae-a32a-44ee-bdf2-5973446e0da9', '0', '213', 'admin', '2013-01-25 16:47:23', '2013-01-25 16:47:23', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('e9d1e1b4-cbc9-45c9-acd9-a38d70055bfb', 'ROOT', '菜单管理', '菜单管理', ' ', '2', '1', '/ROOT/e9d1e1b4-cbc9-45c9-acd9-a38d70055bfb', '0', '213', 'admin', '2013-01-25 00:00:00', '2013-01-25 16:48:40', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('ec1f47fd-aa42-4314-81bb-6194dff81b5e', 'ROOT', '注册管理', '注册管理', ' ', '0', '1', '/ROOT/ec1f47fd-aa42-4314-81bb-6194dff81b5e', '0', 'admin', 'admin', '2013-04-05 10:26:02', '2013-04-05 10:26:03', '1');
INSERT INTO `t_auto_oa_menu_info` VALUES ('ROOT', null, '菜单配置', '菜单配置根节点', ' ', '0', '0', '/ROOT', '0', 'admin', 'admin', '2013-01-25 16:42:42', '2013-01-25 16:42:46', '1');

-- ----------------------------
-- Table structure for `t_auto_oa_menu_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_menu_role`;
CREATE TABLE `t_auto_oa_menu_role` (
  `APRO_GUID` varchar(64) NOT NULL COMMENT '系统角色信息表主键',
  `APRO_ROLE_CODE` varchar(64) NOT NULL DEFAULT ' ' COMMENT '角色代码',
  `APRO_ROLE_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '角色名称',
  `APRO_ROLE_DESC` varchar(128) DEFAULT ' ' COMMENT '角色说明',
  `APRO_SORT` int(11) DEFAULT '0' COMMENT '排序',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `RECORD_VERSION` int(11) NOT NULL DEFAULT '1' COMMENT '版本号(修改一次加1)',
  PRIMARY KEY (`APRO_GUID`),
  KEY `INDEX_ROLE` (`APRO_ROLE_CODE`,`APRO_ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色信息表';

-- ----------------------------
-- Records of t_auto_oa_menu_role
-- ----------------------------
INSERT INTO `t_auto_oa_menu_role` VALUES ('1', 'ADMIN', '系统管理员', ' ', '0', '0', 'admin', '123', '2013-01-20 00:00:00', '2013-01-24 19:19:29', '1');
INSERT INTO `t_auto_oa_menu_role` VALUES ('3fb69619-525f-4298-b2f7-89d932a6eb94', 'PUBLISH_TASK', '发布任务角色', ' ', '0', '0', 'admin', ' ', '2013-11-24 19:45:16', '2013-11-24 19:45:16', '1');
INSERT INTO `t_auto_oa_menu_role` VALUES ('6a856b33-c505-4abe-9b83-b67dc85a34d5', 'COMPANY_ADMIN', '公司管理员', ' ', '0', '0', ' ', ' ', '2014-03-05 22:38:33', '2014-03-05 22:38:33', '1');

-- ----------------------------
-- Table structure for `t_auto_oa_menu_role_map`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_menu_role_map`;
CREATE TABLE `t_auto_oa_menu_role_map` (
  `APRMM_GUID` varchar(64) NOT NULL COMMENT '角色菜单关系表主键',
  `APRO_GUID` varchar(64) DEFAULT NULL COMMENT '系统角色信息表主键',
  `APME_GUID` varchar(64) DEFAULT NULL COMMENT '菜单配置表主键',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`APRMM_GUID`),
  KEY `FK_APRMM_MENU` (`APME_GUID`),
  KEY `FK_APRMM_ROLE` (`APRO_GUID`),
  CONSTRAINT `FK_APRMM_MENU` FOREIGN KEY (`APME_GUID`) REFERENCES `t_auto_oa_menu_info` (`APME_GUID`),
  CONSTRAINT `FK_APRMM_ROLE` FOREIGN KEY (`APRO_GUID`) REFERENCES `t_auto_oa_menu_role` (`APRO_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单关系表';

-- ----------------------------
-- Records of t_auto_oa_menu_role_map
-- ----------------------------
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('28ec5060-917c-462c-8025-bdcf1380c2bb', '1', 'e9d1e1b4-cbc9-45c9-acd9-a38d70055bfb', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('385a484f-5418-4fa5-886a-81d64ec13c19', '1', 'aca69656-20c6-4729-8acb-f62d6a565756', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('38c072a2-761a-4d6b-be30-1e79f0ff8836', '6a856b33-c505-4abe-9b83-b67dc85a34d5', 'aca69656-20c6-4729-8acb-f62d6a565756', '0', ' ', ' ', '2014-03-05 22:45:28', '2014-03-05 22:45:28');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('60e0857d-344c-4c20-9c69-5ac97e14d41b', '1', '1c9a50d7-0717-4391-8b66-f7a3e7fb61c0', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('70a5bd3a-362a-47f1-ac7b-249c312d7741', '6a856b33-c505-4abe-9b83-b67dc85a34d5', '5dad9b8d-c30d-46eb-9eab-3ec9507c5a98', '0', ' ', ' ', '2014-03-05 22:45:56', '2014-03-05 22:45:56');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('71fd6455-24de-43f6-aa80-b0cf7e5863fc', '1', '7801a049-c2dc-45a3-b097-763ebb158194', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('75b5b61b-1b5e-433b-bcaf-ef66ad7a327c', '1', '0a80c68d-a671-4b3d-aeaf-ae9bbe232edb', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('84f5a2db-0ed2-4e31-89ad-5423a103f86d', '6a856b33-c505-4abe-9b83-b67dc85a34d5', 'a65899f0-3f3d-45e2-823f-9f27adc0f6dc', '0', ' ', ' ', '2014-03-05 22:45:56', '2014-03-05 22:45:56');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('926a8e45-9558-4327-a69c-0d263f988d38', '6a856b33-c505-4abe-9b83-b67dc85a34d5', '7801a049-c2dc-45a3-b097-763ebb158194', '0', ' ', ' ', '2014-03-05 22:45:28', '2014-03-05 22:45:28');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('9ed06518-abb9-4d25-a3dd-30b6482c4b54', '6a856b33-c505-4abe-9b83-b67dc85a34d5', 'c6d9974f-8f3e-49ea-b4cf-9c604b0d64e8', '0', ' ', ' ', '2014-03-05 22:45:42', '2014-03-05 22:45:42');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('a543895a-f53f-4e1d-ac73-0a42e4072fe7', '1', 'ROOT', '0', 'admin', 'admin', '2013-01-28 16:34:23', '2013-01-28 16:34:23');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('a744ef33-5847-4585-9573-7b1df29e0f98', '1', 'a65899f0-3f3d-45e2-823f-9f27adc0f6dc', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('a80161c9-2f0b-4c38-9d05-9fdcf2e03815', '6a856b33-c505-4abe-9b83-b67dc85a34d5', '9b38b16b-8e61-443f-b966-920269aad65f', '0', ' ', ' ', '2014-03-05 22:45:28', '2014-03-05 22:45:28');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('a8989b34-f7f9-49eb-b73d-d5301e8ab71f', '1', '9b38b16b-8e61-443f-b966-920269aad65f', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('b55fcdc9-d756-4941-b242-2820c2972e6f', '1', '12f04341-6f13-4e1d-9d5d-10737e986294', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('dac6db06-847c-4218-a43f-0e3e5409418d', '6a856b33-c505-4abe-9b83-b67dc85a34d5', '0a80c68d-a671-4b3d-aeaf-ae9bbe232edb', '0', ' ', ' ', '2014-03-05 22:45:56', '2014-03-05 22:45:56');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('e802bb70-f0d9-412e-9795-2aff60739955', '1', '5dad9b8d-c30d-46eb-9eab-3ec9507c5a98', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('eee1daeb-02db-40ec-9168-25088d4d93ae', '1', '5c585d0c-88af-48eb-9145-cced7db1fe77', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('ef618868-1711-4a1a-884f-9c7c36b23139', '1', 'cde5c6ae-a32a-44ee-bdf2-5973446e0da9', '0', 'admin', 'admin', '2013-01-28 16:34:24', '2013-01-28 16:34:24');
INSERT INTO `t_auto_oa_menu_role_map` VALUES ('faf41040-02ef-4710-8bcb-a0e629ac5f2d', '6a856b33-c505-4abe-9b83-b67dc85a34d5', 'ec1f47fd-aa42-4314-81bb-6194dff81b5e', '0', ' ', ' ', '2014-03-05 22:45:42', '2014-03-05 22:45:42');

-- ----------------------------
-- Table structure for `t_auto_oa_menu_role_user_map`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_menu_role_user_map`;
CREATE TABLE `t_auto_oa_menu_role_user_map` (
  `APRUM_GUID` varchar(64) NOT NULL COMMENT '用户角色关系表主键',
  `AUSER_GUID` varchar(64) DEFAULT NULL COMMENT '用户信息表主键',
  `APRO_GUID` varchar(64) DEFAULT NULL COMMENT '系统角色信息表主键',
  `AUORG_GUID` varchar(64) DEFAULT NULL COMMENT '组织结构表主键',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`APRUM_GUID`),
  KEY `FK_APRUM_ORG` (`AUORG_GUID`),
  KEY `FK_APRUM_ROLE` (`APRO_GUID`),
  KEY `FK_APRUM_USER` (`AUSER_GUID`),
  CONSTRAINT `FK_APRUM_ORG` FOREIGN KEY (`AUORG_GUID`) REFERENCES `t_auto_oa_org_info` (`AUORG_GUID`),
  CONSTRAINT `FK_APRUM_ROLE` FOREIGN KEY (`APRO_GUID`) REFERENCES `t_auto_oa_menu_role` (`APRO_GUID`),
  CONSTRAINT `FK_APRUM_USER` FOREIGN KEY (`AUSER_GUID`) REFERENCES `t_auto_oa_user_info` (`AUSER_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

-- ----------------------------
-- Records of t_auto_oa_menu_role_user_map
-- ----------------------------
INSERT INTO `t_auto_oa_menu_role_user_map` VALUES ('01c845b2-c71f-4c7a-a2ab-0203a5d907e8', '3c388dc8-de9e-4f38-a50f-dfc518109513', '6a856b33-c505-4abe-9b83-b67dc85a34d5', 'ef5a263d-d54d-4864-ab8a-5eb0e7689e4d', '0', 'admin', 'admin', '2014-03-05 23:11:44', '2014-03-05 23:11:44');
INSERT INTO `t_auto_oa_menu_role_user_map` VALUES ('e9e483a1-ae6a-48e4-9024-5b99f84d1f71', 'admin', '3fb69619-525f-4298-b2f7-89d932a6eb94', 'ROOT', '0', 'admin', ' ', '2013-11-24 19:49:22', '2013-11-24 19:49:22');
INSERT INTO `t_auto_oa_menu_role_user_map` VALUES ('eed0a4b8-52ff-4489-a9ae-a1fcba56d766', 'e32a7638-4ec8-4235-b57a-55abf5284216', '3fb69619-525f-4298-b2f7-89d932a6eb94', 'ef5a263d-d54d-4864-ab8a-5eb0e7689e4d', '0', 'admin', 'admin', '2014-04-01 13:25:40', '2014-04-01 13:25:40');
INSERT INTO `t_auto_oa_menu_role_user_map` VALUES ('ROOT', 'admin', '1', 'ROOT', '0', 'admin', 'admin', '2013-07-19 15:14:54', '2013-07-19 15:14:56');

-- ----------------------------
-- Table structure for `t_auto_oa_org_area`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_org_area`;
CREATE TABLE `t_auto_oa_org_area` (
  `AUAR_GUID` varchar(64) NOT NULL COMMENT '区域信息表主键',
  `AUAR_PARENT_GUID` varchar(64) DEFAULT NULL COMMENT '区域信息表父主键',
  `AUAR_TYPE_CODE` varchar(12) NOT NULL DEFAULT ' ' COMMENT '类型代码（大区/省/直辖市/城市）',
  `AUAR_TYPE_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '类型名称（大区/省/直辖市/城市）',
  `AUAR_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '区域名称',
  `AUAR_DESC` varchar(128) NOT NULL DEFAULT ' ' COMMENT '说明',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `RECORD_VERSION` int(11) NOT NULL DEFAULT '1' COMMENT '版本号(修改一次加1)',
  PRIMARY KEY (`AUAR_GUID`),
  KEY `INDEX_AREA` (`AUAR_TYPE_CODE`,`AUAR_NAME`),
  KEY `FK_AREA_SELF` (`AUAR_PARENT_GUID`),
  CONSTRAINT `FK_AREA_SELF` FOREIGN KEY (`AUAR_PARENT_GUID`) REFERENCES `t_auto_oa_org_area` (`AUAR_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域信息表';

-- ----------------------------
-- Records of t_auto_oa_org_area
-- ----------------------------
INSERT INTO `t_auto_oa_org_area` VALUES ('1', null, 'AREA', '根节点', '区域信息', '区域信息根节点', '0', 'admin', 'admin', '2013-01-20 21:07:25', '2013-01-20 21:07:31', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('103a31fb-fc36-42cf-b42e-bbbd16629e14', 'e2d9c1d0-5626-42d9-a7b0-4eb865b690b9', 'A_PROVINCE', ' ', '安徽省', '安徽省', '0', 'admin', ' ', '2013-11-18 14:46:07', '2013-11-18 14:46:07', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('1848c5c6-c4bd-4a92-8d58-638f97e135f1', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '石家庄市', '石家庄市', '0', 'admin', 'admin', '2013-04-04 22:25:52', '2013-04-04 22:25:52', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('19372a66-cac5-4c0e-892e-b96ffc157af4', 'e2d9c1d0-5626-42d9-a7b0-4eb865b690b9', 'A_PROVINCE', ' ', '浙江省', '浙江省', '0', 'admin', ' ', '2013-11-18 14:46:15', '2013-11-18 14:46:15', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('1e676c35-2848-4b12-b812-733d342f944a', '4d4e921a-1493-40b6-bcd5-2e9e13012ff3', 'A_PROVINCE', ' ', '河北省', '河北省', '0', 'admin', 'admin', '2013-01-28 00:00:00', '2013-04-04 22:24:57', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('27578b68-e936-4c5a-b9c2-ead0c1574b81', 'e2d9c1d0-5626-42d9-a7b0-4eb865b690b9', 'A_PROVINCE', ' ', '福建省', '福建省', '0', 'admin', ' ', '2013-11-18 14:46:25', '2013-11-18 14:46:25', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('2b9b1f98-9b4c-49fd-b5c9-25f620dc6d80', '678938b5-6377-4220-98d5-8207380affc1', 'A_PROVINCE', ' ', '西藏自治区', '西藏自治区', '0', 'admin', ' ', '2013-11-18 14:41:18', '2013-11-18 14:41:18', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'e2d9c1d0-5626-42d9-a7b0-4eb865b690b9', 'A_PROVINCE', ' ', '山东省', '山东省', '0', 'admin', ' ', '2013-11-18 14:45:51', '2013-11-18 14:45:51', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('3582b4f2-1a6e-4969-9fda-020d463492c3', '8ba2c435-3bda-4f2a-b761-a26c8bddc31a', 'A_PROVINCE', ' ', '广东省', '广东省', '0', 'admin', ' ', '2013-11-18 14:41:44', '2013-11-18 14:41:44', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('39332caa-3f97-46fb-bfce-9c13464caf39', '678938b5-6377-4220-98d5-8207380affc1', 'A_PROVINCE', ' ', '重庆市', '重庆市', '0', 'admin', ' ', '2013-11-18 14:41:28', '2013-11-18 14:41:28', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('3965b325-e8fc-490e-9c82-05e7559f8efc', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '邯郸市', '邯郸市', '0', 'admin', 'admin', '2013-04-04 22:25:23', '2013-04-04 22:25:23', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('3b0fc5d1-4684-4954-aeee-f3afe6d15604', '8ba2c435-3bda-4f2a-b761-a26c8bddc31a', 'A_PROVINCE', ' ', '海南省', '海南省', '0', 'admin', ' ', '2013-11-18 14:42:02', '2013-11-18 14:42:02', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('3b39b390-a633-4a15-ab3c-edcd4ddd0749', '8ba2c435-3bda-4f2a-b761-a26c8bddc31a', 'A_PROVINCE', ' ', '广西省', '广西省', '0', 'admin', ' ', '2013-11-18 14:41:53', '2013-11-18 14:41:53', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'b1ef617c-e09f-42ce-8a7b-c6b505607687', 'A_PROVINCE', ' ', '新疆维吾尔自治区', '新疆维吾尔自治区', '0', 'admin', ' ', '2013-11-18 14:44:01', '2013-11-18 14:44:01', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('453ca003-f6af-4c87-8f70-88d9d625052b', 'b1ef617c-e09f-42ce-8a7b-c6b505607687', 'A_PROVINCE', ' ', '青海省', '青海省', '0', 'admin', ' ', '2013-11-18 14:44:09', '2013-11-18 14:44:09', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('486ac62c-a482-4038-9736-b25860bdb975', '4d4e921a-1493-40b6-bcd5-2e9e13012ff3', 'A_PROVINCE', ' ', '天津市', '天津市', '0', 'admin', ' ', '2013-11-18 14:38:23', '2013-11-18 14:38:23', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('4d4e921a-1493-40b6-bcd5-2e9e13012ff3', '1', 'A_REGION', ' ', '华北', '华东', '0', '123', 'admin', '2013-01-22 00:00:00', '2013-01-22 22:14:32', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('53379081-4e65-4b22-9c70-22104ade53ec', 'bc2601a7-2d4b-4b5c-85a8-ac43c45dd514', 'A_PROVINCE', ' ', '吉林省', '吉林省', '0', 'admin', ' ', '2013-11-18 14:44:51', '2013-11-18 14:44:51', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('678938b5-6377-4220-98d5-8207380affc1', '1', 'A_REGION', ' ', '西南', '西南', '0', '123', 'admin', '2013-01-22 22:13:55', '2013-01-22 22:13:55', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('68521ce3-c78d-4895-bd73-35c83ea97489', 'd73f37b2-b557-458a-b3fd-c771532ec9e6', 'A_PROVINCE', ' ', '湖北省', '湖北省', '0', 'admin', ' ', '2013-11-18 14:45:12', '2013-11-18 14:45:12', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('6aca27ec-03fe-41c7-bb6c-842e42d8cb65', 'bc2601a7-2d4b-4b5c-85a8-ac43c45dd514', 'A_PROVINCE', ' ', '黑龙江省', '黑龙江省', '0', 'admin', ' ', '2013-11-18 14:44:59', '2013-11-18 14:44:59', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('70dacf6e-3654-4ab4-8f31-825b279efb67', '678938b5-6377-4220-98d5-8207380affc1', 'A_PROVINCE', ' ', '四川省', '四川省', '0', 'admin', ' ', '2013-11-18 14:40:46', '2013-11-18 14:40:46', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('735b2452-acce-4e63-a90c-e6126f45d630', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '吉林市', '吉林市', '0', 'admin', ' ', '2013-11-21 23:21:58', '2013-11-21 23:21:58', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('76d9f402-25c7-47e4-9845-c9b8d5c5313c', 'b1ef617c-e09f-42ce-8a7b-c6b505607687', 'A_PROVINCE', ' ', '甘肃省', '甘肃省', '0', 'admin', ' ', '2013-11-18 14:44:27', '2013-11-18 14:44:27', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('85363803-4447-40f3-b7f3-68e664276170', '4d4e921a-1493-40b6-bcd5-2e9e13012ff3', 'A_PROVINCE', ' ', '内蒙古自治区', '内蒙古自治区', '0', 'admin', ' ', '2013-11-18 14:38:55', '2013-11-18 14:38:55', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('8ba2c435-3bda-4f2a-b761-a26c8bddc31a', '1', 'A_REGION', ' ', '华南', '华南', '0', '123', 'admin', '2013-01-22 22:13:37', '2013-01-22 22:13:37', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', '4d4e921a-1493-40b6-bcd5-2e9e13012ff3', 'A_PROVINCE', ' ', '山西省', '山西省', '0', 'admin', ' ', '2013-11-18 14:38:40', '2013-11-18 14:38:40', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('a5fa9d6e-61ec-4639-bec6-5b7b173ba07e', 'e2d9c1d0-5626-42d9-a7b0-4eb865b690b9', 'A_PROVINCE', ' ', '上海市', '上海市', '0', 'admin', ' ', '2013-11-18 14:46:33', '2013-11-18 14:46:33', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('a6a78d58-5691-45e8-bac3-d3970e42f91a', 'b1ef617c-e09f-42ce-8a7b-c6b505607687', 'A_PROVINCE', ' ', '陕西省', '陕西省', '0', 'admin', ' ', '2013-11-18 14:44:17', '2013-11-18 14:44:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR201311241', 'a5fa9d6e-61ec-4639-bec6-5b7b173ba07e', 'A_CITY', ' ', '上海市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112410', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '吕梁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124100', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '邵武市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124101', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '三明市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124102', '3b0fc5d1-4684-4954-aeee-f3afe6d15604', 'A_CITY', ' ', '海口市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124103', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '广州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124104', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '惠州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124105', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '汕头市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124106', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '深圳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124107', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '佛山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124108', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '中山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124109', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '潮州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112411', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '晋中市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124110', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '东莞市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124111', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '顺德市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124112', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '珠海市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124113', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '韶关市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124114', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '湛江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124115', '3b39b390-a633-4a15-ab3c-edcd4ddd0749', 'A_CITY', ' ', '南宁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124116', '3b39b390-a633-4a15-ab3c-edcd4ddd0749', 'A_CITY', ' ', '桂林市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124117', '3b39b390-a633-4a15-ab3c-edcd4ddd0749', 'A_CITY', ' ', '柳州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124118', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '合肥市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124119', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '阜阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112412', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '阳泉市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124120', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '安庆市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124121', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '巢湖市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124122', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '蒙城县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124123', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '武汉市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124124', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '襄樊市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124125', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '孝感市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124126', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '黄冈市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124127', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '黄石市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124128', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '荆门市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124129', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '荆州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112413', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '石家庄市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124130', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '宜昌市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124131', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '恩施市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124132', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '十堰市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124133', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '仙桃市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124134', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '咸宁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124135', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '长沙市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124136', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '湘潭市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124137', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '株洲市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124138', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '常德市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124139', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '衡阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112414', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '邯郸市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124140', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '岳阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124141', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '邵阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124142', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '益阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124143', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '南昌市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124144', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '上饶市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124145', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '赣州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124146', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '宜春市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124147', '6aca27ec-03fe-41c7-bb6c-842e42d8cb65', 'A_CITY', ' ', '哈尔滨市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124148', '6aca27ec-03fe-41c7-bb6c-842e42d8cb65', 'A_CITY', ' ', '大庆市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124149', '6aca27ec-03fe-41c7-bb6c-842e42d8cb65', 'A_CITY', ' ', '牡丹江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112415', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '保定市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124150', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '延吉市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124151', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '长春市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124152', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '赤峰市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124153', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '通辽市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124154', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '沈阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124155', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '大连市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124156', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '鞍山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124157', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '盘锦市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124158', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '朝阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124159', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '铁岭市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112416', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '唐山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124160', '76d9f402-25c7-47e4-9845-c9b8d5c5313c', 'A_CITY', ' ', '兰州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124161', '453ca003-f6af-4c87-8f70-88d9d625052b', 'A_CITY', ' ', '西宁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124162', 'b3b1b0f5-ed38-4fe6-b1e2-c683c596d8d4', 'A_CITY', ' ', '银川市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124163', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '乌鲁木齐市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124164', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '库尔勒市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124165', 'a6a78d58-5691-45e8-bac3-d3970e42f91a', 'A_CITY', ' ', '西安市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124166', 'a6a78d58-5691-45e8-bac3-d3970e42f91a', 'A_CITY', ' ', '咸阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124167', 'a6a78d58-5691-45e8-bac3-d3970e42f91a', 'A_CITY', ' ', '榆林市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124168', 'a6a78d58-5691-45e8-bac3-d3970e42f91a', 'A_CITY', ' ', '宝鸡市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124169', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '成都市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112417', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '衡水市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124170', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '都江堰市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124171', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '绵阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124172', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '南充市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124173', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '达州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124174', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '乐山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124175', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '德阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124176', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '泸州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124177', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '眉山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124178', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '遂宁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124179', 'ca3bcc63-974f-4f7e-ae17-188a49f26ac2', 'A_CITY', ' ', '昆明市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112418', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '邢台市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124180', 'ca3bcc63-974f-4f7e-ae17-188a49f26ac2', 'A_CITY', ' ', '曲靖市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124181', 'c1d9364e-138e-4b35-b142-74e033f3ac55', 'A_CITY', ' ', '贵阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124182', 'c1d9364e-138e-4b35-b142-74e033f3ac55', 'A_CITY', ' ', '遵义市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124183', 'c1d9364e-138e-4b35-b142-74e033f3ac55', 'A_CITY', ' ', '兴义市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124184', '2b9b1f98-9b4c-49fd-b5c9-25f620dc6d80', 'A_CITY', ' ', '拉萨市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124185', '39332caa-3f97-46fb-bfce-9c13464caf39', 'A_CITY', ' ', '重庆市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124186', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '莱西市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124187', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '胶州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124188', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '平度市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124189', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '龙口市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112419', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '秦皇岛市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124190', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '招远市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124191', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '沂水县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124192', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '平邑市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124193', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '驻马店市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124194', 'a5fa9d6e-61ec-4639-bec6-5b7b173ba07e', 'A_CITY', ' ', '金山区市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124195', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '莆田市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124196', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '肇庆市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124197', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '江门市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124198', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '清远市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124199', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '佛山市南海区市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR201311242', 'bd873ab1-5b00-4975-972c-bd0d025230d2', 'A_CITY', ' ', '北京市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112420', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '霸州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124200', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '鄂州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124201', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '房县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124202', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '随州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124203', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '天门市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124204', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '娄底市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124205', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '郴州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124206', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '永州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124207', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '宁乡县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124208', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '九江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124209', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '新余市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112421', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '沧州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124210', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '抚州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124211', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '葫芦岛市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124212', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '抚顺市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124213', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '辽阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124214', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '克拉玛依市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124215', 'a6a78d58-5691-45e8-bac3-d3970e42f91a', 'A_CITY', ' ', '汉中市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124216', 'a6a78d58-5691-45e8-bac3-d3970e42f91a', 'A_CITY', ' ', '渭南市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124217', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '雅安市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124218', 'ca3bcc63-974f-4f7e-ae17-188a49f26ac2', 'A_CITY', ' ', '大理市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124219', 'ca3bcc63-974f-4f7e-ae17-188a49f26ac2', 'A_CITY', ' ', '呈贡县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112422', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '廊坊市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124220', 'c1d9364e-138e-4b35-b142-74e033f3ac55', 'A_CITY', ' ', '六盘水市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124221', '39332caa-3f97-46fb-bfce-9c13464caf39', 'A_CITY', ' ', '奉节县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124222', '39332caa-3f97-46fb-bfce-9c13464caf39', 'A_CITY', ' ', '万州区市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124223', '39332caa-3f97-46fb-bfce-9c13464caf39', 'A_CITY', ' ', '永川区市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124224', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '哈密市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124225', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '吐鲁番市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124226', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '鹤壁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124227', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '信阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124228', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '新昌县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124229', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '乐清市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112423', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '张家口市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124230', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '伊宁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124231', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '攀枝花市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124232', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '吴江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124233', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '海门市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124234', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '马鞍山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124235', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '晋江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124236', 'ca3bcc63-974f-4f7e-ae17-188a49f26ac2', 'A_CITY', ' ', '玉溪市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124237', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '吉林市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124238', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '通化市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124239', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '营口市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112424', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '承德市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124240', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '锦州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124241', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '芜湖市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124242', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '慈溪市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124243', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '温岭市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124244', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '丹东市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124245', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '本溪市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124246', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '阜新市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124247', '6aca27ec-03fe-41c7-bb6c-842e42d8cb65', 'A_CITY', ' ', '齐齐哈尔市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124248', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '呼伦贝尔市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124249', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '忻州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112425', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '呼和浩特市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124250', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '朔州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124251', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '舟山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124252', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '宁德市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124253', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '揭阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124254', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '茂名市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124255', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '淮南市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124256', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '宿州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124257', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '六安市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124258', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '淮北市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124259', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '宣城市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112426', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '包头市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124260', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '漯河市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124261', 'a6a78d58-5691-45e8-bac3-d3970e42f91a', 'A_CITY', ' ', '延安市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124262', 'a6a78d58-5691-45e8-bac3-d3970e42f91a', 'A_CITY', ' ', '安康市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124263', '76d9f402-25c7-47e4-9845-c9b8d5c5313c', 'A_CITY', ' ', '庆阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124264', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '伊犁哈萨克自治州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124265', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '阿克苏市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124266', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '昌吉回族自治州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124267', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '喀什市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124268', '3b39b390-a633-4a15-ab3c-edcd4ddd0749', 'A_CITY', ' ', '玉林市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124269', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '宜宾市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112427', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '鄂尔多斯市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124270', 'ca3bcc63-974f-4f7e-ae17-188a49f26ac2', 'A_CITY', ' ', '大理白族自治州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124271', 'ca3bcc63-974f-4f7e-ae17-188a49f26ac2', 'A_CITY', ' ', '红河哈尼族彝族自治州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124272', 'c1d9364e-138e-4b35-b142-74e033f3ac55', 'A_CITY', ' ', '黔南布依族苗族自治州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124273', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '怀化市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124274', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '江阴市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124275', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '东台市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124276', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '溧阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124277', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '太仓市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124278', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '如东县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124279', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '丹阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112428', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '锡林浩特市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124280', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '江都市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124281', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '通州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124282', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '靖江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124283', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '如皋市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124284', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '张家市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124285', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '葫芦市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124286', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '四平市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124287', '6aca27ec-03fe-41c7-bb6c-842e42d8cb65', 'A_CITY', ' ', '佳木市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124288', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '连云市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124289', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '池州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112429', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '巴彦淖尔市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124290', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '蚌埠市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124291', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '滁州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124292', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '黄山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124293', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '铜陵市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124294', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '景德市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124295', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '萍乡市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124296', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '漳州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124297', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '南平市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124298', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '潜江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124299', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '平顶市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR201311243', '486ac62c-a482-4038-9736-b25860bdb975', 'A_CITY', ' ', '天津市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112430', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '济南市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124300', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '内江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124301', 'c1d9364e-138e-4b35-b142-74e033f3ac55', 'A_CITY', ' ', '铜仁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124302', '76d9f402-25c7-47e4-9845-c9b8d5c5313c', 'A_CITY', ' ', '天水市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124303', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '梅州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124304', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '海安市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124305', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '平阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124306', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '海宁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124307', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '吉安市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124308', '3b39b390-a633-4a15-ab3c-edcd4ddd0749', 'A_CITY', ' ', '北海市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124309', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '彭州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112431', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '青岛市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124310', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '广元市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124311', '103a31fb-fc36-42cf-b42e-bbbd16629e14', 'A_CITY', ' ', '淮南市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124312', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '温岭市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124313', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '乌海市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124314', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '益阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124315', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '白城市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124316', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '平邑县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124317', 'f1a08971-8526-41e3-9e6f-53e9558bb17b', 'A_CITY', ' ', '瓦房店市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124318', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '新泰市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124319', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '青州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112432', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '即墨市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124320', '76d9f402-25c7-47e4-9845-c9b8d5c5313c', 'A_CITY', ' ', '张掖市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124321', '76d9f402-25c7-47e4-9845-c9b8d5c5313c', 'A_CITY', ' ', '白银市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124322', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '昌吉市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124323', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '延边市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124324', '68521ce3-c78d-4895-bd73-35c83ea97489', 'A_CITY', ' ', '襄阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124325', '3c8e0d57-3b7b-4288-baf8-bd56b21f14f4', 'A_CITY', ' ', '伊犁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124326', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '崇州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124327', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '眉州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124328', '6aca27ec-03fe-41c7-bb6c-842e42d8cb65', 'A_CITY', ' ', '同江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124329', '6aca27ec-03fe-41c7-bb6c-842e42d8cb65', 'A_CITY', ' ', '佳木斯市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112433', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '德州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124330', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '榆树市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124331', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '松原市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124332', '53379081-4e65-4b22-9c70-22104ade53ec', 'A_CITY', ' ', '白山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124333', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '任丘市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124334', '85363803-4447-40f3-b7f3-68e664276170', 'A_CITY', ' ', '乌兰察布市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124335', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '孝义市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124336', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '莱州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124337', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '新昌县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124338', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '上虞市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124339', 'ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'A_CITY', ' ', '长沙县市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112434', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '威海市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124340', 'd3f3455e-e854-4c1e-94ed-00acfdbf5821', 'A_CITY', ' ', '景德镇市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124341', '76d9f402-25c7-47e4-9845-c9b8d5c5313c', 'A_CITY', ' ', '嘉峪关市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124342', '70dacf6e-3654-4ab4-8f31-825b279efb67', 'A_CITY', ' ', '自贡市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124343', 'ca3bcc63-974f-4f7e-ae17-188a49f26ac2', 'A_CITY', ' ', '保山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124344', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '邹城市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124345', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '诸暨市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124346', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '临海市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124347', '3b0fc5d1-4684-4954-aeee-f3afe6d15604', 'A_CITY', ' ', '三亚市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124348', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '南海市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124349', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '河源市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112435', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '淄博市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR20131124350', '3582b4f2-1a6e-4969-9fda-020d463492c3', 'A_CITY', ' ', '增城市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112436', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '济宁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112437', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '菏泽市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112438', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '滨州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112439', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '东营市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR201311244', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '太原市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112440', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '烟台市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112441', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '潍坊市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112442', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '高密市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112443', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '诸城市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112444', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '泰安市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112445', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '临沂市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112446', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '日照市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112447', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '聊城市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112448', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '枣庄市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112449', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '莱芜市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR201311245', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '大同市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112450', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '寿光市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112451', '2dc5e181-4cb4-4cb2-88fa-3dbf45635199', 'A_CITY', ' ', '胶南市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112452', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '郑州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112453', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '商丘市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112454', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '安阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112455', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '新乡市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112456', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '平顶山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112457', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '洛阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112458', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '南阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112459', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '焦作市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR201311246', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '长治市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112460', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '濮阳市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112461', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '许昌市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112462', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '开封市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112463', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '周口市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112464', 'd81529de-584c-4df9-bb8a-540f4c75b97d', 'A_CITY', ' ', '三门峡市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112465', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '杭州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112466', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '湖州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112467', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '嘉兴市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112468', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '宁波市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112469', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '余姚市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR201311247', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '晋城市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112470', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '绍兴市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112471', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '台州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112472', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '温州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112473', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '瑞安市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112474', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '义乌市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112475', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '丽水市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112476', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '金华市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112477', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '衢州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112478', '19372a66-cac5-4c0e-892e-b96ffc157af4', 'A_CITY', ' ', '苍南市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112479', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '南京市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR201311248', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '临汾市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112480', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '无锡市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112481', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '苏州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112482', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '扬州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112483', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '徐州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112484', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '宿迁市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112485', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '常州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112486', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '宜兴市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112487', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '常熟市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112488', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '张家港市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112489', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '淮安市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR201311249', '8dd790c4-2ec6-41e1-ba9c-8591b9fe14ac', 'A_CITY', ' ', '运城市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112490', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '昆山市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112491', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '泰州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112492', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '镇江市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112493', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '盐城市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112494', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '连云港市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112495', 'db2f96d9-9980-41ea-861c-a5b46b279893', 'A_CITY', ' ', '南通市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112496', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '福州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112497', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '厦门市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112498', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '泉州市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('AUAR2013112499', '27578b68-e936-4c5a-b9c2-ead0c1574b81', 'A_CITY', ' ', '龙岩市', ' ', '0', 'admin', ' ', '2013-11-24 19:32:17', '2013-11-24 19:32:17', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('b1ef617c-e09f-42ce-8a7b-c6b505607687', '1', 'A_REGION', ' ', '西北', '西北', '0', '123', 'admin', '2013-01-22 22:13:11', '2013-01-22 22:13:11', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('b3b1b0f5-ed38-4fe6-b1e2-c683c596d8d4', 'b1ef617c-e09f-42ce-8a7b-c6b505607687', 'A_PROVINCE', ' ', '宁夏回族自治区', '宁夏回族自治区', '0', 'admin', ' ', '2013-11-18 14:43:37', '2013-11-18 14:43:37', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('bc2601a7-2d4b-4b5c-85a8-ac43c45dd514', '1', 'A_REGION', ' ', '东北', '东北', '0', '123', 'admin', '2013-01-22 22:13:47', '2013-01-22 22:13:47', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('bd873ab1-5b00-4975-972c-bd0d025230d2', '4d4e921a-1493-40b6-bcd5-2e9e13012ff3', 'A_PROVINCE', ' ', '北京市', '北京', '0', 'admin', ' ', '2013-11-18 00:00:00', '2013-11-18 14:38:13', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('c1d9364e-138e-4b35-b142-74e033f3ac55', '678938b5-6377-4220-98d5-8207380affc1', 'A_PROVINCE', ' ', '贵州省', '贵州省', '0', 'admin', ' ', '2013-11-18 14:41:09', '2013-11-18 14:41:09', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('ca3bcc63-974f-4f7e-ae17-188a49f26ac2', '678938b5-6377-4220-98d5-8207380affc1', 'A_PROVINCE', ' ', '云南省', '云南省', '0', 'admin', ' ', '2013-11-18 14:40:59', '2013-11-18 14:40:59', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('d3f3455e-e854-4c1e-94ed-00acfdbf5821', 'd73f37b2-b557-458a-b3fd-c771532ec9e6', 'A_PROVINCE', ' ', '江西省', '江西省', '0', 'admin', ' ', '2013-11-18 14:45:38', '2013-11-18 14:45:38', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('d73f37b2-b557-458a-b3fd-c771532ec9e6', '1', 'A_REGION', ' ', '华中', '华中', '0', '123', 'admin', '2013-01-22 22:13:20', '2013-01-22 22:13:20', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('d81529de-584c-4df9-bb8a-540f4c75b97d', 'd73f37b2-b557-458a-b3fd-c771532ec9e6', 'A_PROVINCE', ' ', '河南省', '河南省', '0', 'admin', ' ', '2013-11-18 14:45:29', '2013-11-18 14:45:29', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('db2f96d9-9980-41ea-861c-a5b46b279893', 'e2d9c1d0-5626-42d9-a7b0-4eb865b690b9', 'A_PROVINCE', ' ', '江苏省', '江苏省', '0', 'admin', ' ', '2013-11-18 14:46:00', '2013-11-18 14:46:00', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('e2d9c1d0-5626-42d9-a7b0-4eb865b690b9', '1', 'A_REGION', ' ', '华东', '华东', '0', '123', 'admin', '2013-01-22 22:07:42', '2013-01-22 22:07:42', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('ebbc08bd-399e-4dbf-a6ae-57270bc0c9e5', '1e676c35-2848-4b12-b812-733d342f944a', 'A_CITY', ' ', '秦皇岛市', '秦皇岛市', '0', 'admin', 'admin', '2013-04-04 22:25:36', '2013-04-04 22:25:36', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('ec566eb0-4fda-4bfd-bb1c-22aef62c98e4', 'd73f37b2-b557-458a-b3fd-c771532ec9e6', 'A_PROVINCE', ' ', '湖南省', '湖南省', '0', 'admin', ' ', '2013-11-18 14:45:22', '2013-11-18 14:45:22', '1');
INSERT INTO `t_auto_oa_org_area` VALUES ('f1a08971-8526-41e3-9e6f-53e9558bb17b', 'bc2601a7-2d4b-4b5c-85a8-ac43c45dd514', 'A_PROVINCE', ' ', '辽宁省', '辽宁省', '0', 'admin', ' ', '2013-11-18 14:44:42', '2013-11-18 14:44:42', '1');

-- ----------------------------
-- Table structure for `t_auto_oa_org_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_org_info`;
CREATE TABLE `t_auto_oa_org_info` (
  `AUORG_GUID` varchar(64) NOT NULL COMMENT '组织机构表主键',
  `AUORG_PARENT_GUID` varchar(64) DEFAULT NULL COMMENT '组织机构表父主键',
  `AUORG_CODE` varchar(32) NOT NULL DEFAULT ' ' COMMENT '组织机构代码',
  `AUORG_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '组织机构名称',
  `AUORG_BRAND_CODE` varchar(64) DEFAULT ' ' COMMENT '品牌代码（从常量库中选择）',
  `AUORG_BRAND_NAME` varchar(64) DEFAULT ' ' COMMENT '品牌名称（从常量库中选择）',
  `AUORG_TYPE_CODE` varchar(64) DEFAULT NULL COMMENT '组织类型代码(4S站、综合维修厂)（从常量库中选择）',
  `AUORG_TYPE_NAME` varchar(64) DEFAULT NULL COMMENT '组织类型名称(4S站、综合维修厂)（从常量库中选择）',
  `AUORG_FULL_SPELL` varchar(512) NOT NULL DEFAULT ' ' COMMENT '组织机构完整拼音',
  `AUORG_BRIEF_SPELL` varchar(64) NOT NULL DEFAULT ' ' COMMENT '组织机构拼音缩写',
  `AUORG_AREA` varchar(64) DEFAULT NULL COMMENT '组织机构所属区域(精确到城市，保存区域主键)',
  `AUORG_ADDRESS` varchar(128) NOT NULL DEFAULT ' ' COMMENT '组织机构地址',
  `AUORG_PHONE` varchar(64) NOT NULL DEFAULT ' ' COMMENT '组织机构电话',
  `AUORG_MAIL` varchar(64) NOT NULL DEFAULT ' ' COMMENT '组织机构邮箱',
  `AUORG_ZIPCODE` varchar(16) NOT NULL DEFAULT ' ' COMMENT '组织机构邮编',
  `AUORG_DEPTH` varchar(12) DEFAULT NULL COMMENT '组织机构节点深度',
  `AUORG_FULL_PATH` varchar(1024) DEFAULT NULL COMMENT '组织机构完整路径(父组织代码子组织代码..)',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `RECORD_VERSION` int(11) NOT NULL DEFAULT '1' COMMENT '版本号(修改一次加1)',
  PRIMARY KEY (`AUORG_GUID`),
  KEY `INDEX_ORG_INFO` (`AUORG_CODE`,`AUORG_NAME`,`AUORG_TYPE_CODE`,`AUORG_TYPE_NAME`,`AUORG_FULL_SPELL`(255),`AUORG_BRIEF_SPELL`,`AUORG_AREA`,`AUORG_DEPTH`,`AUORG_FULL_PATH`(255)),
  KEY `FK_ORG_SELF` (`AUORG_PARENT_GUID`),
  CONSTRAINT `FK_ORG_SELF` FOREIGN KEY (`AUORG_PARENT_GUID`) REFERENCES `t_auto_oa_org_info` (`AUORG_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构表';

-- ----------------------------
-- Records of t_auto_oa_org_info
-- ----------------------------
INSERT INTO `t_auto_oa_org_info` VALUES ('3124de4e-337f-43fd-b087-bc719839d01e', 'ROOT', 'AUDI', '奥迪', 'AUDI', ' ', 'FOUR_SERVICE', '', ' ', ' ', '1', '1', '1', '1', '1', '1', '', '0', 'admin', 'admin', '2013-11-17 00:00:00', '2014-03-03 21:37:37', '1');
INSERT INTO `t_auto_oa_org_info` VALUES ('657b34f3-d940-4811-9e25-209bb783a41e', 'ef5a263d-d54d-4864-ab8a-5eb0e7689e4d', 'SHDAS1', '上海宝山大众宝杨路店', 'SH-VOLKSWAGEN', ' ', 'FOUR_SERVICE', null, ' ', ' ', 'AUAR201311241', '1', '1', '1', ' ', '2', 'null/ef5a263d-d54d-4864-ab8a-5eb0e7689e4d/657b34f3-d940-4811-9e25-209bb783a41e', '0', 'admin', ' ', '2013-11-24 19:34:22', '2013-11-24 19:34:22', '1');
INSERT INTO `t_auto_oa_org_info` VALUES ('ce7d2194-5b8c-42ec-b451-6eca15f518a4', 'd55a11d1-1f62-4519-a3d2-dbe6a55e81c6', 'TESTABC', '测试组织', 'NISSAN', ' ', 'FOUR_SERVICE', null, ' ', ' ', '735b2452-acce-4e63-a90c-e6126f45d630', '123', '123', '123', ' ', '2', 'null/d55a11d1-1f62-4519-a3d2-dbe6a55e81c6/ce7d2194-5b8c-42ec-b451-6eca15f518a4', '0', 'admin', ' ', '2013-11-21 23:23:21', '2013-11-21 23:23:21', '1');
INSERT INTO `t_auto_oa_org_info` VALUES ('d55a11d1-1f62-4519-a3d2-dbe6a55e81c6', 'ROOT', 'DFRC', '东风日产', 'NISSAN', ' ', 'FOUR_SERVICE', null, ' ', ' ', null, '无', '无', '无', ' ', '1', 'null/d55a11d1-1f62-4519-a3d2-dbe6a55e81c6', '0', 'admin', ' ', '2013-11-21 23:22:48', '2013-11-21 23:22:48', '1');
INSERT INTO `t_auto_oa_org_info` VALUES ('ef5a263d-d54d-4864-ab8a-5eb0e7689e4d', 'ROOT', 'SHDAS', '上海大众', 'SH-VOLKSWAGEN', ' ', 'FOUR_SERVICE', null, ' ', ' ', null, '1', '1', '1', ' ', '1', 'null/ef5a263d-d54d-4864-ab8a-5eb0e7689e4d', '0', 'admin', ' ', '2013-11-24 19:16:22', '2013-11-24 19:16:22', '1');
INSERT INTO `t_auto_oa_org_info` VALUES ('ROOT', null, 'ROOT', '公司', ' ', ' ', null, null, 'ZUZHIJIEGOU', 'ZZJG', null, ' ', ' ', ' ', ' ', '0', null, '0', 'admin', 'admin', '2013-07-19 15:14:23', '2013-07-19 15:14:25', '1');

-- ----------------------------
-- Table structure for `t_auto_oa_sys_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_sys_attachment`;
CREATE TABLE `t_auto_oa_sys_attachment` (
  `FILE_GUID` varchar(64) NOT NULL COMMENT '附件信息表主键',
  `FILE_BUSI_GUID` varchar(64) DEFAULT NULL COMMENT '关联附件的业务表主键',
  `FILE_SIZE` varchar(16) NOT NULL DEFAULT ' ' COMMENT '附件大小',
  `FILE_NAME` varchar(128) NOT NULL DEFAULT ' ' COMMENT '附件名称',
  `FILE_EXT` varchar(8) NOT NULL DEFAULT ' ' COMMENT '附件后缀',
  `FILE_PATH` varchar(512) NOT NULL DEFAULT ' ' COMMENT '附件保存路径',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`FILE_GUID`),
  KEY `INDEX_ATTACHMENT` (`FILE_NAME`,`FILE_EXT`,`FILE_PATH`(255),`FILE_BUSI_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件信息表';

-- ----------------------------
-- Records of t_auto_oa_sys_attachment
-- ----------------------------
INSERT INTO `t_auto_oa_sys_attachment` VALUES ('833a687a-b3d4-46a0-8a6d-e8d6ea02c61e', 'admin', ' ', 'admin', 'jpg', 'E:/tomcat6/webapps/allwinPic/img/1396492238855.jpg', '0', 'admin', ' ', '2014-01-30 10:51:39', '2014-04-03 10:30:38');
INSERT INTO `t_auto_oa_sys_attachment` VALUES ('89e7b95f-c2d8-406a-a741-88bd0a83c309', '48d25b25-409f-4d1a-b68a-2679b5816138', '130719', 'zwy', 'jpg', 'E:/tomcat6/webapps/allwinPic/img/1396939891516.jpg', '', 'zwy', 'zwy', '2014-04-08 14:51:31', '2014-04-08 14:51:31');

-- ----------------------------
-- Table structure for `t_auto_oa_sys_constant_code`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_sys_constant_code`;
CREATE TABLE `t_auto_oa_sys_constant_code` (
  `OSCC_GUID` varchar(64) NOT NULL COMMENT '常量代码维护表主键',
  `OSCC_PARENT_GUID` varchar(64) DEFAULT NULL COMMENT '常量代码维护表父键',
  `OSCC_CODE` varchar(32) NOT NULL DEFAULT ' ' COMMENT '常量代码',
  `OSCC_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '常量名称',
  `OSCC_DISPLAY_ORDER` int(11) NOT NULL DEFAULT '0' COMMENT '常量排序',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `RECORD_VERSION` int(11) NOT NULL DEFAULT '1' COMMENT '版本号(修改一次加1)',
  PRIMARY KEY (`OSCC_GUID`),
  KEY `INDEX_CONSTANT_CODE` (`OSCC_CODE`,`OSCC_NAME`),
  KEY `FK_CONSTANT_SELF` (`OSCC_PARENT_GUID`),
  CONSTRAINT `FK_CONSTANT_SELF` FOREIGN KEY (`OSCC_PARENT_GUID`) REFERENCES `t_auto_oa_sys_constant_code` (`OSCC_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='常量代码维护表';

-- ----------------------------
-- Records of t_auto_oa_sys_constant_code
-- ----------------------------
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('0a6b64c7-0b07-42a9-be1c-1032b2d57e41', 'OSCCROOT', 'ORG_TYPE_CODE', '组织类型', '0', '0', 'admin', ' ', '2013-11-17 14:35:44', '2013-11-17 14:35:44', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('108254f3-ea9c-4778-a714-3ba1a5ca7ede', 'ce85ef52-80c4-4119-b222-f2abef512736', 'NISSAN', '东风日产', '0', '0', 'admin', ' ', '2013-11-21 09:16:21', '2013-11-21 09:16:21', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('11b3bd46-480d-4834-9fa6-adfeaa78908a', 'OSCCROOT', 'ID_CARD_TYPE_CODE', '证件类型', '0', '0', 'admin', ' ', '2013-11-17 14:35:59', '2013-11-17 14:35:59', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('17ab3020-7fe7-4430-b2a0-67b76aa511ec', 'ce85ef52-80c4-4119-b222-f2abef512736', 'FAW-CAR', '一汽轿车', '0', '0', 'admin', ' ', '2013-11-21 09:15:17', '2013-11-21 09:15:17', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('1912f768-f88b-410d-8601-61a0c53d7d0b', 'ce85ef52-80c4-4119-b222-f2abef512736', 'PEUGEOT', '东风标致', '0', '0', 'admin', ' ', '2013-11-21 09:14:44', '2013-11-21 09:14:44', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('27f0d967-94a4-4fc2-a385-bea569f392de', 'ce85ef52-80c4-4119-b222-f2abef512736', 'SUBARU', '斯巴鲁', '0', '0', 'admin', ' ', '2013-11-21 09:15:36', '2013-11-21 09:15:36', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('2ab26cca-a88b-435b-955a-667ec47d9191', 'ce85ef52-80c4-4119-b222-f2abef512736', 'FAW-TOYOTA', '一汽丰田', '0', '0', 'admin', ' ', '2013-11-21 09:15:04', '2013-11-21 09:15:04', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('4253b3f2-8d01-4b68-aa3c-bb2b50cef473', 'e768c757-8dcd-4888-8106-80144b16b800', 'F', '女', '0', '0', 'admin', ' ', '2013-11-17 14:18:36', '2013-11-17 14:18:36', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('43b9cfd4-6b08-4df9-a0c9-bfb12a731538', '0a6b64c7-0b07-42a9-be1c-1032b2d57e41', 'FOUR_SERVICE', '4S店', '0', '0', 'admin', ' ', '2013-11-17 14:37:14', '2013-11-17 14:37:14', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('4dfa5f25-1b7a-48b5-9e55-1494232458ae', '11b3bd46-480d-4834-9fa6-adfeaa78908a', 'PASS_PORT', '护照', '0', '0', 'admin', ' ', '2013-11-17 14:38:46', '2013-11-17 14:38:46', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('55915059-ff65-41f2-bf40-6351d693bf5a', 'ce85ef52-80c4-4119-b222-f2abef512736', 'CITROEN', '东风雪铁龙', '0', '0', 'admin', ' ', '2013-11-21 09:11:38', '2013-11-21 09:11:38', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('55f8af97-a929-421a-a3e3-0c2c0a64ba65', '900a7313-1d9f-489a-bc88-2523bc624b98', '1', '有效', '0', '0', 'admin', ' ', '2013-11-17 14:38:55', '2013-11-17 14:38:55', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('58221abe-deaf-432f-9521-47b9d3c0987c', 'aea26368-5b5f-4d8b-9e3f-cd6fc7b527fa', 'AB', 'AB型', '0', '0', 'admin', ' ', '2013-11-17 14:39:39', '2013-11-17 14:39:39', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('59263adc-0602-4d0e-bda0-534989b58a19', 'ce85ef52-80c4-4119-b222-f2abef512736', 'LSHM', '利星行', '0', '0', 'admin', ' ', '2013-11-21 09:16:30', '2013-11-21 09:16:30', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('599c045a-2882-4ae1-bbdc-68a03931105e', 'f7b6cd52-f38a-433b-9638-9157a0c9583d', 'A_PROVINCE', '省份/直辖市', '0', '0', 'admin', ' ', '2013-11-17 14:40:31', '2013-11-17 14:40:31', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('5c416852-89e4-48d9-b472-46d524a53117', 'f7b6cd52-f38a-433b-9638-9157a0c9583d', 'A_CITY', '城市', '0', '0', 'admin', ' ', '2013-11-17 14:40:41', '2013-11-17 14:40:41', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('63d8792f-c6bf-479c-b7a2-030ff76985b2', 'aea26368-5b5f-4d8b-9e3f-cd6fc7b527fa', 'B', 'B型', '0', '0', 'admin', ' ', '2013-11-17 14:39:19', '2013-11-17 14:39:19', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('6c5545f8-b47e-4190-b75b-09d1b18e05c4', 'ce85ef52-80c4-4119-b222-f2abef512736', 'SKODA', '斯柯达', '0', '0', 'admin', ' ', '2013-11-21 09:14:53', '2013-11-21 09:14:53', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('6ea9f6cf-9223-472d-844a-293c60ec61ea', '11b3bd46-480d-4834-9fa6-adfeaa78908a', 'ID_CARD', '身份证', '0', '0', 'admin', ' ', '2013-11-17 14:38:36', '2013-11-17 14:38:36', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('7a1c2fc8-f24a-4e6e-817c-0022311470c6', 'ce85ef52-80c4-4119-b222-f2abef512736', 'CATERPILLAR', '卡特彼勒', '0', '0', 'admin', ' ', '2013-11-21 09:15:26', '2013-11-21 09:15:26', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('7fc5b7f4-d109-4f0a-8fc8-9e61cd0d292c', '0a6b64c7-0b07-42a9-be1c-1032b2d57e41', 'MULTIPLE', '综合店', '0', '0', 'admin', ' ', '2013-11-17 14:38:03', '2013-11-17 14:38:03', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('8182d59a-cdc2-4550-a9b1-d372985ac7c0', 'e768c757-8dcd-4888-8106-80144b16b800', 'M', '男', '0', '0', 'admin', ' ', '2013-11-17 14:18:01', '2013-11-17 14:18:01', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('900a7313-1d9f-489a-bc88-2523bc624b98', 'OSCCROOT', 'IS_VALIDITY', '是否有效', '0', '0', 'admin', ' ', '2013-11-17 14:35:30', '2013-11-17 14:35:30', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('91e721b5-e0dc-4e62-b0e2-cb702e145596', 'f7b6cd52-f38a-433b-9638-9157a0c9583d', 'A_REGION', '大区', '0', '0', 'admin', ' ', '2013-11-17 14:40:18', '2013-11-17 14:40:18', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('96a0a7d9-38c5-4b63-a427-efcc8c88af1f', 'ce85ef52-80c4-4119-b222-f2abef512736', 'HONDA', '东风本田', '0', '0', 'admin', ' ', '2013-11-21 09:16:13', '2013-11-21 09:16:13', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('994fc15f-132d-4fdb-96ad-d323c50086e1', 'aea26368-5b5f-4d8b-9e3f-cd6fc7b527fa', 'O', 'O型', '0', '0', 'admin', ' ', '2013-11-17 14:39:30', '2013-11-17 14:39:30', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('9f4c9a17-d86e-4d15-a9e7-48fed596a26f', 'aea26368-5b5f-4d8b-9e3f-cd6fc7b527fa', 'A', 'A型', '0', '0', 'admin', ' ', '2013-11-17 14:39:13', '2013-11-17 14:39:13', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('a06e2a86-2b55-4788-8c3b-65e58ea3696c', 'ce85ef52-80c4-4119-b222-f2abef512736', 'SH-VOLKSWAGEN', '上海大众', '0', '0', 'admin', ' ', '2013-11-21 09:14:04', '2013-11-21 09:14:04', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('a0bafc25-4d33-4b1d-917b-abce1a0548c7', 'ce85ef52-80c4-4119-b222-f2abef512736', 'FAW-MAZDA', '一汽马自达', '0', '0', 'admin', ' ', '2013-11-21 09:13:53', '2013-11-21 09:13:53', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('aea26368-5b5f-4d8b-9e3f-cd6fc7b527fa', 'OSCCROOT', 'BLOOD_TYPE_CODE', '血型', '0', '0', 'admin', ' ', '2013-11-17 14:36:10', '2013-11-17 14:36:10', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('b39fa7eb-c688-42b6-9550-0719fcea4620', 'ce85ef52-80c4-4119-b222-f2abef512736', 'NTS', '新奇特', '0', '0', 'admin', ' ', '2013-11-21 09:15:46', '2013-11-21 09:15:46', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('ce85ef52-80c4-4119-b222-f2abef512736', 'OSCCROOT', 'BRAND', '品牌', '0', '0', 'admin', ' ', '2013-11-17 14:36:21', '2013-11-17 14:36:21', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('d523cea0-233d-4637-b6f2-4831b38eb242', '0a6b64c7-0b07-42a9-be1c-1032b2d57e41', 'THREE_SERVICE', '3S', '0', '0', 'admin', ' ', '2013-11-17 14:46:16', '2013-11-17 14:46:16', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('e05913b4-b6d1-4521-89a8-912e793d7722', 'ce85ef52-80c4-4119-b222-f2abef512736', 'CHANGAN-MAZDA', '长安马自达', '0', '0', 'admin', ' ', '2013-11-21 09:14:31', '2013-11-21 09:14:31', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('e768c757-8dcd-4888-8106-80144b16b800', 'OSCCROOT', 'GENDER', '性别', '0', '0', 'admin', ' ', '2013-11-17 14:17:18', '2013-11-17 14:17:18', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('e944abb2-8729-4480-9832-48bc863c9165', 'ce85ef52-80c4-4119-b222-f2abef512736', 'FAW-VOLKSWAGEN', '一汽大众', '0', '0', 'admin', ' ', '2013-11-21 09:14:18', '2013-11-21 09:14:18', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('ec754324-f32b-43eb-953b-25c27c535dc5', 'ce85ef52-80c4-4119-b222-f2abef512736', 'PORSCHE', '保时捷', '0', '0', 'admin', ' ', '2013-11-21 09:15:59', '2013-11-21 09:15:59', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('efa10bbc-bf25-447b-bc8d-58f46082ab3f', '900a7313-1d9f-489a-bc88-2523bc624b98', '0', '无效', '0', '0', 'admin', ' ', '2013-11-17 14:39:02', '2013-11-17 14:39:02', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('f30e6774-9a4e-44e7-82eb-1c176e4df14d', 'ce85ef52-80c4-4119-b222-f2abef512736', 'FORD', '长安福特', '0', '0', 'admin', ' ', '2013-11-21 09:13:28', '2013-11-21 09:13:28', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('f595eadd-b240-40de-a9ee-0af31f5164a6', 'ce85ef52-80c4-4119-b222-f2abef512736', 'AUDI', '奥迪', '0', '0', 'admin', ' ', '2013-11-21 09:13:38', '2013-11-21 09:13:38', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('f7b6cd52-f38a-433b-9638-9157a0c9583d', 'OSCCROOT', 'AREA', '区域', '0', '0', 'admin', ' ', '2013-11-17 14:35:05', '2013-11-17 14:35:05', '1');
INSERT INTO `t_auto_oa_sys_constant_code` VALUES ('OSCCROOT', null, 'CONSTANT_CODE', '系统常量', '1', '1', 'admin', 'admin', '2013-11-17 14:16:36', '2013-11-17 14:16:38', '1');

-- ----------------------------
-- Table structure for `t_auto_oa_sys_operate_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_sys_operate_log`;
CREATE TABLE `t_auto_oa_sys_operate_log` (
  `OSOL_GUID` varchar(64) NOT NULL COMMENT '功能操作日志表主键',
  `OSOL_FUNC_CODE` varchar(64) NOT NULL DEFAULT ' ' COMMENT '功能代码',
  `OSOL_FUNC_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '功能名称',
  `OSOL_USER_LABEL` varchar(16) NOT NULL DEFAULT ' ' COMMENT '用户工号',
  `OSOL_USER_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '用户姓名',
  `OSOL_ORG_CODE` varchar(32) NOT NULL DEFAULT ' ' COMMENT '组织代码',
  `OSOL_ORG_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '组织名称',
  `OSOL_POST_CODE` varchar(32) NOT NULL DEFAULT ' ' COMMENT '岗位代码',
  `OSOL_POST_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '岗位名称',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`OSOL_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能操作日志表';

-- ----------------------------
-- Records of t_auto_oa_sys_operate_log
-- ----------------------------

-- ----------------------------
-- Table structure for `t_auto_oa_sys_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_sys_user_log`;
CREATE TABLE `t_auto_oa_sys_user_log` (
  `OSUL_GUID` varchar(64) NOT NULL COMMENT '用户访问系统日志表主键',
  `OSUL_USER_LABEL` varchar(16) NOT NULL DEFAULT ' ' COMMENT '用户工号',
  `OSUL_USER_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '用户姓名',
  `OSUL_ORG_CODE` varchar(32) NOT NULL DEFAULT ' ' COMMENT '组织代码',
  `OSUL_ORG_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '组织名称',
  `OSUL_POST_CODE` varchar(32) NOT NULL DEFAULT ' ' COMMENT '岗位代码',
  `OSUL_POST_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '岗位名称',
  `OSUL_LOGIN_NUMBER` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `OSUL_LOGIN_LAST_TIME` datetime NOT NULL COMMENT '最后一次登录时间',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`OSUL_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户访问系统日志表';

-- ----------------------------
-- Records of t_auto_oa_sys_user_log
-- ----------------------------

-- ----------------------------
-- Table structure for `t_auto_oa_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_user_info`;
CREATE TABLE `t_auto_oa_user_info` (
  `AUSER_GUID` varchar(64) NOT NULL COMMENT '用户信息表主键',
  `AUSER_CODE` varchar(16) NOT NULL COMMENT '工号',
  `AUSER_NAME` varchar(64) NOT NULL COMMENT '姓名',
  `AUSER_NICK_NAME` varchar(64) DEFAULT NULL COMMENT '昵称',
  `AUSER_GENDER` varchar(2) DEFAULT NULL COMMENT '性别(M.男 W.女)从常量库中选择',
  `AUSER_AGE` varchar(3) DEFAULT NULL COMMENT '年龄',
  `AUSER_PY` varchar(64) DEFAULT NULL COMMENT '拼音(全拼)',
  `AUSER_PY_BREF` varchar(16) DEFAULT NULL COMMENT '拼音(缩写)',
  `AUSER_BIRTHDAY` date DEFAULT NULL COMMENT '出生年月',
  `AUSER_BLOOD_TYPE` varchar(6) DEFAULT NULL COMMENT '血型（从常量库中选择）',
  `AUSER_QQ` varchar(12) DEFAULT NULL COMMENT 'QQ号码',
  `AUSER_MOBILE` varchar(12) DEFAULT NULL COMMENT '手机号码',
  `AUSER_PHONE` varchar(24) DEFAULT NULL COMMENT '电话',
  `AUSER_MAIL` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `AUSER_CITY` varchar(64) DEFAULT NULL COMMENT '所在城市(保存区域主键)',
  `AUSER_GRADUATE_SCHOOL` varchar(128) DEFAULT NULL COMMENT '毕业院校',
  `AUSER_WORK_EXPERIENCE` varchar(128) DEFAULT NULL COMMENT '工作经历(可以上传附件)',
  `AUSER_ADDRESS` varchar(128) DEFAULT NULL COMMENT '地址',
  `AUSER_ZIPCODE` varchar(12) DEFAULT NULL COMMENT '邮编',
  `AUSER_ID_TYPE` varchar(24) DEFAULT NULL COMMENT '证件类型（从常量库中选择）',
  `AUSER_ID_CODE` varchar(24) DEFAULT NULL COMMENT '证件号码',
  `AUSER_PASSWORD` varchar(128) DEFAULT NULL COMMENT '登录密码(32位MD5)',
  `AUSER_LOGIN_STATE` varchar(2) DEFAULT '0' COMMENT '登录状态0.未登录 1.登录',
  `AUSER_LOGIN_LOG` varchar(2) DEFAULT '1' COMMENT '登录设备0.电脑 1.手机',
  `AUSER_MOBILE_CHANNEL_ID` varchar(64) DEFAULT NULL COMMENT '手机端channelId',
  `AUSER_MOBILE_USER_ID` varchar(64) DEFAULT NULL COMMENT '手机端USERID',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)（从常量库中选择）',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `RECORD_VERSION` int(11) NOT NULL DEFAULT '1' COMMENT '版本号(修改一次加1)',
  PRIMARY KEY (`AUSER_GUID`),
  KEY `INDEX_USER_INFO` (`AUSER_CODE`,`AUSER_NAME`,`AUSER_NICK_NAME`,`AUSER_PY`,`AUSER_PY_BREF`,`AUSER_MOBILE`,`AUSER_ID_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of t_auto_oa_user_info
-- ----------------------------
INSERT INTO `t_auto_oa_user_info` VALUES ('3c388dc8-de9e-4f38-a50f-dfc518109513', 'acute', '测试人员-张三', ' ', 'M', '12', 'asade', 'asd', '2013-12-09', 'B', '123123', '12312312312', null, '312@qweq.gff', 'AUAR20131124308', '啊打发打发', '阿萨德发射点发', '地方斯蒂芬斯蒂芬', '123123', ' ', '123123123123123123', '96e79218965eb72c92a549dd5a330112', '1', '0', null, null, '0', 'admin', ' ', '2013-12-19 00:07:09', '2014-03-05 23:12:19', '1');
INSERT INTO `t_auto_oa_user_info` VALUES ('48d25b25-409f-4d1a-b68a-2679b5816138', 'zwy', '邹文勇', '邹文勇', 'M', '11', null, null, '2014-04-01', 'A', '123', '12345678901', '12312313', '213@AA.COM', null, null, null, '21', '123', 'ID_CARD', '123123123123123123', '96e79218965eb72c92a549dd5a330112', '1', '0', '5212394567935557573', '1064000585556468292', '0', 'admin', 'zwy', '2014-04-01 13:06:14', '2014-04-20 23:46:42', '1');
INSERT INTO `t_auto_oa_user_info` VALUES ('68ab31e0-fb17-4c39-871a-cfe4196dd1a7', 'test2', '测试人员-李四', '上海大众测试用户', 'M', '22', null, null, '2013-11-24', 'A', '1', '1', '1', '1', null, null, null, '1', '1', 'ID_CARD', '1', '96e79218965eb72c92a549dd5a330112', '1', '0', null, null, '0', 'admin', ' ', '2013-11-24 19:48:13', '2014-02-25 20:43:18', '1');
INSERT INTO `t_auto_oa_user_info` VALUES ('admin', 'admin', '系统管理员', '', 'W', '222', 'xitongguanliyuan', 'xtgly', null, 'O', '213123123', '15618989616', '', 'harry.xie@sensu-sh.com', '123123', '213', '123123|123123', '123123', '123213', 'IDCARD', '12312312', '96e79218965eb72c92a549dd5a330112', '1', '0', '5535954901281267901', '846575065912077332', '0', 'admin', 'admin', '2013-07-19 11:12:11', '2014-06-24 20:14:55', '1');
INSERT INTO `t_auto_oa_user_info` VALUES ('e32a7638-4ec8-4235-b57a-55abf5284216', 'yy', 'yy', 'yy', 'M', '12', null, null, '2014-04-06', 'A', '123123', '12312313', '12321', '12@AA.CC', null, null, null, '123', '123', 'ID_CARD', '1313123', '96e79218965eb72c92a549dd5a330112', '1', '1', '5535954901281267901', '846575065912077332', '0', 'admin', 'yy', '2014-04-01 13:08:29', '2014-04-06 08:37:57', '1');

-- ----------------------------
-- Table structure for `t_auto_oa_user_login`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_user_login`;
CREATE TABLE `t_auto_oa_user_login` (
  `AULO_GUID` varchar(64) NOT NULL COMMENT '主键',
  `AULO_USER_CODE` varchar(64) DEFAULT NULL COMMENT '用户账号',
  `AULO_LOGIN_TIME` date DEFAULT NULL COMMENT '签到时间',
  `AULO_POINT` varchar(12) DEFAULT NULL COMMENT '积分',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '1' COMMENT '是否有效(1.有效 0.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`AULO_GUID`),
  KEY `INDEX_AULO` (`AULO_USER_CODE`,`AULO_LOGIN_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_oa_user_login
-- ----------------------------
INSERT INTO `t_auto_oa_user_login` VALUES ('34188658-79c4-474d-8619-2801480f9396', 'admin', '2014-04-19', '100', '1', 'admin', 'admin', '2014-04-19 02:11:36', '2014-04-19 02:11:36');
INSERT INTO `t_auto_oa_user_login` VALUES ('5787cd36-0eff-4f93-be65-f536bd87bf93', 'zwy', '2014-04-03', '100', '1', 'zwy', 'zwy', '2014-04-03 15:27:23', '2014-04-03 15:27:23');
INSERT INTO `t_auto_oa_user_login` VALUES ('7ca86e29-9ebf-47b6-9a8c-d3efe234f588', 'admin', '2014-03-17', '100', '1', 'admin', 'admin', '2014-03-17 10:07:18', '2014-03-17 10:07:18');
INSERT INTO `t_auto_oa_user_login` VALUES ('82bd4fa7-6b09-41ab-9a9d-6bb23c013b14', 'zwy', '2014-04-08', '100', '1', 'zwy', 'zwy', '2014-04-08 14:48:07', '2014-04-08 14:48:07');
INSERT INTO `t_auto_oa_user_login` VALUES ('d9af0269-e3ed-4d89-911f-82f417a380b0', 'admin', '2013-11-24', '100', '1', 'admin', ' ', '2013-11-24 19:37:04', '2013-11-24 19:37:04');

-- ----------------------------
-- Table structure for `t_auto_oa_user_org_map`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_user_org_map`;
CREATE TABLE `t_auto_oa_user_org_map` (
  `AOUM_GUID` varchar(64) NOT NULL COMMENT '组织用户关系表主键',
  `AUORG_GUID` varchar(64) DEFAULT NULL COMMENT '组织结构表主键',
  `AUSER_GUID` varchar(64) DEFAULT NULL COMMENT '用户信息表主键',
  `AOUM_POST_CODE` varchar(32) DEFAULT NULL COMMENT '岗位代码',
  `AOUM_POST_NAME` varchar(64) DEFAULT NULL COMMENT '岗位名称',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`AOUM_GUID`),
  KEY `FK_AOUM_ORG` (`AUORG_GUID`),
  KEY `FK_AOUM_USER` (`AUSER_GUID`),
  CONSTRAINT `FK_AOUM_ORG` FOREIGN KEY (`AUORG_GUID`) REFERENCES `t_auto_oa_org_info` (`AUORG_GUID`),
  CONSTRAINT `FK_AOUM_USER` FOREIGN KEY (`AUSER_GUID`) REFERENCES `t_auto_oa_user_info` (`AUSER_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织用户关系表(含用户岗位信息，应用岗位信息表)';

-- ----------------------------
-- Records of t_auto_oa_user_org_map
-- ----------------------------
INSERT INTO `t_auto_oa_user_org_map` VALUES ('1298ac1c-69a8-451a-8dc0-37f5bc2353b1', 'ef5a263d-d54d-4864-ab8a-5eb0e7689e4d', 'e32a7638-4ec8-4235-b57a-55abf5284216', null, null, '0', ' ', ' ', '2014-04-01 13:08:29', '2014-04-01 13:08:29');
INSERT INTO `t_auto_oa_user_org_map` VALUES ('5d1fe8e0-ba1a-44c5-a1cf-e40bbb1dc6cd', 'ef5a263d-d54d-4864-ab8a-5eb0e7689e4d', '3c388dc8-de9e-4f38-a50f-dfc518109513', null, null, '0', 'admin', ' ', '2013-12-19 00:07:09', '2013-12-19 00:07:09');
INSERT INTO `t_auto_oa_user_org_map` VALUES ('72d472b9-c503-4c27-a150-2af9aa22295a', 'ef5a263d-d54d-4864-ab8a-5eb0e7689e4d', '68ab31e0-fb17-4c39-871a-cfe4196dd1a7', null, null, '0', 'admin', ' ', '2013-11-24 19:48:13', '2013-11-24 19:48:13');
INSERT INTO `t_auto_oa_user_org_map` VALUES ('b6359edb-0f0e-48d1-b905-3807ea4151a7', 'ef5a263d-d54d-4864-ab8a-5eb0e7689e4d', '48d25b25-409f-4d1a-b68a-2679b5816138', null, null, '0', ' ', ' ', '2014-04-01 13:06:14', '2014-04-01 13:06:14');
INSERT INTO `t_auto_oa_user_org_map` VALUES ('ROOT', 'ROOT', 'admin', null, null, '0', 'admin', 'admin', '2013-07-19 16:10:04', '2013-07-19 16:10:06');

-- ----------------------------
-- Table structure for `t_auto_oa_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_oa_user_post`;
CREATE TABLE `t_auto_oa_user_post` (
  `AUPO_GUID` varchar(64) NOT NULL COMMENT '岗位信息维护表主键',
  `AUPO_POST_CODE` varchar(32) NOT NULL DEFAULT ' ' COMMENT '岗位代码',
  `AUPO_POST_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '岗位名称',
  `AUPO_ORG_CODE` varchar(32) DEFAULT NULL COMMENT '所属组织代码',
  `AUPO_ORG_NAME` varchar(64) DEFAULT NULL COMMENT '所属组织名称',
  `IS_VALIDITY` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否有效(0.有效 1.无效)',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`AUPO_GUID`),
  KEY `INDEX_USER_POST` (`AUPO_POST_CODE`,`AUPO_POST_NAME`,`AUPO_ORG_NAME`,`AUPO_ORG_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='岗位信息维护表（各组织维护自己的岗位信息）';

-- ----------------------------
-- Records of t_auto_oa_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for `t_auto_sns_core_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_core_message`;
CREATE TABLE `t_auto_sns_core_message` (
  `SCME_GUID` varchar(50) NOT NULL COMMENT '私信主键',
  `SCME_PARENT_GUID` varchar(50) DEFAULT NULL COMMENT '私信父主键',
  `SCME_TITLE` varchar(50) DEFAULT NULL COMMENT '私信标题',
  `SCME_CONTENT` varchar(500) DEFAULT NULL COMMENT '私信内容',
  `SCME_PERSON` varchar(50) DEFAULT NULL COMMENT '发送人',
  `SCME_REC_PERSON` varchar(50) DEFAULT NULL COMMENT '接收私信人的账号',
  `SCME_DATE` datetime DEFAULT NULL COMMENT '发送时间',
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`SCME_GUID`),
  KEY `INDEX_SCME` (`SCME_TITLE`,`SCME_PERSON`,`SCME_DATE`),
  KEY `FK_SCME_SELF` (`SCME_PARENT_GUID`),
  CONSTRAINT `FK_SCME_SELF` FOREIGN KEY (`SCME_PARENT_GUID`) REFERENCES `t_auto_sns_core_message` (`SCME_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='私信';

-- ----------------------------
-- Records of t_auto_sns_core_message
-- ----------------------------
INSERT INTO `t_auto_sns_core_message` VALUES ('02ce1d2e-9407-449e-b0c5-b1156b740b7c', null, '', '不会后悔', 'zwy', 'yy', '2014-04-01 13:36:56', 'zwy', 'zwy', '2014-04-01 13:36:56', '2014-04-01 13:36:56');
INSERT INTO `t_auto_sns_core_message` VALUES ('1c006903-71b1-4f1f-ae45-4790c4868a04', null, '', '好像很幸福+i+次次+viv+看+v+哦+v+看+v+看+v+看+v+看+v+看+v将错就错将错就错从机场乘客', 'zwy', 'yy', '2014-04-01 13:37:16', 'zwy', 'zwy', '2014-04-01 13:37:16', '2014-04-01 13:37:16');
INSERT INTO `t_auto_sns_core_message` VALUES ('225f9934-1ce1-4fd3-85b3-0005f53c1c3d', null, 'testMsg2', 'TestSavePrivateMsg2', 'admin', 'admin', '2014-03-03 22:42:50', 'admin', ' ', '2014-03-03 22:43:00', '2014-03-03 22:43:00');
INSERT INTO `t_auto_sns_core_message` VALUES ('38b09d6a-b157-47c0-8c5c-5c97e7491faf', null, null, 'fdsagdsa', 'admin', 'admin', '2014-04-20 21:35:50', ' ', ' ', '2014-04-20 21:35:50', '2014-04-20 21:35:50');
INSERT INTO `t_auto_sns_core_message` VALUES ('3aeb5fc4-2d7a-4abf-8102-44d3b744a8cf', null, null, 'fdasfdsagdsa', 'admin', 'admin', '2014-04-20 20:26:57', ' ', ' ', '2014-04-20 20:26:57', '2014-04-20 20:26:57');
INSERT INTO `t_auto_sns_core_message` VALUES ('3b8c0d54-18be-48bb-9e5f-94a12f8327cc', null, '', '', 'yy', 'zwy', '2014-04-01 13:28:13', 'yy', 'yy', '2014-04-01 13:28:13', '2014-04-01 13:28:13');
INSERT INTO `t_auto_sns_core_message` VALUES ('421bf3af-b878-469a-b53a-e1a407cd1d85', null, '', '对方方法', 'zwy', 'yy', '2014-04-08 14:54:57', 'zwy', 'zwy', '2014-04-08 14:54:57', '2014-04-08 14:54:57');
INSERT INTO `t_auto_sns_core_message` VALUES ('4fff618d-c611-4b36-9b78-38b859a1e316', null, '', '想得到', 'zwy', 'yy', '2014-04-01 13:27:48', 'zwy', 'zwy', '2014-04-01 13:27:48', '2014-04-01 13:27:48');
INSERT INTO `t_auto_sns_core_message` VALUES ('8031953d-02ff-4c05-bd18-17e799a1702f', null, '', 'hhhjjjj', 'yy', 'zwy', '2014-04-01 13:28:30', 'yy', 'yy', '2014-04-01 13:28:30', '2014-04-01 13:28:30');
INSERT INTO `t_auto_sns_core_message` VALUES ('8be62281-bea8-44ef-b7cc-e7bd417c0077', null, null, 'fdasfdsagdsa', 'admin', 'zwy', '2014-04-20 20:26:58', ' ', ' ', '2014-04-20 20:26:58', '2014-04-20 20:26:58');
INSERT INTO `t_auto_sns_core_message` VALUES ('8cca75b0-60f9-4dce-8738-f67e4c940957', null, '', 'bucuo+', 'yy', 'zwy', '2014-04-03 20:19:07', 'yy', 'yy', '2014-04-03 20:19:07', '2014-04-03 20:19:07');
INSERT INTO `t_auto_sns_core_message` VALUES ('93211dab-8531-459f-8339-8c88c9ced46a', null, '', '头像反了！', 'zwy', 'yy', '2014-04-08 14:55:18', 'zwy', 'zwy', '2014-04-08 14:55:18', '2014-04-08 14:55:18');
INSERT INTO `t_auto_sns_core_message` VALUES ('a1944069-4f68-4ad6-9265-db9931c1117e', null, null, 'gdsagdsag', 'admin', 'admin', '2014-04-20 21:39:44', ' ', ' ', '2014-04-20 21:39:44', '2014-04-20 21:39:44');
INSERT INTO `t_auto_sns_core_message` VALUES ('a218b2c9-9a1c-4a08-8d34-b36032c82dbb', null, null, '111', 'admin', 'admin', '2014-04-20 20:24:48', ' ', ' ', '2014-04-20 20:24:48', '2014-04-20 20:24:48');
INSERT INTO `t_auto_sns_core_message` VALUES ('b7b76b23-4c8e-432a-b6a5-cc4c3e1ef0ed', null, '', 'hajjis', 'yy', 'zwy', '2014-04-01 13:28:13', 'yy', 'yy', '2014-04-01 13:28:13', '2014-04-01 13:28:13');
INSERT INTO `t_auto_sns_core_message` VALUES ('c741eafd-8e9c-45d1-9075-47947550ee25', null, 'testMsg2', 'TestSavePrivateMsg2', 'admin', 'test1', '2014-03-03 22:43:04', 'admin', ' ', '2014-03-03 22:43:06', '2014-03-03 22:43:06');
INSERT INTO `t_auto_sns_core_message` VALUES ('dad11265-3cbc-4c31-b0af-f2b39935f97d', null, null, '', 'admin', 'admin', '2014-04-20 21:40:27', ' ', ' ', '2014-04-20 21:40:27', '2014-04-20 21:40:27');
INSERT INTO `t_auto_sns_core_message` VALUES ('e79bd21b-4d5a-47b4-883c-2542cf188799', null, null, 'gdsagdsa', 'admin', 'admin', '2014-04-20 21:40:22', ' ', ' ', '2014-04-20 21:40:22', '2014-04-20 21:40:22');
INSERT INTO `t_auto_sns_core_message` VALUES ('efd9f98d-5752-4b49-adab-ed596ec69a13', null, '', '患得患失今生今世', 'zwy', 'yy', '2014-04-03 20:09:11', 'zwy', 'zwy', '2014-04-03 20:09:11', '2014-04-03 20:09:11');
INSERT INTO `t_auto_sns_core_message` VALUES ('ffba70bd-27bb-408c-a96d-9f120f7bf0c1', null, '', '实际上就是实话实说是生生世世', 'zwy', 'yy', '2014-04-03 20:09:30', 'zwy', 'zwy', '2014-04-03 20:09:30', '2014-04-03 20:09:30');

-- ----------------------------
-- Table structure for `t_auto_sns_core_message_person`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_core_message_person`;
CREATE TABLE `t_auto_sns_core_message_person` (
  `SCMP_GUID` varchar(50) NOT NULL COMMENT '私信人员主键',
  `SCME_GUID` varchar(50) DEFAULT NULL COMMENT '私信主键',
  `SCMP_REC_PERSON` varchar(50) DEFAULT NULL COMMENT '收信人',
  `SCMP_READ_FLAG` varchar(50) DEFAULT NULL COMMENT '已阅标志',
  `SCMP_READ_DATE` datetime DEFAULT NULL COMMENT '已阅时间',
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`SCMP_GUID`),
  KEY `INDEX_SCMP` (`SCMP_REC_PERSON`,`SCMP_READ_FLAG`),
  KEY `FK_SCMP_SCME` (`SCME_GUID`),
  CONSTRAINT `FK_SCMP_SCME` FOREIGN KEY (`SCME_GUID`) REFERENCES `t_auto_sns_core_message` (`SCME_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='私信人员';

-- ----------------------------
-- Records of t_auto_sns_core_message_person
-- ----------------------------

-- ----------------------------
-- Table structure for `t_auto_sns_friend_group`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_friend_group`;
CREATE TABLE `t_auto_sns_friend_group` (
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `DELETE_USER` varchar(50) DEFAULT ' ' COMMENT '删除人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `DELETE_TIME` datetime DEFAULT NULL COMMENT '删除时间',
  `GROUP_GUID` varchar(40) NOT NULL COMMENT '分组GUID',
  `GROUP_NAME` varchar(100) DEFAULT NULL COMMENT '分组名称',
  `GROUP_CREATER` varchar(40) DEFAULT NULL COMMENT '创建人工号',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `EXTRA1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `EXTRA2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  `EXTRA3` varchar(100) DEFAULT NULL COMMENT '扩展3',
  `EXTRA4` varchar(100) DEFAULT NULL COMMENT '扩展4',
  `EXTRA5` varchar(100) DEFAULT NULL COMMENT '扩展5',
  PRIMARY KEY (`GROUP_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_sns_friend_group
-- ----------------------------
INSERT INTO `t_auto_sns_friend_group` VALUES ('test1', 'test1', ' ', '2014-02-25 20:56:55', '2014-02-25 20:57:03', null, 'friendGroupRoot', 'test1Group', 'test1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_auto_sns_friend_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_friend_info`;
CREATE TABLE `t_auto_sns_friend_info` (
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `DELETE_USER` varchar(50) DEFAULT ' ' COMMENT '删除人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `DELETE_TIME` datetime DEFAULT NULL COMMENT '删除时间',
  `ROW_GUID` varchar(40) NOT NULL COMMENT '主键',
  `GROUP_GUID` varchar(40) NOT NULL COMMENT '分组GUID',
  `USER_CODE` varchar(50) DEFAULT NULL COMMENT '好友工号',
  `USER_BIE` varchar(100) DEFAULT NULL COMMENT '好友别名',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `EXTRA1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `EXTRA2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  `EXTRA3` varchar(100) DEFAULT NULL COMMENT '扩展3',
  `EXTRA4` varchar(100) DEFAULT NULL COMMENT '扩展4',
  `EXTRA5` varchar(100) DEFAULT NULL COMMENT '扩展5',
  PRIMARY KEY (`ROW_GUID`),
  KEY `FK_REFERENCE_15` (`GROUP_GUID`),
  CONSTRAINT `FK_REFERENCE_15` FOREIGN KEY (`GROUP_GUID`) REFERENCES `t_auto_sns_friend_group` (`GROUP_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_sns_friend_info
-- ----------------------------
INSERT INTO `t_auto_sns_friend_info` VALUES ('test1', 'test1', ' ', '2014-02-25 20:57:51', '2014-02-25 20:57:56', null, 'friendGrougInfo', 'friendGroupRoot', 'test2', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_auto_sns_knowledge_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_knowledge_info`;
CREATE TABLE `t_auto_sns_knowledge_info` (
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `DELETE_USER` varchar(50) DEFAULT ' ' COMMENT '删除人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `DELETE_TIME` datetime DEFAULT NULL COMMENT '删除时间',
  `KNOWLEDGE_GUID` varchar(40) NOT NULL COMMENT '知识GUID',
  `TYPE_GUID` varchar(40) NOT NULL COMMENT '类型GUID',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '标题',
  `PUBLISH_PERSON` varchar(50) DEFAULT NULL COMMENT '知识人',
  `PUBLISH_TIME` datetime DEFAULT NULL COMMENT '知识时间',
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '内容',
  `EXTRA1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `EXTRA2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  `EXTRA3` varchar(100) DEFAULT NULL COMMENT '扩展3',
  `EXTRA4` varchar(100) DEFAULT NULL COMMENT '扩展4',
  `EXTRA5` varchar(100) DEFAULT NULL COMMENT '扩展5',
  PRIMARY KEY (`KNOWLEDGE_GUID`),
  KEY `FK_REFERENCE_14` (`TYPE_GUID`),
  CONSTRAINT `FK_REFERENCE_14` FOREIGN KEY (`TYPE_GUID`) REFERENCES `t_auto_sns_knowledge_type` (`TYPE_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_sns_knowledge_info
-- ----------------------------
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin', 'admin', ' ', '2014-04-20 23:45:01', '2014-04-20 23:45:01', null, '07b4292e-e00d-4a7b-a453-445e39805438', 'KT_3', '发大水', null, null, '范德萨的', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin', 'admin', ' ', '2014-04-19 01:30:19', '2014-04-19 01:30:19', null, '0ab06551-388a-41f7-b0d7-0f018b8dee71', 'default', 'fdsa', null, null, 'fdsafdsa', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin', 'admin', ' ', '2014-04-19 02:02:27', '2014-04-19 02:02:27', null, '32327f6d-6056-415c-b276-dc398dc6d606', 'KT_1', 'fdsagdgdsaaaaaaaaaaaaaaa', null, null, 'gdas', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin', 'admin', ' ', '2014-04-19 02:00:44', '2014-04-19 02:00:44', null, '486b935b-c5ca-42a6-b05f-590d2d119748', 'KT_1', 'fdsaaaaaaaaaaaaaaaaaaaaaaaaaaafdsagfdsa', null, null, '', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin', 'admin', ' ', '2014-04-19 01:49:07', '2014-04-19 01:49:07', null, '5ad7af00-23b8-487c-84f9-77086c9dbcd4', 'KT_1', 'fdsagfds', null, null, 'agdsagsa', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin', 'admin', ' ', '2013-12-13 15:52:08', '2013-12-13 15:52:10', null, 'KI_1', 'KT_1', '玻璃粘接胶', 'admin', '2013-12-13 15:52:44', '玻璃粘接胶\r\n净含量：310ml\r\n产品特性：\r\n· 配合专用底涂使玻璃胶发挥超强粘接力\r\n· 保证安全气囊正常使用、提高车身刚性\r\n· 一支原厂级玻璃胶可以装配一面中型轿车的前风挡玻璃\r\n使用说明：\r\n1、使用除油清洁剂彻底清洁新的玻璃\r\n2、 在普通的玻璃上施加玻璃底涂, 干燥10 分钟，去掉车窗装饰条，切\r\n开原车的玻璃胶, 拆下旧玻璃\r\n3、 修平车框上的残胶, 如果这些残胶是原厂胶, 则会成为良好的底层,\r\n并且上面不需底涂, 就可以很好粘接. 如果车框上露出金属或者油漆,\r\n则这些部位需要施加玻璃底涂\r\n4、 根据需要高度切割配备专业的胶嘴, 一般超过安装车框深度2-3mm\r\n5、打开玻璃粘合剂后面的防潮盖\r\n6、胶嘴开口背向走胶方向，以三角型截面施胶\r\n7、 在玻璃胶表干前 ( 约30 分钟) , 安装玻璃于正确位置, 并安装装饰条\r\n8、 根据玻璃粘合剂包装上的安全行使时间标示, 等待相应时间后, 可以\r\n正常行驶\r\n注意事项：\r\n· 做好安全防护措施，防止接触眼睛和皮肤。\r\n·残液处理不得污染排水系统、水源或土壤。\r\n· 使用完后请将容器破坏或投入工业垃圾箱或回收箱。\r\n· 使用二氧化碳、粉末、泡沫可有效灭火。\r\n· 穿戴防护装备，在上风处进行灭火。\r\n·避免阳光直射，建议在25 ℃以下保存。\r\n·请妥善保管，置放于儿童接触不到的地方。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin ', 'admin', ' ', '2013-12-13 16:00:12', '2013-12-13 16:00:14', null, 'KI_10', 'KT_2', '节流阀清洗剂', 'admin', '2013-12-13 16:00:30', '节流阀清洗剂\r\n净含量：560ml\r\n产品特性：\r\n· 采用环保配方，不含甲苯等高致癌物质。\r\n· 内含防锈特殊配方, 防止锈蚀, 并具有润滑\r\n作用。\r\n· 对节气门安全、对油封胶圈安全、对氧传感\r\n器和催化转化器安全。\r\n· 清除堆积在节气门、火花塞以及发动机燃烧系统等部分的积碳和油污，增加动力。改善空气流量，使怠速平稳，润滑节气门板防止锈蚀。\r\n使用说明：\r\n· 关掉发动机，拆出需清洁部件，使用前充分摇匀，请将喷嘴对准清洗物，直接均匀的往内部作环形喷射，可配合干净擦拭布使用，用压缩空气将清洗物吹干。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin ', 'admin', ' ', '2013-12-13 16:00:46', '2013-12-13 16:00:48', null, 'KI_11', 'KT_2', '厌氧平面密封胶', 'admin', '2013-12-13 16:01:04', '518厌氧平面密封胶\r\n净含量：50ml\r\n产品特性：\r\n· 厌氧型，固化迅速，适用于刚性铁、钢以及铝制法兰面上。能够填充1.27 毫米以下的空隙并形成耐溶剂的密封层。即使在长期运行后，也很容易清除密封层，可以使用油灰刀铲除。例如变速箱密封。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin ', 'admin', ' ', '2013-12-13 16:01:22', '2013-12-13 16:01:24', null, 'KI_12', 'KT_3', '空调卫士', 'admin', '2013-12-13 16:01:42', '空调卫士\r\n净含量：280ml\r\n产品特性：\r\n· 水容性环保产品，含有叶绿醇，无腐蚀，无刺激。\r\n· 含有纳米银，可在数分钟内杀死多种细菌。\r\n· 产品经过SGS 认证，有效杀菌达99.9%。\r\n· 含有专利活性因子，还可以长效杀菌，抑制细菌的生长。\r\n使用说明：\r\n1、停稳车辆，关闭电源，装配杀菌剂喷头软管；\r\n2、拆出空调滤芯，使用风枪清洁空调滤芯，污染严重的建议更换；\r\n3、喷洒杀菌剂到空调格，双面杀菌清洁；\r\n4、打开电源，运转空调，调到制冷模式，外循环，风力最大、关闭车辆门窗；\r\n5、在空调外进风口位置喷洒杀菌剂，晃动产品、点喷施工（注意不要长按）；\r\n6、喷约2/3 后，将剩余的喷洒于车内，地板、后备箱等空间；\r\n7、空调转为内循环模式，关闭车门窗，循环20 分钟；\r\n8、打开车门，车窗，等待车内气味散发完毕，安装回空调滤芯。\r\n注意事项：\r\n· 做好安全防护措施，防止接触眼睛和皮肤。\r\n·残液处理不得污染排水系统、水源或土壤。\r\n· 使用完后请将容器破坏或投入工业垃圾箱或回收箱。\r\n·避免阳光直射，建议在25 ℃以下保存。\r\n·请妥善保管，置放于儿童接触不到的地方。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin ', 'admin', ' ', '2013-12-13 15:53:13', '2013-12-13 15:53:15', null, 'KI_2', 'KT_1', '车身密封胶', 'admin', '2013-12-13 15:53:43', '车身密封胶\r\n净含量：310ml\r\n产品特性：\r\n· 用于金属板件修复后的粘接和密封\r\n· 高稳定性，优良的弹性 柔性胶层，卓越的密封和粘接性能\r\n· 快速固化，表干后即可上漆, 优良的油漆表面附着力\r\n· 专利胶嘴，方便施工，可使用刷子蘸水或FL 清洁剂修平\r\n使用说明：\r\n· 使用钣金清洁施工表面。\r\n· 按施工需要切割专用胶嘴。\r\n· 装配胶嘴到瓶身，装入胶枪施工 。\r\n\r\n注意事项：\r\n个人防护：\r\n· 做好安全防护措施，防止接触眼睛和皮肤。\r\n环保要求：\r\n·残液处理不得污染排水系统、水源或土壤。\r\n· 使用完后请将容器破坏或投入工业垃圾箱或回收箱。\r\n消防措施：\r\n· 使用二氧化碳、粉末、泡沫可有效灭火。\r\n· 穿戴防护装备，在上风处进行灭火。\r\n储存条件：\r\n·避免阳光直射，建议在25 ℃以下保存。\r\n·请妥善保管，置放于儿童接触不到的地方。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin', 'admin', ' ', '2013-12-13 15:54:04', '2013-12-13 15:54:06', null, 'KI_3', 'KT_1', '底盘装甲', 'admin', '2013-12-13 15:54:29', '底盘装甲\r\n净含量：1L\r\n产品特性：\r\n· 有效防止车辆底盘的锈蚀。\r\n·弹性表面更好地抗击路面石子冲击。\r\n· 具有降噪功能，减少底盘产生的共振、路面\r\n噪音。\r\n·与原车车底涂层结合良好。\r\n·环保配方，不含沥青。\r\n·符合欧盟环保标准。\r\n·低温下不脆裂。\r\n·高固份含量, 一次成膜厚度加大。\r\n使用说明：\r\n1、 彻底清洁底部表面，除去油脂、污染物及\r\n残余蜡；\r\n2、 清除锈蚀点的锈斑；\r\n3、 充分摇动容器罐，装配于喷枪，操作压力\r\n3-5bar，保持约30cm 距离施工，十字形\r\n喷涂。最佳厚度为1.5mm 以上；\r\n注意：不要喷涂在驱动轴、发动机、\r\n变速箱、排气管等部件。\r\n4、用清洁剂立即清洗飞溅物；\r\n5、 施工完2 小时，表干后可行驶；\r\n6、 喷涂后使用清洁剂立即清洗喷枪。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin ', 'admin', ' ', '2013-12-13 15:55:56', '2013-12-13 15:55:59', null, 'KI_4', 'KT_1', '可喷涂车身密封胶', 'admin', '2013-12-13 15:56:26', '可喷涂式车身密封胶\r\n净含量：310ml\r\n产品特性：\r\n· 恢复原厂焊接密封外观。\r\n· 高稳定性，不流淌，无毒害。\r\n· 配合喷涂胶枪，可施工出各种形状的焊缝胶条。\r\n· 可以黏附在各种的材料上。\r\n· 密封的焊缝可以点焊接。\r\n· 不含硅基材料, 表干即可喷漆.\r\n使用说明：\r\n1、使用开瓶器打开胶管，将施胶嘴装到胶筒上并拧紧\r\n2、将胶筒装入到施胶枪内，将气盖装入到胶枪上\r\n3、 通入7bar 左右的空气压力，红色旋钮为进气压力调整，蓝色旋钮为\r\n喷涂压力调整。当两个旋钮都处于开的状态时，可以进行喷涂操作\r\n鱼鳞状密封：保持胶枪和密封部件垂直，距离4cm\r\n雾状密封：调整红色旋钮到(-) 位置，距离20cm\r\n条型密封：关闭喷涂压力旋钮（将蓝色旋钮调至- 位置）\r\n注意事项：\r\n个人防护：\r\n· 做好安全防护措施，防止接触眼睛和皮肤。\r\n环保要求：\r\n·残液处理不得污染排水系统、水源或土壤。\r\n· 使用完后请将容器破坏或投入工业垃圾箱或回收箱。\r\n消防措施：\r\n· 使用二氧化碳、粉末、泡沫可有效灭火。\r\n· 穿戴防护装备，在上风处进行灭火。\r\n储存条件：\r\n·避免阳光直射，建议在25 ℃以下保存。\r\n·请妥善保管，置放于儿童接触不到的地方。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin ', 'admin', ' ', '2013-12-13 15:56:51', '2013-12-13 15:56:53', null, 'KI_5', 'KT_1', '双组份高强度粘结胶', 'admin', '2013-12-13 15:57:10', '双组份高强度粘结胶\r\n净含量：250ml\r\n产品特性：\r\n· 高剪切强度\r\n· 卓越的抗老化性质 ， 能够很好地粘贴在面板表面上\r\n· 应用于车顶部位及车身板件维修，代替激光焊接，恢复车身强度\r\n使用说明：\r\n1、使用钣金清洁剂清洁施工面；\r\n2、使用专业混合胶嘴，按需要切割、安装胶嘴；\r\n3、使用高压胶枪施工，出胶前端2CM 废弃，待胶体混合成灰色时使用。\r\n注意：预热后更方便施工\r\n注意事项：\r\n个人防护：\r\n· 做好安全防护措施，防止接触眼睛和皮肤。\r\n环保要求：\r\n·残液处理不得污染排水系统、水源或土壤。\r\n· 使用完后请将容器破坏或投入工业垃圾箱或回收箱。\r\n消防措施：\r\n· 使用二氧化碳、粉末、泡沫可有效灭火。\r\n· 穿戴防护装备，在上风处进行灭火。\r\n储存条件：\r\n·避免阳光直射，建议在25 ℃以下保存。\r\n·请妥善保管，置放于儿童接触不到的地方。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin ', 'admin', ' ', '2013-12-13 15:57:27', '2013-12-13 15:57:29', null, 'KI_6', 'KT_1', '锌喷剂', 'admin', '2013-12-13 15:57:53', '锌喷剂\r\n净含量：\r\n400ml\r\n产品特性：\r\n· 用于点焊前金属件接触面的防锈处理，避免\r\n高温破坏原有的防锈涂层，造成接触面内部\r\n锈蚀。\r\n· 加强金属件接触面的导电接触，提高点焊质\r\n量，避免虚焊。\r\n使用说明：\r\n· 充分摇动容器罐，听到滚珠滚动声音。垂直\r\n握住容器罐进行喷涂作业，喷涂距离与作业\r\n面约为20cm。\r\n· 使用钣金专用清洁剂清除喷涂外溅物。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin', 'admin', ' ', '2013-12-13 15:58:29', '2013-12-13 15:58:31', null, 'KI_7', 'KT_2', '5910 发动机密封胶', 'admin', '2013-12-13 15:58:44', '5910 发动机密封胶\r\n净含量：50ml\r\n产品特性：\r\n·超高弹性以及优良的粘合性能。\r\n·出色的抗发动机油和变速箱油性能。\r\n·环保、低气味、不腐蚀金属。对氧传感器安全。\r\n使用说明：\r\n1. 使用专业清洗剂清洗密封面法兰面，使表面清洁无油脂；\r\n2. 将管状喷嘴从前部的标记处剪开( 喷嘴直径约3mm)；\r\n3. 将发动机密封胶涂敷到油底壳的干净法兰面上；\r\n4. 施工时请注意胶体连续性，如遇断裂请敷涂连接完整;\r\n5. 密封胶条的厚度约：2mm-3mm；\r\n6. 必须在涂敷密封胶五分钟内安装；\r\n7. 密封胶不能超过规定厚度，否则多余的密封胶会进入油\r\n底壳，并且堵塞进油管中的滤网；\r\n8. 装配30 分钟后，才能加注发动机机油试机。\r\n注意事项：\r\n· 做好安全防护措施，防止接触眼睛和皮肤。\r\n· 使用完后请将容器破坏或投入工业垃圾箱或回收箱。\r\n· 穿戴防护装备，在上风处进行灭火。\r\n·避免阳光直射，建议在25 ℃以下保存。\r\n·请妥善保管，置放于儿童接触不到的地方。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin ', 'admin', ' ', '2013-12-13 15:59:01', '2013-12-13 15:59:03', null, 'KI_8', 'kT_2', '刹车及零件清洗剂', 'admin', '2013-12-13 15:59:23', '刹车及零件清洁剂\r\n净含量：550ml\r\n产品特性：\r\n· 环保产品，不含盐酸、氟氯碳化物、芳香碳\r\n化物以及对人体有害的物质，并可防止石棉\r\n粉的产生。\r\n· 有效清洁制动系统相关部件( 制动盘、卡钳、\r\n制动片、制动泵) 的油渍和各种污物，也可\r\n用于一般汽车零件的无油清洁喷射力强劲，\r\n清洁迅速。\r\n· 防止起粉尘，改善工作环境。\r\n· 优良的清洁效果，不留残余物。\r\n使用说明：\r\n· 充分摇晃均匀；均匀的往内部作环形喷射，\r\n喷涂后自干或擦干，可配合刷子或擦拭布使\r\n用；本品可自动渗入到细微接缝处, 即使不\r\n拆卸, 也能洗涤细微部位。', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_info` VALUES ('admin ', 'admin', ' ', '2013-12-13 15:59:39', '2013-12-13 15:59:41', null, 'KI_9', 'kT_2', '电路系统清洗剂', 'admin', '2013-12-13 15:59:56', '电路系统清洗剂\r\n净含量：550ml\r\n产品特性：\r\n· 应用于发动机舱内的线路以及引擎表面，包\r\n括引擎外壳、电路开关、接头及蓄电池接头\r\n等配件的清洁保护。\r\n· 在发动机部件表面形成一层特殊的保护膜，\r\n有效降低电路系统阻抗，还原引擎动力输出，\r\n确保行车安全。\r\n使用说明：\r\n1、 将车辆熄火，等待引擎温度下降至50℃以\r\n下；\r\n2、装上特制长嘴喷管，均匀喷洒发动机表面；\r\n3、可用干布辅助擦拭干净；\r\n4、 使用5-10 分钟后，待雾气挥发后，方可\r\n启动引擎。', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_auto_sns_knowledge_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_knowledge_type`;
CREATE TABLE `t_auto_sns_knowledge_type` (
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `DELETE_USER` varchar(50) DEFAULT ' ' COMMENT '删除人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `DELETE_TIME` datetime DEFAULT NULL COMMENT '删除时间',
  `TYPE_GUID` varchar(40) NOT NULL COMMENT '类型GUID',
  `TYPE_NAME` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `TYPE_ORDER` varchar(10) DEFAULT NULL COMMENT '排序',
  `EXTRA1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `EXTRA2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  `EXTRA3` varchar(100) DEFAULT NULL COMMENT '扩展3',
  `EXTRA4` varchar(100) DEFAULT NULL COMMENT '扩展4',
  `EXTRA5` varchar(100) DEFAULT NULL COMMENT '扩展5',
  PRIMARY KEY (`TYPE_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_sns_knowledge_type
-- ----------------------------
INSERT INTO `t_auto_sns_knowledge_type` VALUES (' ', ' ', ' ', '2014-04-19 01:30:19', '2014-04-19 01:30:19', null, 'default', '默认', null, null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_type` VALUES ('admin', 'admin', ' ', '2013-12-13 15:49:49', '2013-12-13 15:49:51', null, 'KT_1', '钣金', '1', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_type` VALUES ('admin', 'admin', ' ', '2013-12-13 15:50:38', '2013-12-13 15:50:40', null, 'KT_2', '机修', '2', null, null, null, null, null);
INSERT INTO `t_auto_sns_knowledge_type` VALUES ('admin ', 'admin', ' ', '2013-12-13 15:51:17', '2013-12-13 15:51:21', null, 'KT_3', '其他', '3', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_auto_sns_post_content`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_post_content`;
CREATE TABLE `t_auto_sns_post_content` (
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `DELETE_USER` varchar(50) DEFAULT ' ' COMMENT '删除人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `DELETE_TIME` datetime DEFAULT NULL COMMENT '删除时间',
  `CONTENT_GUID` varchar(40) NOT NULL COMMENT '文件GUID',
  `TIE_CONTENT` text COMMENT '内容',
  `SOURCE_GUID` varchar(40) DEFAULT NULL COMMENT '来源GUID',
  `SOURCE_MODEL` varchar(40) DEFAULT NULL COMMENT '来源模块',
  `SOURCE_LABEL1` varchar(40) DEFAULT NULL COMMENT '来源标签1',
  `SOURCE_LABEL2` varchar(40) DEFAULT NULL COMMENT '来源标签2',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '状态',
  `EXTRA1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `EXTRA2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  `EXTRA3` varchar(100) DEFAULT NULL COMMENT '扩展3',
  `EXTRA4` varchar(100) DEFAULT NULL COMMENT '扩展4',
  `EXTRA5` varchar(100) DEFAULT NULL COMMENT '扩展5',
  PRIMARY KEY (`CONTENT_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_sns_post_content
-- ----------------------------
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 14:26:43', '2014-05-14 14:26:43', null, '01b8b5b1-86c3-4137-85ca-489871ee5fce', '<p>跟谁打过</p>', 'ab393bfa-5456-4ef3-b944-4d57df5515e6', null, null, null, null, null, null, '机修', null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 10:39:09', '2013-11-19 10:39:09', null, '048ff016-801a-40ae-93bf-a6c18c2e0bb3', '欢迎来到修车人！', '72df5a68-8f4a-4e7c-b3d4-126a6c4ae469', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-03 20:03:40', '2014-04-03 20:03:40', null, '07ee1bda-d272-4b1e-a0e0-7dc0be6b3617', '哎，15斤吧？', '1eae4f92-4f68-4ad1-8021-e6e72b99cce4', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-21 00:08:16', '2014-04-21 00:08:16', null, '090b2a1c-d363-4952-b854-ea805066e0a7', '<p>11</p>', 'fa6067c2-2080-494f-aba7-7aa5ef2a47c7', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-02-19 09:11:49', '2014-02-19 09:11:49', null, '0cfbf7c3-14cb-4c2c-8328-a68bd12a6b57', 'Sdfsadfsadf', 'cb013f24-bcfb-458b-b79a-6cd5ef96266a', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-01 14:01:53', '2014-04-01 14:01:53', null, '10f4c58d-5c76-4e3b-8a33-17ccddd24b98', '<p>dsadsdsag&nbsp;<img src=\"http://www.xcrauto.com:8080/allwin/ueditor/jsp/fileDown.jsp?filePath=/7d56191f-be5b-4e2b-844a-03222c27ea9d.png\" title=\"图标a.png\"/></p>', 'e52ee924-a658-43d8-b388-0798136eaa8b', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 14:58:19', '2014-05-14 14:58:19', null, '125f10df-3f71-45a2-97bd-fa9e298d8bd7', '<p>gdsagdsa</p>', '6978dfeb-50c3-4130-a6f8-58084f602e26', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-04 09:53:33', '2014-04-04 09:53:33', null, '161522d6-193b-4092-b50f-4f1a293a60bb', '法国恢复和+vv<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396576413467.jpg\" /></p></br>', 'dc16db53-19d0-44c2-a554-07f8bbedb910', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:54:14', '2013-11-19 14:54:14', null, '182c7507-edd3-493c-a176-04b7cd3afd2f', '您可以发布信息，与公司同事相互交流最新资讯。', 'f69604e6-f987-4148-93c7-254ed73dcd16', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 15:00:02', '2014-05-14 15:00:02', null, '18890e49-25b7-4f4a-a06f-9f357ec42bfb', '<p>gdsagdsa</p>', 'd758cc72-9b24-4377-9595-67fa4da36f44', null, null, null, null, null, 'fsagdsa', null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-01 14:03:02', '2014-04-01 14:03:02', null, '219a766c-f840-4184-8519-bf13b0306618', '回到家酒店酒店对待解放军队', '5c95abbe-9c39-4775-8a7b-380f6319eb1e', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-20 23:49:34', '2014-04-20 23:49:34', null, '21c3a0de-c5b8-4ac1-bb4d-031e7bcf3783', '<p>222</p>', '0b86fca0-38d2-412a-b902-35d784059cc7', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-02-21 08:47:37', '2014-02-21 08:47:37', null, '23ea1213-77a9-4937-a70c-4b658f4b7898', 'test2312312', '68529db4-e76f-4101-af54-d8c35905f56c', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:53:41', '2014-05-14 13:53:41', null, '24a43de5-aadc-4c3a-94f6-d05bfc1fac9b', null, '10ed403c-107f-4fb8-be31-ecf7d6d6d6b2', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:48:03', '2014-05-14 13:48:03', null, '28e3e082-4383-422c-b334-bab28742e955', '', '4be3a7b4-f5f9-4763-858b-d544adbb54b9', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 14:30:45', '2014-05-14 14:30:45', null, '2abb7fcf-ed17-4f71-a9a0-b02cd247c0f5', '<p>花费多少</p>', '2762cad6-b4ff-49b4-b6a2-1865936992c3', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-22 18:04:52', '2013-11-22 18:04:52', null, '2d203f4e-40b7-488b-ac3d-768e05059fc1', '您可以共享知识，与公司同事相互共享工作经验。', '296e49ac-39b3-4b9a-90cb-6180a5aa9ef3', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-21 00:05:20', '2014-04-21 00:05:20', null, '2d617e78-46f4-48ef-b11a-7a6b3b8c4653', '<p>7777</p>', '915ad8b6-6040-434d-9309-a15e2df5295b', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-03-17 13:46:30', '2014-03-17 13:46:30', null, '306b1695-fb02-4ad2-91ea-b6ceae020661', '或者继续速度监督的决定进行简单的决定将抵达酒店，洗的决心继续继续继续继续的，绝对绝对绝对惊喜惊喜，u+大家的嫉妒心精彩继续将错就错警察局。绝对绝对绝对金像奖新人\n基督教的基础决定将参加此次检查。', '142d7a71-3232-4142-aa51-13d1f2cd0996', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('yy', 'yy', ' ', '2014-04-04 09:42:24', '2014-04-04 09:42:24', null, '351a2112-2315-48a4-9dbe-a8d9bbc9d5d2', '@邹文勇++今生今世今生今世不断<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396575744538.jpg\" /></p></br>', '320ab6ec-2878-4f1c-adec-595f759da9c6', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-04-20 23:38:24', '2014-04-20 23:38:24', null, '3a068a55-ae5a-4d89-a1ae-f68940115d02', '<p>gfdsgsda</p>', '6a972d12-f6d6-4014-baef-37e33893ee12', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:49:33', '2014-05-14 13:49:33', null, '3ac621cd-e2c3-45cd-9dd8-878e9a93dfe0', '', 'b4ca1b2f-31f7-4c6e-8b31-4775562d462f', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-02-19 09:10:47', '2014-02-19 09:10:47', null, '3e6866d7-a08e-440a-8c05-1764577079fd', 'Sdfsadfsadf', 'b3bea0ea-86b6-48fe-b38c-c546acd79f1a', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-04-01 10:22:43', '2014-04-01 10:22:43', null, '43c756bb-fd83-46c4-bebb-1547f307f2fe', '哈哈姐姐ghjk', 'a363183f-2e01-4bce-9f48-b0c3deae3213', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:18:18', '2013-11-19 14:18:18', null, '44feec81-1274-4286-a04a-9149ad76d5b1', '您可以进行任务反馈。', '1fe359ff-99b5-4ac3-92c4-61f53886f649', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:39:08', '2014-05-14 13:39:08', null, '472e8edd-7593-4116-bfe3-cadf78d9b1cd', '', '7c9e322a-4eb1-4bef-89e1-8d89e44083d2', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-03 15:26:49', '2014-04-03 15:26:49', null, '4cc9cb9f-836c-4b46-8d97-3dbb1bcefc1a', '段氏龙虾', '32539855-e905-42b4-8c33-31e47b9e8568', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:35:05', '2014-05-14 13:35:05', null, '4cf7dbdc-3f9e-44ed-8469-2cd2c433b8a0', '', '911ca27b-4f48-413a-995c-a328e72a7821', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-01 13:58:24', '2014-04-01 13:58:24', null, '51ae0c5b-ce7c-4cf6-9bf3-6cbe07c95058', 'upload/1396331901149.jpeg 这个路径有问题需要查看', '81f90f3e-015d-41bd-8dcc-97805c75a39c', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-21 00:05:26', '2014-04-21 00:05:26', null, '522b637e-9b6b-4be3-af8d-8e2ce0401655', '<p>888</p>', 'daf83edd-a78e-4308-bb50-714d2f208d62', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 14:57:06', '2014-05-14 14:57:06', null, '62ad1a7d-7c1e-4a9a-9a1c-7abdd96f16f6', '<img src=\"http://localhost:8080/allwin/ueditor/dialogs/emotion/images/jx2/j_0045.gif\"/><p></p>', 'da1eded6-946a-40ea-8153-e19b7e644e22', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 14:59:45', '2014-05-14 14:59:45', null, '671c5bc8-a279-49fb-81e3-de73297ebe9a', '<img src=\"http://localhost:8080/allwin/ueditor/dialogs/emotion/images/jx2/j_0036.gif\"/><p></p>', 'd66e104b-37aa-4304-84bc-dc5383f6733c', null, null, null, null, null, 'fdsafsdagsg', null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-04-03 10:16:11', '2014-04-03 10:16:11', null, '69f4805a-8edb-427c-af94-02a73dcbb085', 'Asdfasdfsadfsdf\nAsdfsadfsdfsdf\nSdfsadfsadfsdfsafd<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396491370916.jpg\" /></p></br>', 'e831663f-2311-4ab6-bc97-3fb59f0ed3e7', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 10:39:23', '2013-11-19 10:39:23', null, '6c8bffe6-9f02-487b-a681-69c115246833', '您可以接收任务安排。', '4c4fd37f-c8b8-41f6-8aae-75032a14dadf', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-20 23:57:41', '2014-04-20 23:57:41', null, '76b20bb8-cabb-4604-9ca2-9dc8301caf19', '<p>4444</p>', '762c81c2-f99e-46f0-bd7e-a968bbd86520', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-03 20:11:33', '2014-04-03 20:11:33', null, '77d292b1-d439-4c54-b779-7609dea0bc54', '@yy+拍照试试<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396527093902.jpg\" /></p></br>', 'ec9e757d-ef5f-4563-b1fd-74035b1c0d1b', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('test1', 'test1', ' ', '2014-02-25 20:36:16', '2014-02-25 20:36:16', null, '790e8d4f-d8af-424a-9181-1e0b7c5c52f4', '<p>sdfadfad</p>', '5542958c-7a6e-49ab-bc7a-5a504b191dbf', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-02-17 10:51:23', '2014-02-17 10:51:23', null, '7d7d4722-5909-45f7-9ce9-21a74ae0fa2f', 'TEST_Hui-Fu', '365cc45b-b2c5-4028-b9ec-01c628fddd3c', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-03-17 13:47:22', '2014-03-17 13:47:22', null, '7dc3cb2e-3143-4577-85d2-3b0567c3f553', '今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持今年想将错就错坚持坚持坚持坚持坚持', '94798883-5287-46a6-bca3-3ea9786f053b', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-04-20 21:10:35', '2014-04-20 21:10:35', null, '81fb6db0-e370-409c-905b-af33614e576f', '<p>11</p>', '8376a818-ecb9-424b-9d82-83a03ea2b7a2', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-04-01 13:22:02', '2014-04-01 13:22:02', null, '82451db6-c28a-43cd-8b87-1479d3877f61', '好多好多好多', '90bfb117-ad54-4ec8-b2c7-c24834825311', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:50:11', '2013-11-19 14:50:11', null, '893eae51-40ea-41dc-89fa-cde7455a599b', '您可以发布信息，同公司同事相互交流工作经验。', 'b20df1bc-fa27-4b55-a8a7-38ceeafb5193', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-20 23:58:40', '2014-04-20 23:58:40', null, '8cf85164-25c1-494f-8a26-c8c9d62c9007', '<p>555</p>', 'd8dd852d-28d5-4bd0-a759-4899a1865668', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-22 18:04:49', '2013-11-22 18:04:49', null, '8d3f5f3e-6f2e-4746-9f4e-87cb2e2591fc', '您可以发布信息，同公司同事相互交流工作经验。', '75660b07-2053-417e-a56f-6c81bff4fe12', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-02-09 09:56:41', '2014-02-09 09:56:41', null, '8eb1b2c5-1f9b-4b6a-89bd-a9fffba44494', 'test', 'd0a78997-040a-405b-902f-4b4461e74d62', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-04-02 22:32:46', '2014-04-02 22:32:46', null, '8efdf09b-076c-48bc-8bc8-0d4b0c840942', 'wqwqwqw<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396449123468.jpg\" /></p></br>', '972c4659-6125-442b-b12b-f8f432311a6f', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-04-02 22:35:27', '2014-04-02 22:35:27', null, '95e3cec4-c317-4e82-9cea-7dfe86aed1a1', 'Fafsadfsadfsadfds<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396449321760.jpg\" /></p></br>', '2f9c7e68-d958-4af1-bcb8-4006d7787856', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-06-24 20:14:18', '2014-06-24 20:14:18', null, '97f07589-da8c-4df7-96d2-919146fe227a', '<p><img src=\"http://localhost:8080/newPlat/ueditor/dialogs/emotion/images/jx2/j_0015.gif\"/>&nbsp;</p>', 'd9cecab6-5d48-4846-aa11-69c8b52783df', null, null, null, null, null, null, '钣金', null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 14:20:14', '2014-05-14 14:20:14', null, '98d56038-7b72-478b-9894-4d58477efea2', '<img src=\"http://localhost:8080/allwin/ueditor/dialogs/emotion/images/jx2/j_0001.gif\"/><p></p>', '90b70754-85ea-4419-a6ed-78c80e695267', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-04-20 21:08:44', '2014-04-20 21:08:44', null, '9a7b35a3-56fa-4544-b547-840f452d1e45', '<p>11111111111111111</p>', '56e9ea89-499d-43ce-8275-1564effdee46', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-20 23:51:41', '2014-04-20 23:51:41', null, '9cb456f6-af32-4356-bab3-dee2d5c4a6f5', '<p>1111</p>', '9808aa55-9eea-48b4-989e-82f557dc79fb', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-02-17 10:47:49', '2014-02-17 10:47:49', null, '9ccbc4d9-9e82-47ed-ac8f-5333019a8178', null, 'ff02e276-e83f-47fd-8796-9ae8bdb5796d', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-02-10 22:25:41', '2014-02-10 22:25:41', null, '9dc98af6-3693-446d-b3c3-2ad1152b4a07', '<p>fsdfsdfasdfsdfadf</p>', 'ff02e276-e83f-47fd-8796-9ae8bdb5796d', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-02-09 09:55:06', '2014-02-09 09:55:06', null, 'a062ade4-a1e7-40b1-93e7-7b118e685f78', 'asdasdasdTestContent', 'd12eeb2e-ca98-45c0-8294-6e732b7b7fc1', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-12-04 22:36:39', '2013-12-04 22:36:39', null, 'a10da76d-1b0c-44d7-b889-78a46f1e313a', '您可以发布信息，同公司同事相互交流工作经验。', '8feb7286-4a08-4b0e-97b3-2aabb730fbab', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-03 19:58:20', '2014-04-03 19:58:20', null, 'a7a43c4b-0c88-4a47-a67a-4b235e1313ce', '上鱼了<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396526300875.jpg\" /></p></br>', '5875cf25-5775-4a92-9f97-3cf19b9a0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-20 23:55:13', '2014-04-20 23:55:13', null, 'afa00ea2-3886-4876-a4cb-10dc98f4faa2', '<p>222</p>', 'dfddc2a3-8875-4858-b519-b5d6acc5e93c', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:54:19', '2013-11-19 14:54:19', null, 'b2c441b0-1fe0-47b3-a98e-48f25ec88676', '您可以发布信息，同公司同事相互交流工作经验。', '75c91fb5-2d41-47b8-9717-a97a77c8ea49', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:46:28', '2014-05-14 13:46:28', null, 'b34b5ec4-7717-4c2a-a8e6-e62ae50cf6d1', '', 'c8dc7fb7-f700-448c-bf0d-6b93b1f8f5d3', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-03 15:27:05', '2014-04-03 15:27:05', null, 'b92816cf-1ca0-41a4-8399-5d320019f450', '很好吃', '95e13e60-bd5a-4477-8e55-a84a3785aa48', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-21 00:06:01', '2014-04-21 00:06:01', null, 'bcb55974-d661-4673-bf67-9de450595b91', '<p>999</p>', '61bcf755-51d7-4094-8215-0db16cd223f6', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-08 14:49:31', '2014-04-08 14:49:31', null, 'bdea6a79-c917-407f-bcbf-c10f08d9fd64', '拍照有局限性<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396939770896.jpg\" /></p></br>', '0e7853d3-bb1e-4539-85d5-be303b471b73', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:53:40', '2013-11-19 14:53:40', null, 'be74ed46-5408-418d-ba1c-d1ca6ca500dc', '您可以发布信息，同公司同事相互交流工作经验。', 'b1353bd0-21da-4b2c-9139-fa9c1f985512', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 10:49:26', '2013-11-19 10:49:26', null, 'be89d5dc-885e-4403-90f0-7369de39ec59', '您可以发布信息，同公司同事相互交流工作经验。', '90477645-2422-4765-a8cc-a13cf1cefdf8', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:43:48', '2013-11-19 14:43:48', null, 'c23a3e6e-e782-4270-b530-a5f6b32b5f24', '您可以发布信息，同公司同事相互交流工作经验。', '90c8a3e7-c81a-4f18-bc5e-653ca24539f4', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:38:12', '2013-11-19 14:38:12', null, 'c683657a-d7a4-4e2b-bb3e-afb1dbad6d62', '您可以发布信息，同公司同事相互交流工作经验。', '4c3301f0-8d19-470e-bb1c-d74bdc9c44db', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-21 00:01:06', '2014-04-21 00:01:06', null, 'c799d23e-faf5-4ff2-ad6d-5a3e1812982f', '<p>6666</p>', 'f0bb95ba-25e7-43cc-811f-8fc69f0b1211', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-01 18:01:59', '2014-04-01 18:01:59', null, 'c7f84b62-5c7a-40e3-88ab-ea44500847ca', 'vv+哈哈好风光', '59282a91-9024-4083-b2fc-a8c2f7bc8f70', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-03 20:35:16', '2014-04-03 20:35:16', null, 'caa7191e-9256-4316-8b46-a4570c1736db', '贾森基德等级等级达到回到家酒店酒店休闲鞋继续继续继续进行到底大家记得记得记得那些难兄贾森基德等级等级达到回到家酒店酒店休闲鞋继续继续继续进行到底大家记得记得记得那些难兄难弟贾森基德等级等级达到回到家酒店酒店休闲鞋继续继续继续进行到底大家记得记得记得那些难兄难弟贾森基德等级等级达到回到家酒店酒店休闲鞋继续继续继续进行到底大家记得记得记得那些难兄难弟<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396528516001.jpg\" /></p></br>', 'f6dbd894-710f-4bc1-ba6f-b0bfa23fe0dc', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 10:40:41', '2013-11-19 10:40:41', null, 'cc012eca-7f66-4a14-a84b-1a52da43ed0d', '您可以发布信息，同公司同事相互交流工作经验。', 'f06d7bf4-9571-4f49-86c5-851be262d50c', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:45:14', '2013-11-19 14:45:14', null, 'cc08cdfc-0f0e-4d80-bc7e-96d8b00e901a', '您可以发布信息，同公司同事相互交流工作经验。', '0fe802fe-f960-43c8-ac7c-2bd9d84d3eb2', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-20 23:56:22', '2014-04-20 23:56:22', null, 'ccb62e91-4721-432c-bb92-146842e35d87', '<p>333</p>', '320bcd78-acdb-4971-a2a5-1d5079c0f4c2', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-21 00:09:11', '2014-04-21 00:09:11', null, 'cce57777-ed08-4081-b208-53b271d29da6', '<p>142154215</p>', '9d5e292e-993d-4856-b6e7-7e1eee66fec0', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:35:46', '2014-05-14 13:35:46', null, 'd5718157-28b1-42bc-b42c-fbbf59add8ca', '', '602f8289-aa3b-4122-8a81-8919cbee8fd1', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-02-10 21:10:57', '2014-02-10 21:10:57', null, 'd631ea1e-81f8-40fa-8530-55f93e590b8a', '<p><img title=\"gaint.jpg\" src=\"http://localhost:8080/allwin/ueditor/jsp/fileDown.jsp?filePath=/2de512b3-a522-444f-8823-9ec17897bc3a.jpg\"/></p>', 'c4aa4a16-61b4-4652-90aa-b8965f19b02a', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-04-02 22:34:53', '2014-04-02 22:34:53', null, 'd6bed8d3-73d7-4031-97d6-f6e665f65e55', 'sfasdfadsfadsf', '1e54459d-8f8d-43f6-8583-e173a652bc66', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:48:48', '2014-05-14 13:48:48', null, 'dbbe8f25-29e3-4853-8539-535f39532c4e', '', '004ce0c9-5e1d-43c7-a4c5-a37e3b846385', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-03-17 13:41:19', '2014-03-17 13:41:19', null, 'dda711ab-5634-49ad-a6ed-3692ef7346c2', '呃地方法规', 'fd272d64-1c4e-47ba-aed8-6607d3670d29', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:33:22', '2013-11-19 14:33:22', null, 'e0fab307-9a86-44bc-be5a-4fd9a46e9231', '您可以发布信息，同公司同事相互交流工作经验。', '7b522a28-c6a6-42c6-b057-39f92f79cfdd', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('test2', 'test2', ' ', '2014-02-25 20:43:40', '2014-02-25 20:43:40', null, 'e270cab4-f8c4-46bd-a68d-b555dadd0c7d', '<p>test2<br/></p>', 'c32e32d8-ddff-439a-8246-80024ae64b63', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:46:06', '2014-05-14 13:46:06', null, 'e6c7fa58-0d43-4484-97f3-dcf42b15a0fd', '', '1ce6567a-8891-4a9a-8e18-7328f1fb1f8c', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('yy', 'yy', ' ', '2014-04-03 21:53:57', '2014-04-03 21:53:57', null, 'e96b64c7-cf8e-40ae-927f-c77a154ca459', '20斤', '4b096bb2-ccf2-4cfd-b8dd-88f04b7b2ef1', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:36:53', '2014-05-14 13:36:53', null, 'ea469716-e37e-4b65-a298-2dd9baedd371', '', '36d764fb-802f-4e4c-86d1-f0c61ae37774', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 14:47:24', '2014-05-14 14:47:24', null, 'ed1d56e2-fce9-4f51-a37d-0a2075e6e365', '<img src=\"http://localhost:8080/allwin/ueditor/dialogs/emotion/images/jx2/j_0015.gif\"/><p></p>', 'c37fd760-371a-4c00-a180-a447fa1ace65', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:54:15', '2014-05-14 13:54:15', null, 'ed982c14-f161-4e83-b2c0-e1185b44d103', '<p>gdsagd<img src=\"http://localhost:8080/allwin/ueditor/dialogs/emotion/images/jx2/j_0003.gif\"/></p>', '8e7a7e02-1901-4fea-82b7-6956cefbd494', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-21 00:06:54', '2014-04-21 00:06:54', null, 'f083a052-60cc-4d05-9dd9-2fc79a1cf368', '<p>10</p>', 'f3ebe91a-647d-41af-8669-68ac21bcd1b8', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('test1', 'test1', ' ', '2014-02-25 20:37:23', '2014-02-25 20:37:23', null, 'f2414ed4-c138-4da8-b642-48542c8f12e8', '<p>test1&nbsp;</p>', 'a2f92477-33e0-4db8-a72b-63710be3f03a', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-05-14 13:28:33', '2014-05-14 13:28:33', null, 'f67ef8be-128d-4181-9b72-11eafa9045aa', '', '4f415ce5-f21c-48cb-94d4-5ac13829b2dd', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2014-03-17 13:41:35', '2014-03-17 13:41:35', null, 'f7f903f2-283f-4c75-bfee-60d40b601e8b', '发短信出乎', 'c94b8bcc-67fb-4c2b-8826-2b2d2a88ceeb', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('test1', 'test1', ' ', '2014-02-25 20:37:07', '2014-02-25 20:37:07', null, 'f8ac79bd-d50c-432d-8baf-8318bb0083af', '<p>dsfsdfs&nbsp;</p>', 'd84c52f7-c60c-4a3a-8ba1-c3d79efa8c9e', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('test2', 'test2', ' ', '2014-02-25 20:43:33', '2014-02-25 20:43:33', null, 'fddc4090-c079-4cb8-8086-99832c0fab0b', '<p>asdfadf<br/></p>', '054bfb3c-f642-4cce-b974-c08a521d1eab', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('zwy', 'zwy', ' ', '2014-04-03 20:08:07', '2014-04-03 20:08:07', null, 'fea87bcc-af75-41f9-b1c5-d5562e20be6a', 'shimano红蝎<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396526887062.jpg\" /></p></br>', '6de98690-bf97-4512-a1cf-fb7b52aa714f', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_auto_sns_post_content` VALUES ('admin', 'admin', ' ', '2013-11-19 14:46:18', '2013-11-19 14:46:18', null, 'feba8ad7-d821-42c8-9ee9-9c1b5f19818b', '您可以发布信息，同公司同事相互交流工作经验。', '8160ea35-7247-4265-a8f6-0250c11d0d28', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_auto_sns_post_huifu`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_post_huifu`;
CREATE TABLE `t_auto_sns_post_huifu` (
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `DELETE_USER` varchar(50) DEFAULT ' ' COMMENT '删除人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `DELETE_TIME` datetime DEFAULT NULL COMMENT '删除时间',
  `HUIFU_GUID` varchar(40) NOT NULL COMMENT '回复GUID',
  `POST_GUID` varchar(40) NOT NULL COMMENT '帖子GUID',
  `POST_CREATER` varchar(20) DEFAULT NULL COMMENT '创建人',
  `EXTRA1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `EXTRA2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  `EXTRA3` varchar(100) DEFAULT NULL COMMENT '扩展3',
  `EXTRA4` varchar(100) DEFAULT NULL COMMENT '扩展4',
  `EXTRA5` varchar(100) DEFAULT NULL COMMENT '扩展5',
  PRIMARY KEY (`HUIFU_GUID`),
  KEY `FK_REFERENCE_12` (`POST_GUID`),
  CONSTRAINT `FK_REFERENCE_12` FOREIGN KEY (`POST_GUID`) REFERENCES `t_auto_sns_post_info` (`POST_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_sns_post_huifu
-- ----------------------------
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-20 23:49:34', '2014-04-20 23:49:34', null, '0b86fca0-38d2-412a-b902-35d784059cc7', '56e9ea89-499d-43ce-8275-1564effdee46', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2014-02-17 10:47:49', '2014-02-17 10:47:49', null, '1b333e9a-2c1c-4533-b19b-d9d5acd5cbba', 'ff02e276-e83f-47fd-8796-9ae8bdb5796d', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('zwy', 'zwy', ' ', '2014-04-03 20:03:40', '2014-04-03 20:03:40', null, '1eae4f92-4f68-4ad1-8021-e6e72b99cce4', '5875cf25-5775-4a92-9f97-3cf19b9a0000', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-20 23:56:22', '2014-04-20 23:56:22', null, '320bcd78-acdb-4971-a2a5-1d5079c0f4c2', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2014-02-17 10:51:20', '2014-02-17 10:51:20', null, '365cc45b-b2c5-4028-b9ec-01c628fddd3c', 'ff02e276-e83f-47fd-8796-9ae8bdb5796d', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('yy', 'yy', ' ', '2014-04-03 21:53:57', '2014-04-03 21:53:57', null, '4b096bb2-ccf2-4cfd-b8dd-88f04b7b2ef1', '5875cf25-5775-4a92-9f97-3cf19b9a0000', 'yy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-21 00:06:01', '2014-04-21 00:06:01', null, '61bcf755-51d7-4094-8215-0db16cd223f6', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2014-02-21 08:47:35', '2014-02-21 08:47:35', null, '68529db4-e76f-4101-af54-d8c35905f56c', 'f06d7bf4-9571-4f49-86c5-851be262d50c', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2013-11-19 14:54:18', '2013-11-19 14:54:18', null, '75c91fb5-2d41-47b8-9717-a97a77c8ea49', '7b522a28-c6a6-42c6-b057-39f92f79cfdd', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-20 23:57:41', '2014-04-20 23:57:41', null, '762c81c2-f99e-46f0-bd7e-a968bbd86520', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2013-11-19 14:46:16', '2013-11-19 14:46:16', null, '8160ea35-7247-4265-a8f6-0250c11d0d28', '7b522a28-c6a6-42c6-b057-39f92f79cfdd', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'admin', ' ', '2014-04-20 21:10:35', '2014-04-20 21:10:35', null, '8376a818-ecb9-424b-9d82-83a03ea2b7a2', '56e9ea89-499d-43ce-8275-1564effdee46', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-21 00:05:20', '2014-04-21 00:05:20', null, '915ad8b6-6040-434d-9309-a15e2df5295b', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('zwy', 'zwy', ' ', '2014-04-03 15:27:05', '2014-04-03 15:27:05', null, '95e13e60-bd5a-4477-8e55-a84a3785aa48', '32539855-e905-42b4-8c33-31e47b9e8568', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-20 23:51:41', '2014-04-20 23:51:41', null, '9808aa55-9eea-48b4-989e-82f557dc79fb', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-21 00:09:10', '2014-04-21 00:09:10', null, '9d5e292e-993d-4856-b6e7-7e1eee66fec0', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2013-11-19 14:53:40', '2013-11-19 14:53:40', null, 'b1353bd0-21da-4b2c-9139-fa9c1f985512', '7b522a28-c6a6-42c6-b057-39f92f79cfdd', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2013-11-19 14:50:11', '2013-11-19 14:50:11', null, 'b20df1bc-fa27-4b55-a8a7-38ceeafb5193', '7b522a28-c6a6-42c6-b057-39f92f79cfdd', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2014-03-17 13:41:35', '2014-03-17 13:41:35', null, 'c94b8bcc-67fb-4c2b-8826-2b2d2a88ceeb', 'cb013f24-bcfb-458b-b79a-6cd5ef96266a', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-20 23:58:40', '2014-04-20 23:58:40', null, 'd8dd852d-28d5-4bd0-a759-4899a1865668', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-21 00:05:26', '2014-04-21 00:05:26', null, 'daf83edd-a78e-4308-bb50-714d2f208d62', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-20 23:55:13', '2014-04-20 23:55:13', null, 'dfddc2a3-8875-4858-b519-b5d6acc5e93c', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-21 00:01:06', '2014-04-21 00:01:06', null, 'f0bb95ba-25e7-43cc-811f-8fc69f0b1211', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-21 00:06:53', '2014-04-21 00:06:53', null, 'f3ebe91a-647d-41af-8669-68ac21bcd1b8', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2013-11-19 14:54:14', '2013-11-19 14:54:14', null, 'f69604e6-f987-4148-93c7-254ed73dcd16', '7b522a28-c6a6-42c6-b057-39f92f79cfdd', 'admin', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES (' ', 'zwy', ' ', '2014-04-21 00:08:16', '2014-04-21 00:08:16', null, 'fa6067c2-2080-494f-aba7-7aa5ef2a47c7', '6a972d12-f6d6-4014-baef-37e33893ee12', 'zwy', null, null, null, null, null);
INSERT INTO `t_auto_sns_post_huifu` VALUES ('admin', 'admin', ' ', '2014-03-17 13:41:19', '2014-03-17 13:41:19', null, 'fd272d64-1c4e-47ba-aed8-6607d3670d29', 'cb013f24-bcfb-458b-b79a-6cd5ef96266a', 'admin', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_auto_sns_post_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_post_info`;
CREATE TABLE `t_auto_sns_post_info` (
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `DELETE_USER` varchar(50) DEFAULT ' ' COMMENT '删除人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `DELETE_TIME` datetime DEFAULT NULL COMMENT '删除时间',
  `POST_GUID` varchar(40) NOT NULL COMMENT '帖子GUID',
  `POST_TYPE` varchar(20) DEFAULT NULL COMMENT '帖子类型',
  `POST_STATE` varchar(20) DEFAULT NULL COMMENT '帖子状态',
  `POST_OBJECT` varchar(20) DEFAULT NULL COMMENT '帖子对象',
  `POST_CREATER` varchar(20) DEFAULT NULL COMMENT '创建人',
  `POST_HUIFU_NUM` int(11) DEFAULT '0' COMMENT '回复数',
  `POST_ZHUANFA_NUM` int(11) DEFAULT '0' COMMENT '转发数',
  `POST_ZAN_NUM` int(11) DEFAULT '0' COMMENT '点赞数',
  `EXTRA1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `EXTRA2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  `EXTRA3` varchar(100) DEFAULT NULL COMMENT '扩展3',
  `EXTRA4` varchar(100) DEFAULT NULL COMMENT '扩展4',
  `EXTRA5` varchar(100) DEFAULT NULL COMMENT '扩展5',
  PRIMARY KEY (`POST_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_sns_post_info
-- ----------------------------
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:48:48', '2014-05-14 13:48:48', null, '004ce0c9-5e1d-43c7-a4c5-a37e3b846385', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('test2', 'test2', ' ', '2014-02-25 20:43:33', '2014-02-25 20:43:33', null, '054bfb3c-f642-4cce-b974-c08a521d1eab', 'message', null, 'all', 'test2', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('zwy', 'zwy', ' ', '2014-04-08 14:49:30', '2014-04-08 14:49:30', null, '0e7853d3-bb1e-4539-85d5-be303b471b73', 'message', null, null, 'zwy', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:53:41', '2014-05-14 13:53:41', null, '10ed403c-107f-4fb8-be31-ecf7d6d6d6b2', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-03-17 13:46:30', '2014-03-17 13:46:30', null, '142d7a71-3232-4142-aa51-13d1f2cd0996', 'message', null, null, 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:46:06', '2014-05-14 13:46:06', null, '1ce6567a-8891-4a9a-8e18-7328f1fb1f8c', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-04-02 22:34:53', '2014-04-02 22:34:53', null, '1e54459d-8f8d-43f6-8583-e173a652bc66', 'message', null, null, 'admin', '0', '0', '1', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2013-11-19 14:18:17', '2013-11-19 14:18:17', null, '1fe359ff-99b5-4ac3-92c4-61f53886f649', 'message', null, 'all', 'admin', '2', '2', '1', 'admin', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 14:30:46', '2014-05-14 14:30:45', null, '2762cad6-b4ff-49b4-b6a2-1865936992c3', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2013-11-22 18:04:52', '2013-11-22 18:04:52', null, '296e49ac-39b3-4b9a-90cb-6180a5aa9ef3', 'message', null, 'all', 'admin', '0', '0', '0', 'admin', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-04-02 22:35:27', '2014-04-02 22:35:27', null, '2f9c7e68-d958-4af1-bcb8-4006d7787856', 'message', null, null, 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('yy', 'yy', ' ', '2014-04-04 09:42:24', '2014-04-04 09:42:24', null, '320ab6ec-2878-4f1c-adec-595f759da9c6', 'message', null, null, 'yy', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('zwy', 'zwy', ' ', '2014-04-03 15:26:49', '2014-04-03 15:26:49', null, '32539855-e905-42b4-8c33-31e47b9e8568', 'message', null, null, 'zwy', '1', '0', '1', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:36:53', '2014-05-14 13:36:53', null, '36d764fb-802f-4e4c-86d1-f0c61ae37774', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:48:03', '2014-05-14 13:48:03', null, '4be3a7b4-f5f9-4763-858b-d544adbb54b9', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2013-11-19 10:39:23', '2013-11-19 10:39:23', null, '4c4fd37f-c8b8-41f6-8aae-75032a14dadf', 'message', null, 'all', 'admin', '0', '0', '0', 'admin', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:28:34', '2014-05-14 13:28:33', null, '4f415ce5-f21c-48cb-94d4-5ac13829b2dd', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-04-20 21:08:44', '2014-04-20 21:08:44', null, '56e9ea89-499d-43ce-8275-1564effdee46', 'topic', null, 'all', 'admin', '1', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('zwy', 'zwy', ' ', '2014-04-03 19:58:20', '2014-04-03 19:58:20', null, '5875cf25-5775-4a92-9f97-3cf19b9a0000', 'message', null, null, 'zwy', '2', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('zwy', 'zwy', ' ', '2014-04-01 18:01:59', '2014-04-01 18:01:59', null, '59282a91-9024-4083-b2fc-a8c2f7bc8f70', 'message', null, null, 'zwy', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('zwy', 'zwy', ' ', '2014-04-01 14:03:02', '2014-04-01 14:03:02', null, '5c95abbe-9c39-4775-8a7b-380f6319eb1e', 'message', null, null, 'zwy', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:35:46', '2014-05-14 13:35:46', null, '602f8289-aa3b-4122-8a81-8919cbee8fd1', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 14:58:19', '2014-05-14 14:58:19', null, '6978dfeb-50c3-4130-a6f8-58084f602e26', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-04-20 23:38:24', '2014-04-20 23:38:24', null, '6a972d12-f6d6-4014-baef-37e33893ee12', 'message', null, 'comEmp', 'admin', '1', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('zwy', 'zwy', ' ', '2014-04-03 20:08:07', '2014-04-03 20:08:07', null, '6de98690-bf97-4512-a1cf-fb7b52aa714f', 'message', null, null, 'zwy', '0', '0', '1', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2013-11-19 10:39:09', '2013-11-19 10:39:09', null, '72df5a68-8f4a-4e7c-b3d4-126a6c4ae469', 'message', null, 'all', 'admin', '0', '0', '0', 'admin', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2013-11-22 18:04:49', '2013-11-22 18:04:49', null, '75660b07-2053-417e-a56f-6c81bff4fe12', 'message', null, 'all', 'admin', '0', '0', '0', 'admin', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2013-11-19 14:33:22', '2013-11-19 14:33:22', null, '7b522a28-c6a6-42c6-b057-39f92f79cfdd', 'message', null, 'all', 'admin', '1', '0', '0', 'admin', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:39:08', '2014-05-14 13:39:08', null, '7c9e322a-4eb1-4bef-89e1-8d89e44083d2', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'zwy', ' ', '2014-04-01 13:58:24', '2014-04-01 13:58:24', null, '81f90f3e-015d-41bd-8dcc-97805c75a39c', 'message', null, 'all', 'zwy', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:54:15', '2014-05-14 13:54:15', null, '8e7a7e02-1901-4fea-82b7-6956cefbd494', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2013-12-04 22:36:39', '2013-12-04 22:36:39', null, '8feb7286-4a08-4b0e-97b3-2aabb730fbab', 'activity', null, 'all', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2013-11-19 10:49:26', '2013-11-19 10:49:26', null, '90477645-2422-4765-a8cc-a13cf1cefdf8', 'message', null, 'all', 'admin', '0', '0', '0', 'admin', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 14:20:14', '2014-05-14 14:20:14', null, '90b70754-85ea-4419-a6ed-78c80e695267', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-04-01 13:22:02', '2014-04-01 13:22:02', null, '90bfb117-ad54-4ec8-b2c7-c24834825311', 'message', null, null, 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:35:05', '2014-05-14 13:35:05', null, '911ca27b-4f48-413a-995c-a328e72a7821', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-03-17 13:47:22', '2014-03-17 13:47:22', null, '94798883-5287-46a6-bca3-3ea9786f053b', 'message', null, null, 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-04-02 22:32:46', '2014-04-02 22:32:46', null, '972c4659-6125-442b-b12b-f8f432311a6f', 'message', null, null, 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('test1', 'test1', ' ', '2014-02-25 20:37:23', '2014-02-25 20:37:23', null, 'a2f92477-33e0-4db8-a72b-63710be3f03a', 'message', null, 'all', 'test1', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-04-01 10:22:43', '2014-04-01 10:22:43', null, 'a363183f-2e01-4bce-9f48-b0c3deae3213', 'message', null, null, 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 14:26:44', '2014-05-14 14:26:43', null, 'ab393bfa-5456-4ef3-b944-4d57df5515e6', 'message', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, '机修', null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-02-19 09:10:46', '2014-02-19 09:10:46', null, 'b3bea0ea-86b6-48fe-b38c-c546acd79f1a', 'message', null, null, 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:49:33', '2014-05-14 13:49:33', null, 'b4ca1b2f-31f7-4c6e-8b31-4775562d462f', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('test2', 'test2', ' ', '2014-02-25 20:43:40', '2014-02-25 20:43:40', null, 'c32e32d8-ddff-439a-8246-80024ae64b63', 'message', null, 'all', 'test2', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 14:47:25', '2014-05-14 14:47:24', null, 'c37fd760-371a-4c00-a180-a447fa1ace65', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-02-10 21:10:57', '2014-02-10 21:10:57', null, 'c4aa4a16-61b4-4652-90aa-b8965f19b02a', 'message', null, 'all', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 13:46:28', '2014-05-14 13:46:28', null, 'c8dc7fb7-f700-448c-bf0d-6b93b1f8f5d3', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-02-19 09:11:49', '2014-02-19 09:11:49', null, 'cb013f24-bcfb-458b-b79a-6cd5ef96266a', 'message', null, null, 'admin', '2', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-02-09 09:56:41', '2014-02-09 09:56:41', null, 'd0a78997-040a-405b-902f-4b4461e74d62', 'message', null, 'all', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-02-09 09:55:06', '2014-02-09 09:55:06', null, 'd12eeb2e-ca98-45c0-8294-6e732b7b7fc1', 'message', null, null, 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 14:59:45', '2014-05-14 14:59:45', null, 'd66e104b-37aa-4304-84bc-dc5383f6733c', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', 'fdsafsdagsg', null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 15:00:02', '2014-05-14 15:00:02', null, 'd758cc72-9b24-4377-9595-67fa4da36f44', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', 'fsagdsa', null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('test1', 'test1', ' ', '2014-02-25 20:37:07', '2014-02-25 20:37:07', null, 'd84c52f7-c60c-4a3a-8ba1-c3d79efa8c9e', 'message', null, 'all', 'test1', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-06-24 20:14:18', '2014-06-24 20:14:18', null, 'd9cecab6-5d48-4846-aa11-69c8b52783df', 'message', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, '钣金', null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'admin', ' ', '2014-05-14 14:57:06', '2014-05-14 14:57:06', null, 'da1eded6-946a-40ea-8153-e19b7e644e22', 'topic', null, 'comEmp', 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('zwy', 'zwy', ' ', '2014-04-04 09:53:33', '2014-04-04 09:53:33', null, 'dc16db53-19d0-44c2-a554-07f8bbedb910', 'message', null, null, 'zwy', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES (' ', 'zwy', ' ', '2014-04-01 14:01:53', '2014-04-01 14:01:53', null, 'e52ee924-a658-43d8-b388-0798136eaa8b', 'message', null, 'all', 'zwy', '0', '0', '0', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-04-03 10:16:11', '2014-04-03 10:16:11', null, 'e831663f-2311-4ab6-bc97-3fb59f0ed3e7', 'message', null, null, 'admin', '0', '0', '0', 'ROOT', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2013-11-19 10:40:41', '2013-11-19 10:40:41', null, 'f06d7bf4-9571-4f49-86c5-851be262d50c', 'message', null, 'all', 'admin', '2', '0', '2', 'admin', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('zwy', 'zwy', ' ', '2014-04-03 20:35:16', '2014-04-03 20:35:16', null, 'f6dbd894-710f-4bc1-ba6f-b0bfa23fe0dc', 'message', null, null, 'zwy', '0', '0', '1', 'SHDAS', null, null, null, null);
INSERT INTO `t_auto_sns_post_info` VALUES ('admin', 'admin', ' ', '2014-02-10 22:25:40', '2014-02-10 22:25:40', null, 'ff02e276-e83f-47fd-8796-9ae8bdb5796d', 'activity', null, 'all', 'admin', '4', '0', '0', 'ROOT', null, null, null, null);

-- ----------------------------
-- Table structure for `t_auto_sns_post_zan_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_post_zan_log`;
CREATE TABLE `t_auto_sns_post_zan_log` (
  `ZAN_GUID` varchar(64) NOT NULL COMMENT '点赞主键',
  `ZAN_POST_GUID` varchar(64) DEFAULT NULL COMMENT '帖子主键',
  `ZAN_USER_CODE` varchar(16) DEFAULT NULL COMMENT '点赞人账号',
  `ZAN_USER_NAME` varchar(64) DEFAULT NULL COMMENT '点赞人姓名',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`ZAN_GUID`),
  KEY `INDEX_POST_ZAN` (`ZAN_POST_GUID`,`ZAN_USER_CODE`,`ZAN_USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='点赞日志';

-- ----------------------------
-- Records of t_auto_sns_post_zan_log
-- ----------------------------
INSERT INTO `t_auto_sns_post_zan_log` VALUES ('893edacf-6743-40a7-a945-abe10a833bd2', '5875cf25-5775-4a92-9f97-3cf19b9a0000', 'yy', 'yy', ' ', ' ', '2014-04-03 21:54:07', '2014-04-03 21:54:07');
INSERT INTO `t_auto_sns_post_zan_log` VALUES ('8b2630b2-3338-4fa6-95a0-c4699fd78efd', '1e54459d-8f8d-43f6-8583-e173a652bc66', 'admin', '系统管理员', ' ', ' ', '2014-04-03 09:59:35', '2014-04-03 09:59:35');
INSERT INTO `t_auto_sns_post_zan_log` VALUES ('8c701884-6900-4452-9b4b-5af4f7755303', '6de98690-bf97-4512-a1cf-fb7b52aa714f', 'zwy', '邹文勇', ' ', ' ', '2014-04-03 20:08:41', '2014-04-03 20:08:41');
INSERT INTO `t_auto_sns_post_zan_log` VALUES ('8c74432c-acc0-4ddf-87b3-9481681fd252', '5875cf25-5775-4a92-9f97-3cf19b9a0000', 'zwy', '邹文勇', ' ', ' ', '2014-04-03 19:59:12', '2014-04-03 19:59:12');
INSERT INTO `t_auto_sns_post_zan_log` VALUES ('c7ba6212-4820-4d2f-8a40-32a4952ead14', 'f6dbd894-710f-4bc1-ba6f-b0bfa23fe0dc', 'yy', 'yy', ' ', ' ', '2014-04-04 09:40:38', '2014-04-04 09:40:38');
INSERT INTO `t_auto_sns_post_zan_log` VALUES ('f156174b-e419-4766-9ba1-e278d22048ec', '32539855-e905-42b4-8c33-31e47b9e8568', 'zwy', '邹文勇', ' ', ' ', '2014-04-03 15:26:57', '2014-04-03 15:26:57');

-- ----------------------------
-- Table structure for `t_auto_sns_reg_refree`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_reg_refree`;
CREATE TABLE `t_auto_sns_reg_refree` (
  `SRRE_GUID` varchar(64) NOT NULL COMMENT '推荐人信息表主键',
  `SRRE_USER_CODE` varchar(16) DEFAULT NULL COMMENT '推荐人代码',
  `SRRE_USER_NAME` varchar(64) DEFAULT NULL COMMENT '推荐人姓名',
  `SRRE_REG_USER_CODE` varchar(16) DEFAULT NULL COMMENT '注册人代码',
  `SRRE_REG_USER_NAME` varchar(64) DEFAULT NULL COMMENT '注册人姓名',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`SRRE_GUID`),
  KEY `INDEX_REFREE` (`SRRE_USER_CODE`,`SRRE_USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推荐人信息表--用户注册使用的推荐人信息保存。\r\n统计推荐人使用次数。';

-- ----------------------------
-- Records of t_auto_sns_reg_refree
-- ----------------------------
INSERT INTO `t_auto_sns_reg_refree` VALUES ('26a9ea22-0a83-43cd-b477-feac3326103d', '系统管理员', 'admin', '12312312312', '区为轻微', '2013-12-18 23:49:54');
INSERT INTO `t_auto_sns_reg_refree` VALUES ('e6581e17-e0d1-4e0a-8fe8-0d0fe8fabf00', '系统管理员', 'admin', '12312312312', '厕所收费', '2013-12-18 23:41:08');
INSERT INTO `t_auto_sns_reg_refree` VALUES ('eb92fd20-663c-4343-802c-9b639e9c6efc', '系统管理员', 'admin', '12312312312', '阿萨德', '2013-12-18 23:52:17');

-- ----------------------------
-- Table structure for `t_auto_sns_reg_user_login`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_reg_user_login`;
CREATE TABLE `t_auto_sns_reg_user_login` (
  `SRUL_GUID` varchar(64) NOT NULL COMMENT '用户信息表主键',
  `SRUL_USER_CODE` varchar(16) DEFAULT NULL COMMENT '用户工号',
  `SRUL_USER_NAME` varchar(64) NOT NULL DEFAULT ' ' COMMENT '姓名',
  `SRUL_USER_NICK_NAME` varchar(64) DEFAULT ' ' COMMENT '昵称',
  `SRUL_USER_GENDER` varchar(2) DEFAULT ' ' COMMENT '性别(M.男 W.女)',
  `SRUL_USER_AGE` varchar(3) DEFAULT ' ' COMMENT '年龄',
  `SRUL_USER_PY` varchar(64) DEFAULT ' ' COMMENT '拼音(全拼)',
  `SRUL_USER_PY_BREF` varchar(16) DEFAULT ' ' COMMENT '拼音(缩写)',
  `SRUL_USER_BIRTHDAY` date DEFAULT NULL COMMENT '出生年月',
  `SRUL_USER_BLOOD_TYPE` varchar(6) DEFAULT ' ' COMMENT '血型',
  `SRUL_USER_QQ` varchar(12) DEFAULT ' ' COMMENT 'QQ号码',
  `SRUL_USER_MOBILE` varchar(12) DEFAULT ' ' COMMENT '手机号码',
  `SRUL_USER_PHONE` varchar(24) DEFAULT ' ' COMMENT '电话',
  `SRUL_USER_MAIL` varchar(64) DEFAULT ' ' COMMENT '邮箱',
  `SRUL_USER_CITY` varchar(64) DEFAULT ' ' COMMENT '所在城市(保存区域主键)',
  `SRUL_USER_GRADUATE_SCHOOL` varchar(128) DEFAULT ' ' COMMENT '毕业院校',
  `SRUL_USER_WORK_EXPERIENCE` varchar(128) DEFAULT ' ' COMMENT '工作经历(可以上传附件)',
  `SRUL_USER_ADDRESS` varchar(128) DEFAULT ' ' COMMENT '地址',
  `SRUL_USER_ZIPCODE` varchar(12) DEFAULT ' ' COMMENT '邮编',
  `SRUL_USER_ID_TYPE` varchar(2) DEFAULT ' ' COMMENT '证件类型',
  `SRUL_USER_ID_CODE` varchar(24) DEFAULT ' ' COMMENT '证件号码',
  `SRUL_USER_PASSWORD` varchar(128) DEFAULT ' ' COMMENT '登录密码(32位MD5)',
  `SRUL_ORG_CODE` varchar(32) DEFAULT ' ' COMMENT '组织代码',
  `SRUL_ORG_NAME` varchar(64) DEFAULT ' ' COMMENT '组织名称',
  `SRUL_POST_WORK_CODE` varchar(64) DEFAULT ' ' COMMENT '工种',
  `SRUL_POST_DUTY_CODE` varchar(64) DEFAULT ' ' COMMENT '职称',
  `SRUL_POST_SKILL_REPAIR` varchar(64) DEFAULT ' ' COMMENT '擅长维修',
  `SRUL_POST_SKILL_PROJECT` varchar(64) DEFAULT ' ' COMMENT '擅长项目',
  `SRUL_POST_DESC` varchar(512) DEFAULT ' ' COMMENT '维修技术简介',
  `SRUL_STATUS` varchar(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `CREATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `UPDATE_USER` varchar(64) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`SRUL_GUID`),
  KEY `INDEX_USER_INFO` (`SRUL_USER_ID_CODE`,`SRUL_ORG_CODE`,`SRUL_STATUS`,`SRUL_USER_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户注册信息表';

-- ----------------------------
-- Records of t_auto_sns_reg_user_login
-- ----------------------------
INSERT INTO `t_auto_sns_reg_user_login` VALUES ('7334f933-19fe-4a64-b31a-24df2bc04d51', null, '厕所收费', ' ', 'M', '12', 'cesuoshoufei', 'cssf', '2013-12-05', 'B', '123123', '12312312312', ' ', '123@asd.dfdf', 'AUAR20131124216', 'as分为福娃额发', '区委区维吾尔', '阿的是大苏打', '123', ' ', '123123123123123123', '123123', 'TESTABC', '测试组织', ' ', ' ', ' ', ' ', ' ', '0', 'admin', ' ', '2013-12-18 23:41:08', '2013-12-18 23:41:08');
INSERT INTO `t_auto_sns_reg_user_login` VALUES ('84e314af-28a1-4bc2-990b-927751144765', 'TESTABCU00001', '阿萨德', ' ', 'M', '12', 'asade', 'asd', '2013-12-09', 'B', '123123', '12312312312', ' ', '312@qweq.gff', 'AUAR20131124308', '啊打发打发', '阿萨德发射点发', '地方斯蒂芬斯蒂芬', '123123', ' ', '123123123123123123', '123111', 'TESTABC', '测试组织', ' ', ' ', ' ', ' ', ' ', '1', 'admin', ' ', '2013-12-18 00:00:00', '2013-12-19 00:07:09');
INSERT INTO `t_auto_sns_reg_user_login` VALUES ('9cabb646-2571-4e42-920d-050bc88d876d', 'TESTABCU00000', '区为轻微', ' ', 'M', '12', 'quweiqingwei', 'qwqw', '2013-12-02', 'B', '123123', '12312312312', ' ', '123@aseddm.dsa', 'AUAR20131124209', '阿德法撒旦法', '阿萨德发射点发', '斯蒂芬斯蒂芬', '123', ' ', '123123123123123123', '123123', 'TESTABC', '测试组织', ' ', ' ', ' ', ' ', ' ', '0', 'admin', ' ', '2013-12-18 23:49:54', '2013-12-18 23:49:54');
INSERT INTO `t_auto_sns_reg_user_login` VALUES ('cea54cac-7aea-4a3a-a2b9-0fcc1a9a9027', null, '测试', ' ', 'M', '12', 'ceshi', 'cs', '2013-12-05', 'B', '123123', '12312312312', ' ', '123@sd.ty', 'AUAR20131124189', '速读法额发违法', 'we企鹅去问问', '成都市丰富', '123123', ' ', '123123123123123123', '123123', 'TESTABC', '测试组织', ' ', ' ', ' ', ' ', ' ', '0', 'admin', ' ', '2013-12-18 23:37:25', '2013-12-18 23:37:25');

-- ----------------------------
-- Table structure for `t_auto_sns_task_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_task_info`;
CREATE TABLE `t_auto_sns_task_info` (
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `DELETE_USER` varchar(50) DEFAULT ' ' COMMENT '删除人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `DELETE_TIME` datetime DEFAULT NULL COMMENT '删除时间',
  `TASK_GUID` varchar(50) NOT NULL COMMENT '任务GUID',
  `TASK_NAME` varchar(100) DEFAULT NULL COMMENT '任务名称',
  `PUBLISH_PERSON` varchar(50) DEFAULT NULL COMMENT '发布人',
  `PUBLISH_TIME` datetime DEFAULT NULL COMMENT '发布时间',
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '内容',
  `EXTRA1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `EXTRA2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  `EXTRA3` varchar(100) DEFAULT NULL COMMENT '扩展3',
  `EXTRA4` varchar(100) DEFAULT NULL COMMENT '扩展4',
  `EXTRA5` varchar(100) DEFAULT NULL COMMENT '扩展5',
  PRIMARY KEY (`TASK_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_sns_task_info
-- ----------------------------
INSERT INTO `t_auto_sns_task_info` VALUES ('admin', 'admin', ' ', '2014-04-01 10:04:05', '2014-04-01 10:04:05', null, '6bcb0f28-3cc1-459c-a201-84c7c81cb42c', '大家介绍介绍', 'admin', '2014-04-01 10:04:05', '好像不想那些', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_info` VALUES (' ', ' ', ' ', '2014-04-20 23:43:15', '2014-04-20 23:43:15', null, '71d8c4d7-b995-49d3-a91e-07ebb45466b3', 'tatafdsaf范德萨', 'admin', '2014-04-20 23:43:15', '奋斗撒个更更', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_info` VALUES ('yy', 'yy', ' ', '2014-04-01 14:21:30', '2014-04-03 20:05:41', null, '868d1678-8a47-487c-bc94-47c5ebf2228f', '下午修车', 'yy', '2014-04-03 20:05:41', '决定今晚', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_info` VALUES ('yy', 'yy', ' ', '2014-04-03 20:19:43', '2014-04-03 20:20:09', null, '998cd179-1956-4158-91c5-ec33b492bf5f', 'renwu+', 'yy', '2014-04-03 20:20:09', 'r艰巨的任务啊', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_info` VALUES ('yy', 'yy', ' ', '2014-04-01 13:29:37', '2014-04-01 13:29:45', null, '9dbb04ea-9c51-4399-8e41-4f4581098386', '任务发布', 'yy', '2014-04-01 13:29:45', 'v+格式化', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_info` VALUES ('zwy', 'zwy', ' ', '2014-04-01 13:38:03', '2014-04-01 13:38:03', null, 'bcc5d139-9424-4b7e-9bbd-fbce258b2fcd', 'v1.3测试', 'zwy', '2014-04-01 13:38:03', '任务推送', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_info` VALUES (' ', ' ', ' ', '2014-04-01 14:19:02', '2014-04-01 14:19:02', null, 'd3e54bbc-b72e-4a96-865d-13532c18efe9', '修车人1.3', 'yy', '2014-04-01 14:19:02', '又了没大厦空间葫芦岛市', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_info` VALUES (' ', ' ', ' ', '2014-04-19 02:19:17', '2014-04-19 02:19:17', null, 'f8bc5d08-b550-4b6d-81ce-8a1974809705', 'fdasgdsa', 'admin', '2014-04-19 02:19:17', 'gdsagsa', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_auto_sns_task_person`
-- ----------------------------
DROP TABLE IF EXISTS `t_auto_sns_task_person`;
CREATE TABLE `t_auto_sns_task_person` (
  `CREATE_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '创建人',
  `MODIFY_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '修改人',
  `DELETE_USER` varchar(50) DEFAULT ' ' COMMENT '删除人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '修改时间',
  `DELETE_TIME` datetime DEFAULT NULL COMMENT '删除时间',
  `ROW_GUID` varchar(50) NOT NULL COMMENT '主键',
  `TASK_GUID` varchar(50) DEFAULT NULL COMMENT '任务GUID',
  `TASK_PERSON` varchar(50) DEFAULT NULL COMMENT '任务人',
  `TASK_STATUS` varchar(10) DEFAULT NULL COMMENT '状态',
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '反馈',
  `FANKUI_TIME` datetime DEFAULT NULL COMMENT '反馈时间',
  `TASK_PUSH_STATUS` varchar(2) DEFAULT '0' COMMENT '推送手机端消息状态(0.未推送 1.推送失败 2.推送完成 3.没有手机端信息)',
  `EXTRA1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `EXTRA2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  `EXTRA3` varchar(100) DEFAULT NULL COMMENT '扩展3',
  `EXTRA4` varchar(100) DEFAULT NULL COMMENT '扩展4',
  `EXTRA5` varchar(100) DEFAULT NULL COMMENT '扩展5',
  PRIMARY KEY (`ROW_GUID`),
  KEY `FK_REFERENCE_11` (`TASK_GUID`),
  CONSTRAINT `FK_REFERENCE_11` FOREIGN KEY (`TASK_GUID`) REFERENCES `t_auto_sns_task_info` (`TASK_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auto_sns_task_person
-- ----------------------------
INSERT INTO `t_auto_sns_task_person` VALUES ('yy', 'yy', ' ', '2014-04-01 13:29:45', '2014-04-01 13:29:46', null, '0f48b5b8-efb6-462e-a135-a92208a84ca1', '9dbb04ea-9c51-4399-8e41-4f4581098386', 'yy', '0', null, null, '1', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES (' ', ' ', ' ', '2014-04-01 14:19:02', '2014-04-01 14:19:02', null, '19e8d202-dbc9-4dac-a314-25ec67834ff8', 'd3e54bbc-b72e-4a96-865d-13532c18efe9', 'zwy', '0', null, null, '0', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES ('yy', 'yy', ' ', '2014-04-03 20:20:09', '2014-04-03 20:20:10', null, '1ce82f5b-936a-4bff-a096-1ee12020eba1', '998cd179-1956-4158-91c5-ec33b492bf5f', 'zwy', '0', null, null, '1', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES ('yy', 'yy', ' ', '2014-04-03 20:05:41', '2014-04-03 20:05:41', null, '234f10b7-ccb6-4641-b5cb-cddda3176f6c', '868d1678-8a47-487c-bc94-47c5ebf2228f', 'test2', '0', null, null, '0', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES ('yy', 'yy', ' ', '2014-04-03 20:05:41', '2014-04-03 20:05:41', null, '538c388c-8b9e-4a34-9e0f-602b04c77af9', '868d1678-8a47-487c-bc94-47c5ebf2228f', 'zwy', '0', null, null, '1', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES (' ', ' ', ' ', '2014-04-20 23:43:15', '2014-04-20 23:43:15', null, '6168ab1a-c13c-434c-8e47-4c1efdc121ee', '71d8c4d7-b995-49d3-a91e-07ebb45466b3', 'zwy', '0', null, null, '0', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES ('zwy', 'zwy', ' ', '2014-04-01 13:38:03', '2014-04-01 13:38:03', null, '65719b13-1c93-48d0-9848-6c1558720950', 'bcc5d139-9424-4b7e-9bbd-fbce258b2fcd', '', '0', null, null, '0', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES ('yy', 'yy', ' ', '2014-04-03 20:05:41', '2014-04-03 20:05:41', null, '8ce7bb89-08f5-43ba-a5d8-35847fe5821d', '868d1678-8a47-487c-bc94-47c5ebf2228f', 'test1', '0', null, null, '0', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES ('yy', 'yy', ' ', '2014-04-01 13:29:45', '2014-04-01 14:26:57', null, '9a99cf72-40cc-48a0-bd18-edcccba7f91e', '9dbb04ea-9c51-4399-8e41-4f4581098386', 'zwy', '1', 'v+格式化', '2014-04-01 14:26:57', '1', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES (' ', ' ', ' ', '2014-04-19 02:19:17', '2014-04-20 23:47:16', null, 'a1042bed-7aa2-4b5c-a900-67e0500db9e5', 'f8bc5d08-b550-4b6d-81ce-8a1974809705', 'zwy', '1', null, '2014-04-20 23:47:16', '0', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES (' ', ' ', ' ', '2014-04-19 02:19:17', '2014-04-20 21:00:55', null, 'ab054558-d741-4f08-ad50-9f38f453153e', 'f8bc5d08-b550-4b6d-81ce-8a1974809705', 'admin', '1', null, '2014-04-20 21:00:55', '0', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES ('admin', 'admin', ' ', '2014-04-01 10:04:05', '2014-04-01 10:04:05', null, 'b92ba204-64bc-4855-8db2-e266a233b364', '6bcb0f28-3cc1-459c-a201-84c7c81cb42c', '', '0', null, null, '0', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES (' ', ' ', ' ', '2014-04-20 23:43:15', '2014-04-20 23:44:28', null, 'c7accec4-f677-4cba-af79-de3fd125ee7e', '71d8c4d7-b995-49d3-a91e-07ebb45466b3', 'admin', '1', null, '2014-04-20 23:44:28', '0', null, null, null, null, null);
INSERT INTO `t_auto_sns_task_person` VALUES ('yy', 'yy', ' ', '2014-04-03 20:05:41', '2014-04-03 20:05:41', null, 'da0c7858-18d4-4164-92ac-3391ac2e2837', '868d1678-8a47-487c-bc94-47c5ebf2228f', 'yy', '0', null, null, '1', null, null, null, null, null);
