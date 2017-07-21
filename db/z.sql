/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : z

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2017-07-21 13:42:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(64) NOT NULL COMMENT '组织名',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `code` varchar(64) NOT NULL COMMENT '编号',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `pid` bigint(19) DEFAULT NULL COMMENT '父级主键',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='组织机构';

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '总经办', '王家桥', '01', 'fi-social-windows', null, '0', '2014-02-19 01:00:00');
INSERT INTO `organization` VALUES ('3', '技术部', '', '02', 'fi-social-github', null, '1', '2015-10-01 13:10:42');
INSERT INTO `organization` VALUES ('5', '产品部', '', '03', 'fi-social-apple', null, '2', '2015-12-06 12:15:30');
INSERT INTO `organization` VALUES ('6', '测试组', '', '04', 'fi-social-snapchat', '3', '0', '2015-12-06 13:12:18');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '资源名称',
  `url` varchar(100) DEFAULT NULL COMMENT '资源路径',
  `open_mode` varchar(32) DEFAULT NULL COMMENT '打开方式 ajax,iframe',
  `description` varchar(255) DEFAULT NULL COMMENT '资源介绍',
  `icon` varchar(32) DEFAULT NULL COMMENT '资源图标',
  `pid` bigint(19) DEFAULT NULL COMMENT '父级资源id',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `opened` tinyint(2) NOT NULL DEFAULT '1' COMMENT '打开状态',
  `resource_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '资源类别',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8 COMMENT='资源';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '权限管理', '', '', '系统管理', 'fi-folder', '234', '0', '0', '1', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('11', '资源管理', '/resource/manager', 'ajax', '资源管理', 'fi-database', '1', '1', '0', '1', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('12', '角色管理', '/role/manager', 'ajax', '角色管理', 'fi-torso-business', '1', '2', '0', '1', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('13', '用户管理', '/user/manager', 'ajax', '用户管理', 'fi-torsos-all', '1', '3', '0', '1', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('14', '部门管理', '/organization/manager', 'ajax', '部门管理', 'fi-results-demographics', '1', '4', '0', '1', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('111', '列表', '/resource/treeGrid', 'ajax', '资源列表', 'fi-list', '11', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('112', '添加', '/resource/add', 'ajax', '资源添加', 'fi-page-add', '11', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('113', '编辑', '/resource/edit', 'ajax', '资源编辑', 'fi-page-edit', '11', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('114', '删除', '/resource/delete', 'ajax', '资源删除', 'fi-page-delete', '11', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('121', '列表', '/role/dataGrid', 'ajax', '角色列表', 'fi-list', '12', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('122', '添加', '/role/add', 'ajax', '角色添加', 'fi-page-add', '12', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('123', '编辑', '/role/edit', 'ajax', '角色编辑', 'fi-page-edit', '12', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('124', '删除', '/role/delete', 'ajax', '角色删除', 'fi-page-delete', '12', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('125', '授权', '/role/grant', 'ajax', '角色授权', 'fi-check', '12', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('131', '列表', '/user/dataGrid', 'ajax', '用户列表', 'fi-list', '13', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('132', '添加', '/user/add', 'ajax', '用户添加', 'fi-page-add', '13', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('133', '编辑', '/user/edit', 'ajax', '用户编辑', 'fi-page-edit', '13', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('134', '删除', '/user/delete', 'ajax', '用户删除', 'fi-page-delete', '13', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('141', '列表', '/organization/treeGrid', 'ajax', '用户列表', 'fi-list', '14', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('142', '添加', '/organization/add', 'ajax', '部门添加', 'fi-page-add', '14', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('143', '编辑', '/organization/edit', 'ajax', '部门编辑', 'fi-page-edit', '14', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('144', '删除', '/organization/delete', 'ajax', '部门删除', 'fi-page-delete', '14', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('226', '修改密码', '/user/editPwdPage', 'ajax', null, 'fi-unlock', null, '4', '0', '1', '1', '2015-12-07 20:23:06');
INSERT INTO `resource` VALUES ('227', '登录日志', '/sysLog/manager', 'ajax', null, 'fi-info', '234', '3', '0', '1', '0', '2016-09-30 22:10:53');
INSERT INTO `resource` VALUES ('228', 'Druid监控', '/druid', 'iframe', null, 'fi-monitor', '234', '2', '0', '1', '0', '2016-09-30 22:12:50');
INSERT INTO `resource` VALUES ('229', '系统图标', '/icons.html', 'ajax', null, 'fi-photo', '234', '0', '0', '1', '0', '2016-12-24 15:53:47');
INSERT INTO `resource` VALUES ('230', '内容管理', '', 'ajax', null, 'fi-page-multiple', null, '0', '0', '0', '0', '2016-12-24 15:53:47');
INSERT INTO `resource` VALUES ('231', '新建文章', '/article/create', 'ajax', null, 'fi-page-edit', '232', '0', '0', '1', '0', '2016-12-24 15:53:47');
INSERT INTO `resource` VALUES ('232', '文章管理', '', '', null, 'fi-list-number', '230', '0', '0', '1', '0', '2017-07-21 09:16:48');
INSERT INTO `resource` VALUES ('233', '栏目管理', '', 'ajax', null, 'fi-foundation', '230', '0', '0', '1', '0', '2017-07-21 09:21:13');
INSERT INTO `resource` VALUES ('234', '系统功能', '', '', null, 'fi-laptop', null, '3', '0', '1', '0', '2017-07-21 09:35:29');
INSERT INTO `resource` VALUES ('235', '代码生成', '/generator/toList', '', null, 'fi-italic', '234', '1', '0', '1', '0', '2017-07-21 09:36:42');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(64) NOT NULL COMMENT '角色名',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序号',
  `description` varchar(255) DEFAULT NULL COMMENT '简介',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '0', '超级管理员', '0');
INSERT INTO `role` VALUES ('2', 'de', '0', '技术部经理', '0');
INSERT INTO `role` VALUES ('7', 'pm', '0', '产品部经理', '0');
INSERT INTO `role` VALUES ('8', 'test', '0', '测试账户', '0');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  `resource_id` bigint(19) NOT NULL COMMENT '资源id',
  PRIMARY KEY (`id`),
  KEY `idx_role_resource_ids` (`role_id`,`resource_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8 COMMENT='角色资源';

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('409', '1', '1');
INSERT INTO `role_resource` VALUES ('410', '1', '11');
INSERT INTO `role_resource` VALUES ('415', '1', '12');
INSERT INTO `role_resource` VALUES ('421', '1', '13');
INSERT INTO `role_resource` VALUES ('426', '1', '14');
INSERT INTO `role_resource` VALUES ('411', '1', '111');
INSERT INTO `role_resource` VALUES ('412', '1', '112');
INSERT INTO `role_resource` VALUES ('413', '1', '113');
INSERT INTO `role_resource` VALUES ('414', '1', '114');
INSERT INTO `role_resource` VALUES ('416', '1', '121');
INSERT INTO `role_resource` VALUES ('417', '1', '122');
INSERT INTO `role_resource` VALUES ('418', '1', '123');
INSERT INTO `role_resource` VALUES ('419', '1', '124');
INSERT INTO `role_resource` VALUES ('420', '1', '125');
INSERT INTO `role_resource` VALUES ('422', '1', '131');
INSERT INTO `role_resource` VALUES ('423', '1', '132');
INSERT INTO `role_resource` VALUES ('424', '1', '133');
INSERT INTO `role_resource` VALUES ('425', '1', '134');
INSERT INTO `role_resource` VALUES ('427', '1', '141');
INSERT INTO `role_resource` VALUES ('428', '1', '142');
INSERT INTO `role_resource` VALUES ('429', '1', '143');
INSERT INTO `role_resource` VALUES ('430', '1', '144');
INSERT INTO `role_resource` VALUES ('435', '1', '227');
INSERT INTO `role_resource` VALUES ('436', '1', '228');
INSERT INTO `role_resource` VALUES ('437', '2', '1');
INSERT INTO `role_resource` VALUES ('438', '2', '13');
INSERT INTO `role_resource` VALUES ('439', '2', '131');
INSERT INTO `role_resource` VALUES ('440', '2', '132');
INSERT INTO `role_resource` VALUES ('441', '2', '133');
INSERT INTO `role_resource` VALUES ('446', '2', '227');
INSERT INTO `role_resource` VALUES ('447', '2', '228');
INSERT INTO `role_resource` VALUES ('158', '3', '1');
INSERT INTO `role_resource` VALUES ('159', '3', '11');
INSERT INTO `role_resource` VALUES ('164', '3', '12');
INSERT INTO `role_resource` VALUES ('170', '3', '13');
INSERT INTO `role_resource` VALUES ('175', '3', '14');
INSERT INTO `role_resource` VALUES ('160', '3', '111');
INSERT INTO `role_resource` VALUES ('161', '3', '112');
INSERT INTO `role_resource` VALUES ('162', '3', '113');
INSERT INTO `role_resource` VALUES ('163', '3', '114');
INSERT INTO `role_resource` VALUES ('165', '3', '121');
INSERT INTO `role_resource` VALUES ('166', '3', '122');
INSERT INTO `role_resource` VALUES ('167', '3', '123');
INSERT INTO `role_resource` VALUES ('168', '3', '124');
INSERT INTO `role_resource` VALUES ('169', '3', '125');
INSERT INTO `role_resource` VALUES ('171', '3', '131');
INSERT INTO `role_resource` VALUES ('172', '3', '132');
INSERT INTO `role_resource` VALUES ('173', '3', '133');
INSERT INTO `role_resource` VALUES ('174', '3', '134');
INSERT INTO `role_resource` VALUES ('176', '3', '141');
INSERT INTO `role_resource` VALUES ('177', '3', '142');
INSERT INTO `role_resource` VALUES ('178', '3', '143');
INSERT INTO `role_resource` VALUES ('179', '3', '144');
INSERT INTO `role_resource` VALUES ('359', '7', '1');
INSERT INTO `role_resource` VALUES ('360', '7', '14');
INSERT INTO `role_resource` VALUES ('361', '7', '141');
INSERT INTO `role_resource` VALUES ('362', '7', '142');
INSERT INTO `role_resource` VALUES ('363', '7', '143');
INSERT INTO `role_resource` VALUES ('368', '7', '226');
INSERT INTO `role_resource` VALUES ('448', '8', '1');
INSERT INTO `role_resource` VALUES ('449', '8', '11');
INSERT INTO `role_resource` VALUES ('451', '8', '12');
INSERT INTO `role_resource` VALUES ('453', '8', '13');
INSERT INTO `role_resource` VALUES ('455', '8', '14');
INSERT INTO `role_resource` VALUES ('450', '8', '111');
INSERT INTO `role_resource` VALUES ('452', '8', '121');
INSERT INTO `role_resource` VALUES ('454', '8', '131');
INSERT INTO `role_resource` VALUES ('456', '8', '141');
INSERT INTO `role_resource` VALUES ('461', '8', '227');
INSERT INTO `role_resource` VALUES ('462', '8', '228');
INSERT INTO `role_resource` VALUES ('478', '8', '229');
INSERT INTO `role_resource` VALUES ('479', '8', '230');
INSERT INTO `role_resource` VALUES ('480', '8', '231');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `login_name` varchar(255) DEFAULT NULL COMMENT '登陆名',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名',
  `opt_content` varchar(1024) DEFAULT NULL COMMENT '内容',
  `client_ip` varchar(255) DEFAULT NULL COMMENT '客户端ip',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('391', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1500536801653&', '127.0.0.1', '2017-07-20 15:46:50');
INSERT INTO `sys_log` VALUES ('392', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=6&_=1500536801656&', '127.0.0.1', '2017-07-20 15:47:02');
INSERT INTO `sys_log` VALUES ('393', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.CommonsController,[方法]:ueditor,[参数]:action=config&noCache=1500536826465&', '127.0.0.1', '2017-07-20 15:47:06');
INSERT INTO `sys_log` VALUES ('394', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2017-07-20 16:03:46');
INSERT INTO `sys_log` VALUES ('395', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:_csrf=82765389-7a50-4d2f-9546-8b699664a6e9&username=admin&password=test&captcha=qbf5&rememberMe=1&', '0:0:0:0:0:0:0:1', '2017-07-20 16:03:54');
INSERT INTO `sys_log` VALUES ('396', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.CommonsController,[方法]:ueditor,[参数]:action=config&noCache=1500537900967&', '0:0:0:0:0:0:0:1', '2017-07-20 16:05:00');
INSERT INTO `sys_log` VALUES ('397', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.CommonsController,[方法]:ueditor,[参数]:action=config&noCache=1500539522588&', '0:0:0:0:0:0:0:1', '2017-07-20 16:32:02');
INSERT INTO `sys_log` VALUES ('398', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2017-07-20 16:33:14');
INSERT INTO `sys_log` VALUES ('399', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=222&', '0:0:0:0:0:0:0:1', '2017-07-20 16:36:15');
INSERT INTO `sys_log` VALUES ('400', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=224&', '0:0:0:0:0:0:0:1', '2017-07-20 16:36:27');
INSERT INTO `sys_log` VALUES ('401', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=223&', '0:0:0:0:0:0:0:1', '2017-07-20 16:36:47');
INSERT INTO `sys_log` VALUES ('402', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.CommonsController,[方法]:ueditor,[参数]:action=config&noCache=1500540031711&', '0:0:0:0:0:0:0:1', '2017-07-20 16:40:31');
INSERT INTO `sys_log` VALUES ('403', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1500540025411&', '0:0:0:0:0:0:0:1', '2017-07-20 16:43:44');
INSERT INTO `sys_log` VALUES ('404', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:addPage,[参数]:', null, '2017-07-20 16:44:43');
INSERT INTO `sys_log` VALUES ('405', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.CommonsController,[方法]:ueditor,[参数]:action=config&noCache=1500540431141&', '0:0:0:0:0:0:0:1', '2017-07-20 16:47:11');
INSERT INTO `sys_log` VALUES ('406', 'admin', 'admin', '[类名]:com.z.controller.CommonsController,[方法]:ueditor,[参数]:action=config&noCache=1500542445920&', '0:0:0:0:0:0:0:1', '2017-07-20 17:20:45');
INSERT INTO `sys_log` VALUES ('407', 'admin', 'admin', '[类名]:com.z.controller.LoginController,[方法]:logout,[参数]:', null, '2017-07-20 17:21:26');
INSERT INTO `sys_log` VALUES ('408', 'admin', 'admin', '[类名]:com.z.controller.CommonsController,[方法]:ueditor,[参数]:action=config&noCache=1500599672944&', '0:0:0:0:0:0:0:1', '2017-07-21 09:14:32');
INSERT INTO `sys_log` VALUES ('409', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=230&_=1500599666100&', '0:0:0:0:0:0:0:1', '2017-07-21 09:15:41');
INSERT INTO `sys_log` VALUES ('410', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=230&name=内容管理&resourceType=0&url=&openMode=ajax&icon=fi-page-multiple&seq=1&status=0&opened=0&pid=&', '0:0:0:0:0:0:0:1', '2017-07-21 09:15:48');
INSERT INTO `sys_log` VALUES ('411', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:addPage,[参数]:', null, '2017-07-21 09:16:07');
INSERT INTO `sys_log` VALUES ('412', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:add,[参数]:name=文章管理&resourceType=0&url=&openMode=ajax&icon=&seq=0&status=0&opened=1&pid=230&', '0:0:0:0:0:0:0:1', '2017-07-21 09:16:48');
INSERT INTO `sys_log` VALUES ('413', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=232&_=1500599666105&', '0:0:0:0:0:0:0:1', '2017-07-21 09:20:02');
INSERT INTO `sys_log` VALUES ('414', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=232&name=文章管理&resourceType=0&url=&openMode=&icon=fi-list-number&seq=0&status=0&opened=1&pid=230&', '0:0:0:0:0:0:0:1', '2017-07-21 09:20:09');
INSERT INTO `sys_log` VALUES ('415', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=231&_=1500599666106&', '0:0:0:0:0:0:0:1', '2017-07-21 09:20:21');
INSERT INTO `sys_log` VALUES ('416', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=231&name=新建文章&resourceType=0&url=/article/create&openMode=ajax&icon=fi-page-edit&seq=0&status=0&opened=1&pid=232&', '0:0:0:0:0:0:0:1', '2017-07-21 09:20:26');
INSERT INTO `sys_log` VALUES ('417', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:addPage,[参数]:', null, '2017-07-21 09:20:59');
INSERT INTO `sys_log` VALUES ('418', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:add,[参数]:name=栏目管理&resourceType=0&url=&openMode=ajax&icon=&seq=0&status=0&opened=1&pid=230&', '0:0:0:0:0:0:0:1', '2017-07-21 09:21:13');
INSERT INTO `sys_log` VALUES ('419', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=233&_=1500599666108&', '0:0:0:0:0:0:0:1', '2017-07-21 09:23:58');
INSERT INTO `sys_log` VALUES ('420', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=233&name=栏目管理&resourceType=0&url=&openMode=&icon=fi-foundation&seq=0&status=0&opened=1&pid=230&', '0:0:0:0:0:0:0:1', '2017-07-21 09:24:04');
INSERT INTO `sys_log` VALUES ('421', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=233&_=1500599666109&', '0:0:0:0:0:0:0:1', '2017-07-21 09:24:16');
INSERT INTO `sys_log` VALUES ('422', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=233&name=栏目管理&resourceType=0&url=&openMode=ajax&icon=fi-foundation&seq=0&status=0&opened=1&pid=230&', '0:0:0:0:0:0:0:1', '2017-07-21 09:24:19');
INSERT INTO `sys_log` VALUES ('423', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=231&_=1500599666110&', '0:0:0:0:0:0:0:1', '2017-07-21 09:24:34');
INSERT INTO `sys_log` VALUES ('424', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=231&name=新建文章&resourceType=0&url=/article/create&openMode=iframe&icon=fi-page-edit&seq=0&status=0&opened=1&pid=232&', '0:0:0:0:0:0:0:1', '2017-07-21 09:24:38');
INSERT INTO `sys_log` VALUES ('425', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=231&_=1500599666111&', '0:0:0:0:0:0:0:1', '2017-07-21 09:25:02');
INSERT INTO `sys_log` VALUES ('426', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=231&name=新建文章&resourceType=0&url=/article/create&openMode=ajax&icon=fi-page-edit&seq=0&status=0&opened=1&pid=232&', '0:0:0:0:0:0:0:1', '2017-07-21 09:25:07');
INSERT INTO `sys_log` VALUES ('427', 'admin', 'admin', '[类名]:com.z.controller.CommonsController,[方法]:ueditor,[参数]:action=config&noCache=1500600311526&', '0:0:0:0:0:0:0:1', '2017-07-21 09:25:11');
INSERT INTO `sys_log` VALUES ('428', 'admin', 'admin', '[类名]:com.z.controller.CommonsController,[方法]:ueditor,[参数]:action=config&noCache=1500600338252&', '0:0:0:0:0:0:0:1', '2017-07-21 09:25:38');
INSERT INTO `sys_log` VALUES ('429', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:addPage,[参数]:', null, '2017-07-21 09:35:09');
INSERT INTO `sys_log` VALUES ('430', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:add,[参数]:name=系统功能&resourceType=0&url=&openMode=ajax&icon=&seq=0&status=0&opened=1&pid=&', '0:0:0:0:0:0:0:1', '2017-07-21 09:35:29');
INSERT INTO `sys_log` VALUES ('431', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=234&_=1500599666121&', '0:0:0:0:0:0:0:1', '2017-07-21 09:35:52');
INSERT INTO `sys_log` VALUES ('432', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=234&name=系统功能&resourceType=0&url=&openMode=&icon=fi-laptop&seq=0&status=0&opened=1&pid=&', '0:0:0:0:0:0:0:1', '2017-07-21 09:35:54');
INSERT INTO `sys_log` VALUES ('433', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:addPage,[参数]:', null, '2017-07-21 09:35:58');
INSERT INTO `sys_log` VALUES ('434', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:addPage,[参数]:', null, '2017-07-21 09:36:28');
INSERT INTO `sys_log` VALUES ('435', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:add,[参数]:name=代码生成&resourceType=0&url=&openMode=ajax&icon=&seq=0&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:36:42');
INSERT INTO `sys_log` VALUES ('436', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=235&_=1500599666124&', '0:0:0:0:0:0:0:1', '2017-07-21 09:36:58');
INSERT INTO `sys_log` VALUES ('437', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=235&name=代码生成&resourceType=0&url=&openMode=&icon=fi-italic&seq=0&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:37:01');
INSERT INTO `sys_log` VALUES ('438', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=230&_=1500599666126&', '0:0:0:0:0:0:0:1', '2017-07-21 09:37:39');
INSERT INTO `sys_log` VALUES ('439', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=230&name=内容管理&resourceType=0&url=&openMode=ajax&icon=fi-page-multiple&seq=0&status=0&opened=0&pid=&', '0:0:0:0:0:0:0:1', '2017-07-21 09:37:44');
INSERT INTO `sys_log` VALUES ('440', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=1&_=1500599666127&', '0:0:0:0:0:0:0:1', '2017-07-21 09:37:48');
INSERT INTO `sys_log` VALUES ('441', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=1&name=权限管理&resourceType=0&url=&openMode=&icon=fi-folder&seq=1&status=0&opened=1&pid=&', '0:0:0:0:0:0:0:1', '2017-07-21 09:37:57');
INSERT INTO `sys_log` VALUES ('442', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=234&_=1500599666128&', '0:0:0:0:0:0:0:1', '2017-07-21 09:38:06');
INSERT INTO `sys_log` VALUES ('443', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=234&name=系统功能&resourceType=0&url=&openMode=&icon=fi-laptop&seq=3&status=0&opened=1&pid=&', '0:0:0:0:0:0:0:1', '2017-07-21 09:38:10');
INSERT INTO `sys_log` VALUES ('444', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1500599666129&', '0:0:0:0:0:0:0:1', '2017-07-21 09:38:15');
INSERT INTO `sys_log` VALUES ('445', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=221&name=日志监控&resourceType=0&url=&openMode=&icon=fi-folder&seq=4&status=0&opened=0&pid=&', '0:0:0:0:0:0:0:1', '2017-07-21 09:38:19');
INSERT INTO `sys_log` VALUES ('446', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=234&_=1500599666130&', '0:0:0:0:0:0:0:1', '2017-07-21 09:52:18');
INSERT INTO `sys_log` VALUES ('447', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1500599666131&', '0:0:0:0:0:0:0:1', '2017-07-21 09:52:21');
INSERT INTO `sys_log` VALUES ('448', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=221&name=日志监控&resourceType=0&url=&openMode=&icon=fi-folder&seq=4&status=0&opened=0&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:52:25');
INSERT INTO `sys_log` VALUES ('449', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=228&_=1500599666132&', '0:0:0:0:0:0:0:1', '2017-07-21 09:52:36');
INSERT INTO `sys_log` VALUES ('450', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=228&name=Druid监控&resourceType=0&url=/druid&openMode=iframe&icon=fi-monitor&seq=0&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:52:39');
INSERT INTO `sys_log` VALUES ('451', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=229&_=1500599666133&', '0:0:0:0:0:0:0:1', '2017-07-21 09:52:42');
INSERT INTO `sys_log` VALUES ('452', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=229&name=系统图标&resourceType=0&url=/icons.html&openMode=ajax&icon=fi-photo&seq=0&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:52:46');
INSERT INTO `sys_log` VALUES ('453', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=229&_=1500599666136&', '0:0:0:0:0:0:0:1', '2017-07-21 09:52:56');
INSERT INTO `sys_log` VALUES ('454', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=229&name=系统图标&resourceType=0&url=/icons.html&openMode=ajax&icon=fi-photo&seq=0&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:52:59');
INSERT INTO `sys_log` VALUES ('455', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=235&_=1500599666137&', '0:0:0:0:0:0:0:1', '2017-07-21 09:53:02');
INSERT INTO `sys_log` VALUES ('456', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=235&name=代码生成&resourceType=0&url=&openMode=&icon=fi-italic&seq=1&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:53:05');
INSERT INTO `sys_log` VALUES ('457', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=228&_=1500599666138&', '0:0:0:0:0:0:0:1', '2017-07-21 09:53:06');
INSERT INTO `sys_log` VALUES ('458', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=228&name=Druid监控&resourceType=0&url=/druid&openMode=iframe&icon=fi-monitor&seq=2&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:53:10');
INSERT INTO `sys_log` VALUES ('459', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1500599666139&', '0:0:0:0:0:0:0:1', '2017-07-21 09:53:12');
INSERT INTO `sys_log` VALUES ('460', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=221&name=日志监控&resourceType=0&url=&openMode=&icon=fi-folder&seq=3&status=0&opened=0&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:53:15');
INSERT INTO `sys_log` VALUES ('461', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=227&_=1500599666140&', '0:0:0:0:0:0:0:1', '2017-07-21 09:53:29');
INSERT INTO `sys_log` VALUES ('462', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=227&name=登录日志&resourceType=0&url=/sysLog/manager&openMode=ajax&icon=fi-info&seq=0&status=0&opened=1&pid=221&', '0:0:0:0:0:0:0:1', '2017-07-21 09:53:54');
INSERT INTO `sys_log` VALUES ('463', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=227&_=1500599666141&', '0:0:0:0:0:0:0:1', '2017-07-21 09:53:59');
INSERT INTO `sys_log` VALUES ('464', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=227&name=登录日志&resourceType=0&url=/sysLog/manager&openMode=ajax&icon=fi-info&seq=0&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:54:02');
INSERT INTO `sys_log` VALUES ('465', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:delete,[参数]:id=221&', '0:0:0:0:0:0:0:1', '2017-07-21 09:54:09');
INSERT INTO `sys_log` VALUES ('466', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=227&_=1500599666142&', '0:0:0:0:0:0:0:1', '2017-07-21 09:54:15');
INSERT INTO `sys_log` VALUES ('467', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=227&name=登录日志&resourceType=0&url=/sysLog/manager&openMode=ajax&icon=fi-info&seq=3&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:54:17');
INSERT INTO `sys_log` VALUES ('468', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=1&_=1500599666148&', '0:0:0:0:0:0:0:1', '2017-07-21 09:54:56');
INSERT INTO `sys_log` VALUES ('469', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=1&name=权限管理&resourceType=0&url=&openMode=&icon=fi-folder&seq=1&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:55:00');
INSERT INTO `sys_log` VALUES ('470', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=1&_=1500599666149&', '0:0:0:0:0:0:0:1', '2017-07-21 09:55:12');
INSERT INTO `sys_log` VALUES ('471', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=1&name=权限管理&resourceType=0&url=&openMode=&icon=fi-folder&seq=0&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 09:55:18');
INSERT INTO `sys_log` VALUES ('472', 'admin', 'admin', '[类名]:com.z.controller.LoginController,[方法]:login,[参数]:', null, '2017-07-21 11:22:06');
INSERT INTO `sys_log` VALUES ('473', 'admin', 'admin', '[类名]:com.z.controller.LoginController,[方法]:loginPost,[参数]:_csrf=8519cd41-f9f1-4844-bab5-428dafc400f9&username=admin&password=test&captcha=u7ew&rememberMe=1&', '0:0:0:0:0:0:0:1', '2017-07-21 11:22:15');
INSERT INTO `sys_log` VALUES ('474', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:editPage,[参数]:id=235&_=1500607336317&', '0:0:0:0:0:0:0:1', '2017-07-21 11:24:34');
INSERT INTO `sys_log` VALUES ('475', 'admin', 'admin', '[类名]:com.z.controller.ResourceController,[方法]:edit,[参数]:id=235&name=代码生成&resourceType=0&url=/generator/toList&openMode=&icon=fi-italic&seq=1&status=0&opened=1&pid=234&', '0:0:0:0:0:0:0:1', '2017-07-21 11:24:50');

-- ----------------------------
-- Table structure for tb_article
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `column_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_article
-- ----------------------------

-- ----------------------------
-- Table structure for tb_column
-- ----------------------------
DROP TABLE IF EXISTS `tb_column`;
CREATE TABLE `tb_column` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_column
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `login_name` varchar(64) NOT NULL COMMENT '登陆名',
  `name` varchar(64) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `salt` varchar(36) DEFAULT NULL COMMENT '密码加密盐',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别',
  `age` tinyint(2) DEFAULT '0' COMMENT '年龄',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `user_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户类别',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户状态',
  `organization_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属机构',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDx_user_login_name` (`login_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '05a671c66aefea124cc08b76ea6d30bb', 'test', '0', '25', '18707173376', '0', '0', '1', '2015-12-06 13:14:05');
INSERT INTO `user` VALUES ('13', 'snoopy', 'snoopy', '05a671c66aefea124cc08b76ea6d30bb', 'test', '0', '25', '18707173376', '1', '0', '3', '2015-10-01 13:12:07');
INSERT INTO `user` VALUES ('14', 'dreamlu', 'dreamlu', '05a671c66aefea124cc08b76ea6d30bb', 'test', '0', '25', '18707173376', '1', '0', '5', '2015-10-11 23:12:58');
INSERT INTO `user` VALUES ('15', 'test', 'test', '05a671c66aefea124cc08b76ea6d30bb', 'test', '0', '25', '18707173376', '1', '0', '6', '2015-12-06 13:13:03');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` bigint(19) NOT NULL COMMENT '用户id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  KEY `idx_user_role_ids` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('60', '1', '1');
INSERT INTO `user_role` VALUES ('61', '1', '2');
INSERT INTO `user_role` VALUES ('62', '1', '7');
INSERT INTO `user_role` VALUES ('65', '1', '8');
INSERT INTO `user_role` VALUES ('63', '13', '2');
INSERT INTO `user_role` VALUES ('64', '14', '7');
INSERT INTO `user_role` VALUES ('53', '15', '8');
SET FOREIGN_KEY_CHECKS=1;
