/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dcmg

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-10-15 18:02:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dictype
-- ----------------------------
DROP TABLE IF EXISTS `dictype`;
CREATE TABLE `dictype` (
  `id` varchar(64) NOT NULL,
  `UUID` varchar(128) DEFAULT NULL COMMENT '编号',
  `DicType` varchar(10) DEFAULT NULL COMMENT '类型',
  `DicCode` varchar(100) DEFAULT NULL COMMENT '编码',
  `DicName` varchar(100) DEFAULT NULL COMMENT '名称',
  `sortNum` int(10) DEFAULT NULL COMMENT '排序',
  `isUse` int(1) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行业字典';

-- ----------------------------
-- Records of dictype
-- ----------------------------

-- ----------------------------
-- Table structure for login_parameter
-- ----------------------------
DROP TABLE IF EXISTS `login_parameter`;
CREATE TABLE `login_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `username` varchar(255) NOT NULL COMMENT '用户帐号',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登录变量';

-- ----------------------------
-- Records of login_parameter
-- ----------------------------
INSERT INTO `login_parameter` VALUES ('1', 'bjlcgkxxjsyxgs', 'eG/ICJayVCK1Mky25XtwHA==', 'admin', '2016-09-10 14:27:20', 'admin', null, '12108', '0');

-- ----------------------------
-- Table structure for login_return
-- ----------------------------
DROP TABLE IF EXISTS `login_return`;
CREATE TABLE `login_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登录返回';

-- ----------------------------
-- Records of login_return
-- ----------------------------

-- ----------------------------
-- Table structure for mtbdbb_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mtbdbb_parameter`;
CREATE TABLE `mtbdbb_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` int(10) NOT NULL COMMENT '身份验证',
  `sendData` text NOT NULL COMMENT '发送数据',
  `sendReportType` int(10) NOT NULL COMMENT '报告类型',
  `dataTime` datetime NOT NULL COMMENT '所属时间',
  `dataUnitType` int(10) NOT NULL COMMENT '单位标识',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报表变量';

-- ----------------------------
-- Records of mtbdbb_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtbdbb_return
-- ----------------------------
DROP TABLE IF EXISTS `mtbdbb_return`;
CREATE TABLE `mtbdbb_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `bdbb_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` int(10) NOT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '开始时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报表返回';

-- ----------------------------
-- Records of mtbdbb_return
-- ----------------------------

-- ----------------------------
-- Table structure for mtbdbb_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mtbdbb_senddata`;
CREATE TABLE `mtbdbb_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `identification` varchar(50) DEFAULT NULL COMMENT '记录标识',
  `mineName` varchar(50) DEFAULT NULL COMMENT '煤矿编号',
  `varietyCoalmine` int(10) DEFAULT NULL COMMENT '煤种编号',
  `tonnagelist` double DEFAULT NULL COMMENT '煤种吨数',
  `varietyCoalout` int(10) DEFAULT NULL COMMENT '出省编码',
  `tonnageout` double DEFAULT NULL COMMENT '出省吨数',
  `BuyerAddress` int(10) DEFAULT NULL COMMENT '买方地址',
  `tonnagebuy` double DEFAULT NULL COMMENT '买方吨数',
  `fieldsource` varchar(255) NOT NULL COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `status` int(2) DEFAULT NULL,
  `dataUnitType` varchar(100) DEFAULT NULL,
  `endDataTime` datetime DEFAULT NULL,
  `dataTime` datetime DEFAULT NULL,
  `sendReportType` varchar(10) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报表数据';

-- ----------------------------
-- Records of mtbdbb_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mtht_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mtht_parameter`;
CREATE TABLE `mtht_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `senddata` text NOT NULL COMMENT '发动数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同变量';

-- ----------------------------
-- Records of mtht_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtht_return
-- ----------------------------
DROP TABLE IF EXISTS `mtht_return`;
CREATE TABLE `mtht_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `ht_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同返回';

-- ----------------------------
-- Records of mtht_return
-- ----------------------------

-- ----------------------------
-- Table structure for mtht_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mtht_senddata`;
CREATE TABLE `mtht_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `identification` varchar(50) DEFAULT NULL COMMENT '记录标识',
  `salesParty` varchar(20) DEFAULT NULL COMMENT '销售编码',
  `varietyCoal` int(10) DEFAULT NULL COMMENT '煤种',
  `coalQuality` varchar(200) DEFAULT NULL COMMENT '煤质',
  `count` int(10) DEFAULT NULL COMMENT '数量',
  `priceType` int(10) DEFAULT NULL COMMENT '价格类型',
  `price` double DEFAULT NULL COMMENT '价格',
  `buyerName` varchar(50) DEFAULT NULL COMMENT '买方名称',
  `BuyerType` int(10) DEFAULT NULL COMMENT '买方类型',
  `BuyerAddress` int(10) DEFAULT NULL COMMENT '买方地址',
  `dateSign` datetime DEFAULT NULL COMMENT '签订日期',
  `contractNo` varchar(50) DEFAULT NULL COMMENT '合同编号',
  `fieldsource` varchar(100) NOT NULL COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同数据';

-- ----------------------------
-- Records of mtht_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mtjs_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mtjs_parameter`;
CREATE TABLE `mtjs_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `senddata` text NOT NULL COMMENT '发送数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结算变量';

-- ----------------------------
-- Records of mtjs_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtjs_return
-- ----------------------------
DROP TABLE IF EXISTS `mtjs_return`;
CREATE TABLE `mtjs_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `js_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结算返回';

-- ----------------------------
-- Records of mtjs_return
-- ----------------------------

-- ----------------------------
-- Table structure for mtjs_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mtjs_senddata`;
CREATE TABLE `mtjs_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `identification` varchar(50) DEFAULT NULL COMMENT '记录标识',
  `salesParty` varchar(20) DEFAULT NULL COMMENT '销售编码',
  `varietyCoal` int(10) DEFAULT NULL COMMENT '煤种',
  `coalQuality` varchar(200) DEFAULT NULL COMMENT '煤质',
  `count` int(10) DEFAULT NULL COMMENT '数量',
  `priceType` int(10) DEFAULT NULL COMMENT '价格类型',
  `price` double DEFAULT NULL COMMENT '价格',
  `buyerName` varchar(50) DEFAULT NULL COMMENT '付款方名称',
  `payDate` datetime DEFAULT NULL COMMENT '回款日期',
  `contractNo` varchar(50) DEFAULT NULL COMMENT '合同编号',
  `fieldsource` varchar(100) NOT NULL COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `status` int(2) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结算数据';

-- ----------------------------
-- Records of mtjs_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mtjy_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mtjy_parameter`;
CREATE TABLE `mtjy_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `senddata` text NOT NULL COMMENT '发送数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='经营变量';

-- ----------------------------
-- Records of mtjy_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtjy_return
-- ----------------------------
DROP TABLE IF EXISTS `mtjy_return`;
CREATE TABLE `mtjy_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `mtjy_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='经营返回';

-- ----------------------------
-- Records of mtjy_return
-- ----------------------------

-- ----------------------------
-- Table structure for mtjy_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mtjy_senddata`;
CREATE TABLE `mtjy_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `indentification` varchar(50) DEFAULT NULL COMMENT '统一标识',
  `companyName` varchar(20) DEFAULT NULL COMMENT '企业编码',
  `strationBelong` varchar(20) DEFAULT NULL COMMENT '行政属地',
  `supervisionUnit` varchar(20) DEFAULT NULL COMMENT '监管单位',
  `nature` varchar(20) DEFAULT NULL COMMENT '企业性质',
  `modeType` varchar(20) DEFAULT NULL COMMENT '经营方式',
  `areaSiteMeasure` double DEFAULT NULL COMMENT '储煤场地',
  `localMeasure` varchar(20) DEFAULT NULL COMMENT '货位类型',
  `enviType` varchar(20) DEFAULT NULL COMMENT '环保设施',
  `qualityType` varchar(20) DEFAULT NULL COMMENT '质检设施',
  `measureType` varchar(20) DEFAULT NULL COMMENT '计量设施',
  `fieldsource` varchar(100) DEFAULT NULL COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `status` int(2) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='经营数据';

-- ----------------------------
-- Records of mtjy_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mtmk_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mtmk_parameter`;
CREATE TABLE `mtmk_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `senddata` text NOT NULL COMMENT '发送数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='煤矿变量';

-- ----------------------------
-- Records of mtmk_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtmk_rerurn
-- ----------------------------
DROP TABLE IF EXISTS `mtmk_rerurn`;
CREATE TABLE `mtmk_rerurn` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `mk_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='煤矿返回';

-- ----------------------------
-- Records of mtmk_rerurn
-- ----------------------------

-- ----------------------------
-- Table structure for mtmk_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mtmk_senddata`;
CREATE TABLE `mtmk_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `identification` varchar(50) DEFAULT NULL COMMENT '记录标识',
  `mineName` varchar(50) DEFAULT NULL COMMENT '煤矿编号',
  `address` varchar(50) NOT NULL COMMENT '地址',
  `belongArea` varchar(20) DEFAULT NULL COMMENT '归属',
  `coalfieldName` varchar(20) DEFAULT NULL COMMENT '煤田名称',
  `type` varchar(20) NOT NULL COMMENT '矿井类型',
  `coalfield` double DEFAULT NULL COMMENT '核定产能',
  `mainMineCoal` varchar(200) DEFAULT NULL COMMENT '主要煤种',
  `goodsMidelCoal` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `goodsMidelCoalQua` varchar(200) DEFAULT NULL COMMENT '商品煤质',
  `coalSpecies` varchar(20) DEFAULT NULL COMMENT '开拓方式',
  `wellBoreNum` int(10) DEFAULT NULL COMMENT '井筒数量',
  `miningLevel` varchar(50) DEFAULT NULL COMMENT '开采水平',
  `miningCoalSeam` varchar(50) DEFAULT NULL COMMENT '现采煤层',
  `technology` varchar(50) DEFAULT NULL COMMENT '采煤工艺',
  `GasLevel` varchar(20) DEFAULT NULL COMMENT '瓦斯等级',
  `hydrogeoType` varchar(20) DEFAULT NULL COMMENT '水文类型',
  `breedingFire` varchar(20) DEFAULT NULL COMMENT '自然倾向',
  `fieldsource` varchar(100) DEFAULT NULL COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `status` int(2) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='煤矿数据';

-- ----------------------------
-- Records of mtmk_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mtqybd_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mtqybd_parameter`;
CREATE TABLE `mtqybd_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `dataunittype` varchar(255) NOT NULL COMMENT '数据类别',
  `senddata` text NOT NULL COMMENT '发送数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='磅单变量';

-- ----------------------------
-- Records of mtqybd_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtqybd_return
-- ----------------------------
DROP TABLE IF EXISTS `mtqybd_return`;
CREATE TABLE `mtqybd_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `qybd_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='榜单返回';

-- ----------------------------
-- Records of mtqybd_return
-- ----------------------------

-- ----------------------------
-- Table structure for mtqybd_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mtqybd_senddata`;
CREATE TABLE `mtqybd_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `identification` varchar(50) DEFAULT NULL COMMENT '记录标识',
  `mineName` varchar(50) DEFAULT NULL COMMENT '煤矿编号',
  `varietyCoal` int(10) DEFAULT NULL COMMENT '煤种',
  `tonnage` double DEFAULT NULL COMMENT '吨数',
  `loadingPoint` varchar(50) DEFAULT NULL COMMENT '装车点',
  `exitport` int(10) DEFAULT NULL COMMENT '出省口',
  `unloadingPoint` varchar(50) DEFAULT NULL COMMENT '卸车点',
  `buyerName` varchar(50) DEFAULT NULL COMMENT '买方名称',
  `BuyerType` int(10) DEFAULT NULL COMMENT '买方类型',
  `BuyerAddress` int(10) DEFAULT NULL COMMENT '买方地址',
  `contractNum` varchar(50) NOT NULL COMMENT '合同号',
  `carNum` varchar(50) DEFAULT NULL COMMENT '车牌号',
  `dataTime` datetime DEFAULT NULL COMMENT '数据时间',
  `fieldsource` varchar(100) DEFAULT NULL COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `status` int(2) DEFAULT NULL,
  `dataUnitType` varchar(100) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='榜单数据';

-- ----------------------------
-- Records of mtqybd_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mtqycl_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mtqycl_parameter`;
CREATE TABLE `mtqycl_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `senddata` text NOT NULL COMMENT '发送数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产量变量';

-- ----------------------------
-- Records of mtqycl_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtqycl_return
-- ----------------------------
DROP TABLE IF EXISTS `mtqycl_return`;
CREATE TABLE `mtqycl_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `qycl_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产量返回';

-- ----------------------------
-- Records of mtqycl_return
-- ----------------------------

-- ----------------------------
-- Table structure for mtqycl_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mtqycl_senddata`;
CREATE TABLE `mtqycl_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `identification` varchar(50) DEFAULT NULL COMMENT '记录标识',
  `companyNo` varchar(20) DEFAULT NULL COMMENT '企业编号',
  `companyName` varchar(20) DEFAULT NULL COMMENT '生产名称',
  `proMineName` varchar(20) DEFAULT NULL COMMENT '生产编码',
  `mineType` int(10) DEFAULT NULL COMMENT '煤种',
  `outputDay` double DEFAULT NULL COMMENT '日产量',
  `outputMonth` double DEFAULT NULL COMMENT '当月产量',
  `outputQuter` double DEFAULT NULL COMMENT '当季累量',
  `outputYear` double DEFAULT NULL COMMENT '当年产量',
  `fieldsource` varchar(100) DEFAULT '' COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `status` int(2) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产量数据';

-- ----------------------------
-- Records of mtqycl_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mtqykc_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mtqykc_parameter`;
CREATE TABLE `mtqykc_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `senddata` text NOT NULL COMMENT '发送数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存变量';

-- ----------------------------
-- Records of mtqykc_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtqykc_return
-- ----------------------------
DROP TABLE IF EXISTS `mtqykc_return`;
CREATE TABLE `mtqykc_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `qykc_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存返回';

-- ----------------------------
-- Records of mtqykc_return
-- ----------------------------

-- ----------------------------
-- Table structure for mtqykc_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mtqykc_senddata`;
CREATE TABLE `mtqykc_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `identification` varchar(50) DEFAULT NULL COMMENT '记录标识',
  `mineName` varchar(50) DEFAULT NULL COMMENT '煤矿编码',
  `coalType` int(10) DEFAULT NULL COMMENT '煤种',
  `coalStoreDay` double DEFAULT NULL COMMENT '当日存煤',
  `coalStoreAddDay` double DEFAULT NULL COMMENT '当日新增',
  `fieldsource` varchar(100) DEFAULT NULL COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存数据';

-- ----------------------------
-- Records of mtqykc_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mttlys_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mttlys_parameter`;
CREATE TABLE `mttlys_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `senddata` text NOT NULL COMMENT '发送数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='铁路变量';

-- ----------------------------
-- Records of mttlys_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mttlys_return
-- ----------------------------
DROP TABLE IF EXISTS `mttlys_return`;
CREATE TABLE `mttlys_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `tlys_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='铁路返回';

-- ----------------------------
-- Records of mttlys_return
-- ----------------------------

-- ----------------------------
-- Table structure for mttlys_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mttlys_senddata`;
CREATE TABLE `mttlys_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `identification` varchar(50) DEFAULT NULL COMMENT '记录标识',
  `salesUnitName` varchar(50) DEFAULT NULL COMMENT '销售编码',
  `ssName` int(10) DEFAULT NULL COMMENT '发站编码',
  `SZYMC` varchar(50) DEFAULT NULL COMMENT '省内编码',
  `JYZMC` int(10) DEFAULT NULL COMMENT '集运编码',
  `DZName` int(10) DEFAULT NULL COMMENT '到站编码',
  `DZAddress` varchar(50) DEFAULT NULL COMMENT '到站地址',
  `unLoadName` varchar(50) DEFAULT NULL COMMENT '卸车点',
  `hairVolumeXSDN` varchar(50) DEFAULT NULL COMMENT '发运名称',
  `proMineName` varchar(50) DEFAULT NULL COMMENT '生产名称',
  `HLGroup` varchar(50) DEFAULT NULL COMMENT '货列编组',
  `specialLineName` varchar(50) DEFAULT NULL COMMENT '专用名称',
  `hairVolume` double DEFAULT NULL COMMENT '装车发运',
  `coalType` int(10) DEFAULT NULL COMMENT '煤种',
  `buyerUnitName` varchar(50) DEFAULT NULL COMMENT '买方名称',
  `fieldsource` varchar(100) DEFAULT NULL COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `status` int(2) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='铁路数据';

-- ----------------------------
-- Records of mttlys_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mttlys__parameter
-- ----------------------------
DROP TABLE IF EXISTS `mttlys__parameter`;
CREATE TABLE `mttlys__parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `senddata` text NOT NULL COMMENT '发送数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='铁路变量';

-- ----------------------------
-- Records of mttlys__parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtwg_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mtwg_parameter`;
CREATE TABLE `mtwg_parameter` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `token` varchar(255) NOT NULL COMMENT '身份验证',
  `senddata` text NOT NULL COMMENT '发送数据',
  `sendtime` datetime NOT NULL COMMENT '发送时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外购变量';

-- ----------------------------
-- Records of mtwg_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for mtwg_return
-- ----------------------------
DROP TABLE IF EXISTS `mtwg_return`;
CREATE TABLE `mtwg_return` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `wg_senddata_id` varchar(64) NOT NULL COMMENT '数据id',
  `ErrorCode` varchar(100) DEFAULT NULL COMMENT '错误代码',
  `Message` text COMMENT '消息',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `status` int(5) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外购返回';

-- ----------------------------
-- Records of mtwg_return
-- ----------------------------

-- ----------------------------
-- Table structure for mtwg_senddata
-- ----------------------------
DROP TABLE IF EXISTS `mtwg_senddata`;
CREATE TABLE `mtwg_senddata` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `identification` varchar(50) DEFAULT NULL COMMENT '记录标识',
  `orgName` varchar(50) DEFAULT NULL COMMENT '外购编码',
  `varietyCoal` int(10) DEFAULT NULL COMMENT '外购煤种',
  `coalQuaility` varchar(200) DEFAULT NULL COMMENT '煤质',
  `sellerName` varchar(50) DEFAULT NULL COMMENT '卖方名称',
  `sellerAddress` varchar(50) DEFAULT NULL COMMENT '卖方地点',
  `SellerAddressCode` varchar(50) DEFAULT NULL COMMENT '卖方编码',
  `outsourcingAmount` int(10) DEFAULT NULL COMMENT '外购量',
  `buyTime` datetime DEFAULT NULL COMMENT '外购时间',
  `price` double DEFAULT NULL COMMENT '价格',
  `settleType` varchar(50) DEFAULT NULL COMMENT '结算方式',
  `transportMode` varchar(50) DEFAULT NULL COMMENT '运输方式',
  `fieldsource` varchar(100) DEFAULT NULL COMMENT '字段来源',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `status` int(2) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外购数据';

-- ----------------------------
-- Records of mtwg_senddata
-- ----------------------------

-- ----------------------------
-- Table structure for mt_url_interface
-- ----------------------------
DROP TABLE IF EXISTS `mt_url_interface`;
CREATE TABLE `mt_url_interface` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `action_method` varchar(10) DEFAULT NULL COMMENT '接口',
  `chinaese_name` varchar(200) DEFAULT NULL COMMENT '中文名称',
  `interface_url` varchar(200) DEFAULT NULL COMMENT '接口地址',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(2) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接口地址\r\n';

-- ----------------------------
-- Records of mt_url_interface
-- ----------------------------
INSERT INTO `mt_url_interface` VALUES ('1', 'post', '系统登录验证接口', 'http://10.1.10.31/CRMS/CollectionReport/partLogin', 'admin', '2016-09-10 11:20:23', 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('10', 'post', '结算数据接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiSettlement', 'admin', '2016-09-10 11:20:28', 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('11', 'post', '外购数据接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiOutSourcing', 'admin', null, 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('2', 'post', '煤矿基本信息数据接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiBangMine', 'admin', null, 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('3', 'post', '煤炭经营企业基本信息接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiMineCompany', 'admin', null, 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('4', 'post', '企业产量数据接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiProduction', 'admin', null, 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('5', 'post', '铁路运输数据接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiRailWay', 'admin', null, 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('6', 'post', '企业磅单数据接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiBangDan', 'admin', null, 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('7', 'post', '磅单报表数据接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiBangDanReport', 'admin', null, 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('8', 'post', '企业库存数据接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiStore', 'admin', null, 'admin', null, null, '0');
INSERT INTO `mt_url_interface` VALUES ('9', 'post', '合同数据接口', 'http://10.1.10.31/CRMS/CollectionReport/dataApiSalesContract', 'admin', null, 'admin', null, null, '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`value`,`id`),
  KEY `sys_dict_value` (`value`) USING BTREE,
  KEY `sys_dict_label` (`label`) USING BTREE,
  KEY `sys_dict_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('no', '0', '否', 'YesOrNo', '是与否', '0', '0', 'dev', '2016-03-18 20:02:34', 'dev', '2016-03-18 20:02:34', null, '0');
INSERT INTO `sys_dict` VALUES ('40288013569b9c6f01569c1d2168000c', '001', '企业磅单报表数据', 'dataUnitType', '发送数据单位标识', '5', null, 'admin', '2016-08-18 13:26:10', 'admin', '2016-08-18 13:26:10', '', '0');
INSERT INTO `sys_dict` VALUES ('40288013569b9c6f01569c20745e000d', '002', '企业销售管理系统磅单报表数据', 'dataUnitType', '发送数据单位标识', '5', null, 'admin', '2016-08-18 13:29:47', 'admin', '2016-08-18 13:29:47', '', '0');
INSERT INTO `sys_dict` VALUES ('40288013569b9c6f01569c21ea70000e', '003', '集团运输管理系统榜单报表数据', 'dataUnitType', '发送数据单位标识', '5', null, 'admin', '2016-08-18 13:31:23', 'admin', '2016-08-18 13:31:23', '', '0');
INSERT INTO `sys_dict` VALUES ('40288013569b9c6f01569c226fe7000f', '004', '其他', 'dataUnitType', '发送数据单位标识', '5', null, 'admin', '2016-08-18 13:31:57', 'admin', '2016-08-18 13:31:57', '', '0');
INSERT INTO `sys_dict` VALUES ('yes', '1', '是', 'YesOrNo', '是与否', '0', '0', 'dev', '2016-03-18 20:02:34', 'dev', '2016-03-18 20:02:34', null, '0');
INSERT INTO `sys_dict` VALUES ('42032816a149403a9b6651301b620d0c', '10101', '无烟煤', 'CC', '煤种编码库', '1', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('26b634e6f237498080da2f1c3d34a7d6', '10102', '褐煤', 'CC', '煤种编码库', '2', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('d6336a5c3ec04de194d809bdebb2a51c', '10103', '烟煤', 'CC', '煤种编码库', '3', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('cc5e18e2d9764b079f6b13f04cc55b0d', '10104', '贫煤', 'CC', '煤种编码库', '4', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('232a0b3c56c64ba8ae348111f6f352df', '10105', '贫瘦煤', 'CC', '煤种编码库', '5', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('54cfa438867d46f1b155584ecbec021f', '10106', '瘦煤', 'CC', '煤种编码库', '6', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('b84d0ac74d804aec8c8c62551abf8c58', '10107', '焦煤', 'CC', '煤种编码库', '7', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('60371223013744639452223e848f0db1', '10108', '肥煤', 'CC', '煤种编码库', '8', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('253856858cb84821bf3c026730d998a2', '10109', '1/3焦煤', 'CC', '煤种编码库', '9', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('ebae9e00ca514bd1bc8cf282d835b62c', '10110', '气肥煤', 'CC', '煤种编码库', '10', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('652e3bd1b8a1403c99e9a8b00646263c', '10111', '1/2中粘煤', 'CC', '煤种编码库', '11', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('26d7b6f8efbf4e0f8196ee4ebd79892e', '10112', '弱粘煤', 'CC', '煤种编码库', '12', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('650d689c73aa4d4cbfdfd0b8ca058566', '10113', '不粘煤', 'CC', '煤种编码库', '13', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('896b060b9355492abf3919c770d30d63', '10114', '长焰煤', 'CC', '煤种编码库', '14', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('59aa1e7acabd459ea9318d7b92418abc', '10201', '洗原煤', 'CC', '煤种编码库', '15', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('ca73c711679f441d8d8f477ee0303695', '10202', '洗混煤', 'CC', '煤种编码库', '16', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('c301b5c97d7a45fb96b6cbd53fcabf8c', '10203', '混煤', 'CC', '煤种编码库', '17', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('ed1a902788bd401da1a7aa81b067226e', '10204', '洗混末煤', 'CC', '煤种编码库', '18', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('643b8e4a06294446a3547b9da89b0225', '10205', '混末煤', 'CC', '煤种编码库', '19', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('d2ca3f81ed794a28a0949ba6baf83ab3', '10206', '洗末煤', 'CC', '煤种编码库', '20', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('7c9cd11edd06421590d5967590070a5d', '10207', '末煤', 'CC', '煤种编码库', '21', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('5dca7149da68472bad436cc9e7bbbb89', '10208', '洗粉煤', 'CC', '煤种编码库', '22', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('a2fe6d476db049048626116128c10c8b', '10209', '粉煤', 'CC', '煤种编码库', '23', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('bb47eeb5772246f78c98549cb04dbac6', '10210', '精煤', 'CC', '煤种编码库', '24', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('5d42840ac0cc4e12a374bef146736515', '10211', '洗精煤', 'CC', '煤种编码库', '25', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('e98ec1a407234fc9973a14d65e5f4287', '10301', '喷吹煤', 'CC', '煤种编码库', '26', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('0dffd1620e7b40c2811aaa3b2fe5395f', '10302', '动力配煤', 'CC', '煤种编码库', '27', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('6f1a77eb1125445486c4f3ad93831d11', '10303', '未分牌号的煤', 'CC', '煤种编码库', '28', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('3a18b592d34c4726bc4b10d180b4df55', '10304', '泥煤', 'CC', '煤种编码库', '29', null, 'admin', '2016-10-12 17:24:44', 'admin', '2016-10-12 17:24:44', null, '0');
INSERT INTO `sys_dict` VALUES ('16ce4e0518504a03ab5a672babb78717', '110000', '天津市', 'BLC', '购买方所在地编码库', '1', null, 'admin', '2016-10-12 17:28:22', 'admin', '2016-10-12 17:28:22', null, '0');
INSERT INTO `sys_dict` VALUES ('761fcb9a411a445697c2e22dd9c780b4', '110000', '天津市', 'RSCC', '铁路到站所在城市编码库', '1', null, 'admin', '2016-10-12 17:37:48', 'admin', '2016-10-12 17:37:48', null, '0');
INSERT INTO `sys_dict` VALUES ('899320019cda49859e3769edc6241cc5', '301', '经营贸易', 'BTC', '购买方类型编码库', '1', null, 'admin', '2016-10-12 17:25:11', 'admin', '2016-10-12 17:25:11', null, '0');
INSERT INTO `sys_dict` VALUES ('450e50172a434dbabd9cc3ccdccbd070', '302', '洗选', 'BTC', '购买方类型编码库', '2', null, 'admin', '2016-10-12 17:25:11', 'admin', '2016-10-12 17:25:11', null, '0');
INSERT INTO `sys_dict` VALUES ('297802d727ca411887f33f7cbe6e3e69', '303', '储售', 'BTC', '购买方类型编码库', '3', null, 'admin', '2016-10-12 17:25:11', 'admin', '2016-10-12 17:25:11', null, '0');
INSERT INTO `sys_dict` VALUES ('a80eb87fbc08443b885cd9010aecfd0e', '304', '电力', 'BTC', '购买方类型编码库', '4', null, 'admin', '2016-10-12 17:25:11', 'admin', '2016-10-12 17:25:11', null, '0');
INSERT INTO `sys_dict` VALUES ('7906e3b98f2841b2b32a5ddc3e007224', '305', '冶金', 'BTC', '购买方类型编码库', '5', null, 'admin', '2016-10-12 17:25:11', 'admin', '2016-10-12 17:25:11', null, '0');
INSERT INTO `sys_dict` VALUES ('bc22127a45784872852f74e28ccc8084', '306', '建材', 'BTC', '购买方类型编码库', '6', null, 'admin', '2016-10-12 17:25:11', 'admin', '2016-10-12 17:25:11', null, '0');
INSERT INTO `sys_dict` VALUES ('3023b6ee3c794f63b5222b306eaa8479', '307', '焦炭', 'BTC', '购买方类型编码库', '7', null, 'admin', '2016-10-12 17:25:11', 'admin', '2016-10-12 17:25:11', null, '0');
INSERT INTO `sys_dict` VALUES ('4a07be3e87e940d8a748119dc9668c3f', '308', '化工', 'BTC', '购买方类型编码库', '8', null, 'admin', '2016-10-12 17:25:11', 'admin', '2016-10-12 17:25:11', null, '0');
INSERT INTO `sys_dict` VALUES ('a0b8751cfcb640e6aadc2183fd5a689d', '309', '其它', 'BTC', '购买方类型编码库', '9', null, 'admin', '2016-10-12 17:25:11', 'admin', '2016-10-12 17:25:11', null, '0');
INSERT INTO `sys_dict` VALUES ('96536db7838e4e0abe3e6c9997ff96d8', '4010101', '京  大', 'OPC', '出省口编码库', '1', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('d07dd9eec7c54d9885a2981c6611e2ae', '4010102', '神泉堡', 'OPC', '出省口编码库', '2', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('191c5cd7d14b424eba3c4a3762aaaefa', '4010103', '许  堡', 'OPC', '出省口编码库', '3', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('6e5d9390224f4ce7b1cbc929f3395a4a', '4010104', '聚  西', 'OPC', '出省口编码库', '4', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('a33d5ec08b954dafaaaf02968d3b56ce', '4010201', '堡子湾', 'OPC', '出省口编码库', '5', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('c6b205d300ae446599aa1e93964ea4d7', '4010202', '新荣镇', 'OPC', '出省口编码库', '6', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('e6c5e21b82a44160ab36f080bbc8468d', '4010203', '得  大', 'OPC', '出省口编码库', '7', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('572b4662014745b7bace653c02aad9e6', '4010301', '下达枝', 'OPC', '出省口编码库', '8', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('85d11483946e4239827b6179d7a68013', '4010302', '沙圪坨', 'OPC', '出省口编码库', '9', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('091b03c292774355852de1b039e323e4', '4010303', '马头关', 'OPC', '出省口编码库', '10', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('69b4ae0d29d14a9cb5dd59970bcb388e', '4010304', '马圈庠', 'OPC', '出省口编码库', '11', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('3842fa9e5bb94846bd975986a7260c83', '4010401', '三  屯', 'OPC', '出省口编码库', '12', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('d443457b6c9041f398a0d1023ed38f17', '4020501', '杀虎口', 'OPC', '出省口编码库', '13', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('faeadc1554644e9b86eab78e1f6e52d1', '4020601', '二道梁', 'OPC', '出省口编码库', '14', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('4176f7cd83c843b5888f0a0d9edbc307', '4020602', '下水头', 'OPC', '出省口编码库', '15', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('b8f5c134e5d443e6b0a62c06884ad8a7', '4030701', '石  咀', 'OPC', '出省口编码库', '16', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('6f3881f060cf46c29ac7913b6e05bd23', '4030702', '陈家庄', 'OPC', '出省口编码库', '17', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('b69c0037addb4e8ebc4bd5ee01f1d81d', '4030703', '五台山', 'OPC', '出省口编码库', '18', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('87a3529c3b154046acdddc4f646f9abf', '4030801', '云雾峪', 'OPC', '出省口编码库', '19', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('55feadcf19fa4a7b85776bf72fbc0c4d', '4030901', '保府桥', 'OPC', '出省口编码库', '20', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('8bb5de30912d42c0a030b3b9c355459a', '4041001', '娘子关', 'OPC', '出省口编码库', '21', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('c9290a21b9f6498b9f73982b20bdff4c', '4041002', '旧  关', 'OPC', '出省口编码库', '22', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('47f21ac93f5b40e3839e0a75b2322bb5', '4041003', '太旧路', 'OPC', '出省口编码库', '23', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('59539e06a66043c699cc6bc1c8e473ae', '4041101', '交  口', 'OPC', '出省口编码库', '24', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('0ba53edef76e450c8dbaa34688777b8c', '4051201', '王  寨', 'OPC', '出省口编码库', '25', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('5f90653a8fe84a1a944efe0433eab4a4', '4051202', '马岭关', 'OPC', '出省口编码库', '26', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('b95cb1a8e0c74e05adc20ff246afbeff', '4051301', '麻  田', 'OPC', '出省口编码库', '27', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('cfa9b7b88132476394abd2ae5bd7b4ac', '4051302', '下  庄', 'OPC', '出省口编码库', '28', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('d4f6de8d45164800805066ad040a498f', '4051401', '董坪沟', 'OPC', '出省口编码库', '29', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('7f915403172241a7a11ea332f38a0d82', '4051402', '桥  岭', 'OPC', '出省口编码库', '30', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('75083454ca854024ba3d18d67f25dde2', '4061501', '军  渡', 'OPC', '出省口编码库', '31', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('1120c72f120944a69faaf0e896673318', '4061601', '蔡家崖', 'OPC', '出省口编码库', '32', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('518137b81fbe474a8415ba5a522be73e', '4071701', '东阳关', 'OPC', '出省口编码库', '33', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('6ac2862575b24f6789349f1f8cec0d5c', '4071702', '长  邯', 'OPC', '出省口编码库', '34', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('8095f20a53634e8494234854def733e2', '4071801', '下  黄', 'OPC', '出省口编码库', '35', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('e8638ef67d4d4bd287bc33a49b15bb94', '4071901', '壶  关', 'OPC', '出省口编码库', '36', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('8f1cd5635bfb46a6b47fe86c6bed8c55', '4082001', '赵辿岭', 'OPC', '出省口编码库', '37', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('e7e9f4dab29e4c799ad944cf1300bd81', '4082002', '太行关', 'OPC', '出省口编码库', '38', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('8c9f34731247400e9608c079028d0a47', '4082101', '马  街', 'OPC', '出省口编码库', '40', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('65758193535a4bda921ac91d8d07fbd4', '4082102', '晋  焦', 'OPC', '出省口编码库', '41', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('560b8ecbfe0a4e31abf50ad96eb29b5e', '4082103', '晋  济', 'OPC', '出省口编码库', '42', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('8d60f614d4054825860311382c74d11f', '4082103', '柳  口', 'OPC', '出省口编码库', '39', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('20f3108fe2bf43fdacf9cc920ba80686', '4082201', '阳  南', 'OPC', '出省口编码库', '43', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('fddaa8cafacf4de882d4396f8696f72f', '4092301', '乡韩桥', 'OPC', '出省口编码库', '44', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('cf0ebb8af2e0439f87bdf1293a508c9e', '4092401', '窑  头', 'OPC', '出省口编码库', '45', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('30a0fa87652f42389d3be833d701fd9b', '4092501', '茅津渡', 'OPC', '出省口编码库', '46', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('9ab40cb2ea534da4881e8aa28d4f6f25', '4102601', '风陵渡', 'OPC', '出省口编码库', '47', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('1bb2170dc7fa469eb794a7092a500d81', '4102701', '禹门口', 'OPC', '出省口编码库', '48', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('e13baa64daa747a791c4a4203292d183', '4102702', '龙虎路', 'OPC', '出省口编码库', '49', null, 'admin', '2016-10-12 17:29:33', 'admin', '2016-10-12 17:29:33', null, '0');
INSERT INTO `sys_dict` VALUES ('82538fa8fa5c4a1bab71a8d347150ff1', '501001', '古东', 'RSC', '铁路发站编码库', '1', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('2454e026120e4b389b6554b4faa76fb8', '501002', '古交', 'RSC', '铁路发站编码库', '2', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('1c0c77de77e740e2b95028150e79fbae', '501003', '清徐', 'RSC', '铁路发站编码库', '3', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('9fc04d2690144e06a983de5079c0c46e', '501004', '三给村', 'RSC', '铁路发站编码库', '4', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('7f74b8ad010d4826a7b6b02d0eb05673', '501005', '扫石', 'RSC', '铁路发站编码库', '5', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('416bc533209d41b692b649f7564992ac', '501006', '太原东', 'RSC', '铁路发站编码库', '6', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('c7fcf80213c84c43b6cc4fbd99b0009d', '501007', '镇城底', 'RSC', '铁路发站编码库', '7', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('8737f524cead4413978e826e404c7ab2', '501008', '大同', 'RSC', '铁路发站编码库', '8', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('20485285b68347cdb005376ce890d40d', '501009', '湖东', 'RSC', '铁路发站编码库', '9', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('8fec918754564d24854e2e577e420f17', '501010', '平旺', 'RSC', '铁路发站编码库', '10', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('04666a278fc042dea4555e5739884a7b', '501011', '古店', 'RSC', '铁路发站编码库', '11', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('a85c04593d6c447490add17c360ad296', '501012', '口泉', 'RSC', '铁路发站编码库', '12', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('da8ab799184d45c49841b892678bc3bd', '501013', '韩家岭', 'RSC', '铁路发站编码库', '13', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('3f2a71a5da9945778d060c35a9e74f13', '501014', '云岗', 'RSC', '铁路发站编码库', '14', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('8d9ef3e33ef148ad99883463b499e559', '501015', '云岗西', 'RSC', '铁路发站编码库', '15', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('72a0203548a442aaa6499cd6a4823cbd', '501016', '大同南', 'RSC', '铁路发站编码库', '16', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('7155b75515b84b09bd02fdf5806821f9', '501017', '新高山', 'RSC', '铁路发站编码库', '17', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('13d6b8713e264e2b8a3c922e50cf7f83', '501018', '解家庄', 'RSC', '铁路发站编码库', '18', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('8f4f69ca05824a7eb9b6ad9aac51af6b', '501019', '灵丘', 'RSC', '铁路发站编码库', '19', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('fef71dfde93845469231b3fe71e7177b', '501020', '大涧', 'RSC', '铁路发站编码库', '20', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('b4f4b41f854c46a9962f35f983fc546f', '501021', '白羊墅', 'RSC', '铁路发站编码库', '21', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('e73c7da9e47a4296858c83e8dcbf50ac', '501022', '赛鱼', 'RSC', '铁路发站编码库', '22', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('1c8aa5e87ff34442a6d458c1667fdcf6', '501023', '乱流', 'RSC', '铁路发站编码库', '23', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('156ed6302219498ba6994210e538d9e9', '501024', '平定', 'RSC', '铁路发站编码库', '24', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('1eec6368cbf14453a8196f1c211bfd2f', '501025', '宁艾', 'RSC', '铁路发站编码库', '25', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('e4bd63762a0a42e9af12d009edb5fd36', '501026', '长治', 'RSC', '铁路发站编码库', '26', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('6f4f82873148454da3b94b42063d1acd', '501027', '东田良', 'RSC', '铁路发站编码库', '27', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('b1f7b7c9ade548c38ab5ea72aea024f4', '501028', '大辛庄', 'RSC', '铁路发站编码库', '28', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('79d2d695679742cab19f067335f9c8f3', '501029', '长治北', 'RSC', '铁路发站编码库', '29', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('48750d1d8afe404980bfd810307d3068', '501030', '夏店站', 'RSC', '铁路发站编码库', '30', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('259bc18bc25342baa2500161025e388f', '501031', '襄垣', 'RSC', '铁路发站编码库', '31', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('06c18b717a6b4bac8b1d77e1bf872ce8', '501032', '五阳', 'RSC', '铁路发站编码库', '32', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('925aab3a250c4497877cc1be84181187', '501033', '夏店', 'RSC', '铁路发站编码库', '33', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('1f7d8a40bb0f41ae9e33dff4e8a9597f', '501034', '小宋站', 'RSC', '铁路发站编码库', '34', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('55dab62dae774056a6d8ac43fa22bae2', '501035', '襄垣站', 'RSC', '铁路发站编码库', '35', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('1b17a02bb4e0484aa95ad5b63de36d35', '501036', '长子站', 'RSC', '铁路发站编码库', '36', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('d6d4ea2abab14f85bf5837976dd22448', '501037', '店上站', 'RSC', '铁路发站编码库', '37', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('ceb5ac7f30f34bf385e81653b88b79f2', '501038', '微子镇', 'RSC', '铁路发站编码库', '38', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('8512fa87f9aa4195854e7802738d6251', '501039', '墨镫', 'RSC', '铁路发站编码库', '39', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('c3d36843ae4d4581a64831a6a3c40025', '501040', '新交口', 'RSC', '铁路发站编码库', '40', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('e541106ca10e4203a1c1c424acec3db6', '501041', '长北', 'RSC', '铁路发站编码库', '41', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('a60b43961b0146939c1f4a6ee778be0f', '501042', '榆次', 'RSC', '铁路发站编码库', '42', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('2741931cc99e42ac96148410f306454a', '501043', '王湖站', 'RSC', '铁路发站编码库', '43', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('ad739bf3699d40dcaf1d145d29d80e77', '501044', '郑州', 'RSC', '铁路发站编码库', '44', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('7c99d8f5803f42d8b04916ddcb848edc', '501045', '北板桥', 'RSC', '铁路发站编码库', '45', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('bbce29e2c8ab41a1926464e9bd1cccf2', '501046', '晋城北', 'RSC', '铁路发站编码库', '46', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('2069bf9337014e11b142462ef4a6bbb4', '501047', '东元庆', 'RSC', '铁路发站编码库', '47', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('0bb5ed47078e4425a2205e93ababa765', '501048', '西武匠', 'RSC', '铁路发站编码库', '48', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('194e1270d1124f1d97abf18f7da3518c', '501049', '高平', 'RSC', '铁路发站编码库', '49', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('e26a3eeae21640fe8b4330fe2704f7ef', '501050', '南陈铺', 'RSC', '铁路发站编码库', '50', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('49f8156530a447b0a2877f07d9941123', '501051', '西阳村', 'RSC', '铁路发站编码库', '51', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('eca7ab242f5748f097d3991bf6caaa6c', '501052', '阳城', 'RSC', '铁路发站编码库', '52', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('75b598601f4c4017b1fc6c8cc05a5b12', '501053', '嘉峰', 'RSC', '铁路发站编码库', '53', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('ffc03f2eda6a402db46cbf2eaa18060e', '501054', '沁水', 'RSC', '铁路发站编码库', '54', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('bb9c34a938bc47f4a96b7da692ac591f', '501055', '端氏', 'RSC', '铁路发站编码库', '55', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('94a36f32b3e84d4c86b1cc14046f6894', '501056', '大新', 'RSC', '铁路发站编码库', '56', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('62ffeb8745aa41a3afc26ce14e9d0e96', '501057', '袁树林', 'RSC', '铁路发站编码库', '57', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('eec223f4aaef4f18a0a49d5d063f0bef', '501058', '神头', 'RSC', '铁路发站编码库', '58', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('eb6faaed230b4f58ae13e259d2125fb5', '501059', '前寨', 'RSC', '铁路发站编码库', '59', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('b244d36df2344785918454e9297f1874', '501060', '朔州', 'RSC', '铁路发站编码库', '60', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('138caef6a7a04f21a3955be87dc95f5e', '501061', '北周庄', 'RSC', '铁路发站编码库', '61', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('fff536c0b8f946028a322d6bacee9a29', '501062', '东榆林', 'RSC', '铁路发站编码库', '62', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('4055fa3d9d004a7dbed1efbd96e413f8', '501063', '岱岳', 'RSC', '铁路发站编码库', '63', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('13dee405bc7d470f935a5ccb980e988b', '501064', '怀仁', 'RSC', '铁路发站编码库', '64', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('2e23387e898f41e8a6bf38b0779dd7c8', '501065', '金沙滩', 'RSC', '铁路发站编码库', '65', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('41a3046d4c45408a97ab53ddeaff9f57', '501066', '宋家庄', 'RSC', '铁路发站编码库', '66', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('7747caab7c4948a8bbe912ee68d9ebe5', '501067', '里八庄', 'RSC', '铁路发站编码库', '67', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('366a5f86edea402b9b6bf790e4177a81', '501068', '阳方口', 'RSC', '铁路发站编码库', '68', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('96fa68b55de648189bf2b9527d429acb', '501069', '庄儿上', 'RSC', '铁路发站编码库', '69', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('e3fec17b8ca44277ba870ac4fd0cd9c0', '501070', '轩岗', 'RSC', '铁路发站编码库', '70', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('7a376e62a2eb4252a0ab50032906dd7a', '501071', '原平', 'RSC', '铁路发站编码库', '71', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('2ed4fe83b7da442a816eb7deb2957305', '501072', '崞阳', 'RSC', '铁路发站编码库', '72', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('bdd4bfd90db1405a99de20553e45fb83', '501073', '原平站', 'RSC', '铁路发站编码库', '73', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('6def60a315d64a8dbac2d8075fa56350', '501074', '轩岗站', 'RSC', '铁路发站编码库', '74', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('7cf0f745abfe4780b51c0e4447e04fdc', '501075', '五寨站', 'RSC', '铁路发站编码库', '75', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('a6b6dd285eda4d04ab319624dcb12bb0', '501076', '宁武', 'RSC', '铁路发站编码库', '76', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('4412455f42b44d678b924c0cf98e39f1', '501077', '韩家楼', 'RSC', '铁路发站编码库', '77', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('463376010fd24c16a154c2826cd8c4dc', '501078', '化北屯', 'RSC', '铁路发站编码库', '78', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('3761a23c86a84244a785e3bcf46e9046', '501079', '安塘', 'RSC', '铁路发站编码库', '79', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('78f19ae3d3dc4ce5b35591059023e45a', '501080', '岢岚站', 'RSC', '铁路发站编码库', '80', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('d17397c39ceb4035a5989135d80c9956', '501081', '忻州', 'RSC', '铁路发站编码库', '81', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('02363abcb70e458895e7db7501f02961', '501082', '田村', 'RSC', '铁路发站编码库', '82', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('d0a7c588d7f442a69f47e8ef19790d6a', '501083', '阴塔', 'RSC', '铁路发站编码库', '83', null, 'admin', '2016-10-12 17:32:01', 'admin', '2016-10-12 17:32:01', null, '0');
INSERT INTO `sys_dict` VALUES ('ff133020ede642e1baa705572859de58', '501084', '代县', 'RSC', '铁路发站编码库', '84', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('c00abe8337ef426d893e30edbccbcbd4', '501085', '离石发煤站', 'RSC', '铁路发站编码库', '85', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('36e9b6e10c444c3491d18235fe19ea06', '501086', '柳沟站', 'RSC', '铁路发站编码库', '86', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('74dfc8c9dc3f4d9ebfd4f8a8e665d362', '501087', '朱家店站', 'RSC', '铁路发站编码库', '87', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('10df3fb248ed4b1cb45fd83f91b7da9c', '501088', '枝柯站', 'RSC', '铁路发站编码库', '88', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('bae294ae952042cea1ec5cb5b808cd5c', '501089', '穆村站', 'RSC', '铁路发站编码库', '89', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('18b6ed21ed4f481f8b5c01e8d550ef30', '501090', '石庄站', 'RSC', '铁路发站编码库', '90', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('94e11800ff654038844e52c133f53206', '501091', '万安', 'RSC', '铁路发站编码库', '91', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('1202b277316c4730a606476756df87f2', '501092', '介休', 'RSC', '铁路发站编码库', '92', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('31ff38f9a53d447285a084dddfbf1d04', '501093', '张兰', 'RSC', '铁路发站编码库', '93', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('999398262dd943128994b3b61630bc17', '501094', '义安', 'RSC', '铁路发站编码库', '94', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('d4e8b09db82743bc82c53c5ed305a54d', '501095', '阳涉昔阳站', 'RSC', '铁路发站编码库', '95', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('7bd30d409c54489d94d0f19730f2ee2f', '501096', '和顺县泊里站', 'RSC', '铁路发站编码库', '96', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('1fe03c97f6f8440fa7ac8e43e20960f6', '501097', '和顺县站', 'RSC', '铁路发站编码库', '97', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('6ad4ef648ddd4fffa7ae31457b77e939', '501098', '临汾北', 'RSC', '铁路发站编码库', '98', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('1550bad601a64b5683a14b3f4f38ec2a', '501099', '临汾 ', 'RSC', '铁路发站编码库', '99', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('5737c205e0734302b33fce15a39fca2b', '501100', '洪洞', 'RSC', '铁路发站编码库', '100', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('6824133adb304afab6053e957fa1d54d', '501101', '赵城', 'RSC', '铁路发站编码库', '101', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('48fb0a1197c04b5c9d6c4bf25ced6a9c', '501102', '甘亭', 'RSC', '铁路发站编码库', '102', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('e008a80cadb64bc7923a721fd3cd8838', '501103', '张礼', 'RSC', '铁路发站编码库', '103', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('c7ade4be1c8849cd9702cc72da08f690', '501104', '翼城东', 'RSC', '铁路发站编码库', '104', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('509dd74dbb6749bea04c5a12da67319a', '501105', '侯马', 'RSC', '铁路发站编码库', '105', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('3b17ec435694473ea71fac14055fbe39', '501106', '侯马北', 'RSC', '铁路发站编码库', '106', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('1c857e2fff624cc989ef1decfa033e71', '501107', '圣佛', 'RSC', '铁路发站编码库', '107', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('3744680d41464170bbd816f3aa4f0ee0', '501108', '霍州', 'RSC', '铁路发站编码库', '108', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('20052773678645aebf822a5c6a371b02', '501109', '辛置', 'RSC', '铁路发站编码库', '109', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('b95cef7de0444d3ba658077e094496ae', '501110', '曲沃', 'RSC', '铁路发站编码库', '110', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('037d9c7c1c9f4316baa83eca7a3348f8', '501111', '清涧', 'RSC', '铁路发站编码库', '111', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('5d174bd2365344b685c47f4a4c6f6932', '501112', '河津', 'RSC', '铁路发站编码库', '112', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('f56201f29a9f4487b218fd80edf179e8', '501113', '禹门口', 'RSC', '铁路发站编码库', '113', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('0a7a52497e6d4bfbab4c5a516e970fcf', '501114', '新绛', 'RSC', '铁路发站编码库', '114', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('c0d256231a954c47b11c514a5e2f8381', '501115', '稷山', 'RSC', '铁路发站编码库', '115', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('09456768e946413f93f302bb009ad53f', '501116', '兑镇', 'RSC', '铁路发站编码库', '116', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('70d3d8fdd6cc4dcfbf5a8e020696c644', '501117', '白壁关', 'RSC', '铁路发站编码库', '117', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('5d2c5a0e1f1744f7b537967055dc6947', '501118', '阳泉曲', 'RSC', '铁路发站编码库', '118', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('a1164abce9c448619cab444c2f5074b4', '501119', '孝南', 'RSC', '铁路发站编码库', '119', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('7b562dfbbc264393a56a2939f1d04bc0', '501120', '两渡', 'RSC', '铁路发站编码库', '120', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('ac21f571b37e4983a15fcaaa49764399', '501121', '太谷', 'RSC', '铁路发站编码库', '121', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('d1657f6315a740879ace0485ffe09b4c', '501122', '南关', 'RSC', '铁路发站编码库', '122', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('edea83ac2f2b4107aba30993dbd8164d', '501123', '冷泉', 'RSC', '铁路发站编码库', '123', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('40479dc36803493588cd9d8cb39d987b', '501124', '王家会', 'RSC', '铁路发站编码库', '124', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('be23cff0da0844db9dbbfa89c0f1c792', '501125', '离石', 'RSC', '铁路发站编码库', '125', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('c85502de1ae848a89e9ccbb0e407f57c', '501126', '穆村', 'RSC', '铁路发站编码库', '126', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('6ca72065f57e4f4682cb554c2226a324', '501127', '云西', 'RSC', '铁路发站编码库', '127', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('0750d2503516403fb681b73e5bfbbf33', '501128', '嘉丰', 'RSC', '铁路发站编码库', '128', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('b6749eeb3e174957963c6ae5cd64a825', '501129', '皇后园', 'RSC', '铁路发站编码库', '129', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('4bbe67a921ab44789d35eb44a194d5db', '501130', '朱家店', 'RSC', '铁路发站编码库', '130', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('350507b5e76e4fd980108cebe5c542e1', '501131', '店上', 'RSC', '铁路发站编码库', '131', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('0c3d9094a10943cf9dccbbd95da260be', '501132', '小宋', 'RSC', '铁路发站编码库', '132', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('45395381f408474b807d382aa65f4f3c', '501133', '无', 'RSC', '铁路发站编码库', '133', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('e740b5c23616485fb0b26231c6f4bc4f', '501134', '泊里', 'RSC', '铁路发站编码库', '134', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('77b652e2fed542ebb60a349e533e6214', '501135', '阳泉', 'RSC', '铁路发站编码库', '135', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('56a9e2de21a34c60a387f4e7a48634b0', '501136', '寿阳', 'RSC', '铁路发站编码库', '136', null, 'admin', '2016-10-12 17:32:02', 'admin', '2016-10-12 17:32:02', null, '0');
INSERT INTO `sys_dict` VALUES ('b7ae652cee8e4684a927f8bcaf6e7e7d', '502001', '古东站', 'RFC', '铁路集运站编码库', '1', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('7609a15eedbc43a8be36b5cef81773d0', '502002', '古交站', 'RFC', '铁路集运站编码库', '2', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('82060795e1344198be8593eacb58b557', '502003', '古交西曲站', 'RFC', '铁路集运站编码库', '3', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b2d19841a059485c90b71186ccc2b35d', '502004', '扫石发煤站', 'RFC', '铁路集运站编码库', '4', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('ceed507a96e3400489969f6c7ffe5cca', '502005', '镇城底站', 'RFC', '铁路集运站编码库', '5', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('bab39309709f4f25a45e7e5424ae80b1', '502006', '古交屯马站', 'RFC', '铁路集运站编码库', '6', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('785615cb91f042a8af0f524b93b79bde', '502007', '大同市城区运销站', 'RFC', '铁路集运站编码库', '7', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('2fb4eba2b8354a699f5820c09987b4df', '502008', '大同市崴驰煤炭有限责任公司', 'RFC', '铁路集运站编码库', '8', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b9c20f9129f448bea4b7afc72a815092', '502009', '大同市型煤厂煤炭集运站', 'RFC', '铁路集运站编码库', '9', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('9ca59a276d3446e5a35b3d8d1f40c0a9', '502010', '大同市城区平旺发煤站', 'RFC', '铁路集运站编码库', '10', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('d96ab15e3f9d49b7bec4bcf15207a459', '502011', '大同市三友煤制品有限公司', 'RFC', '铁路集运站编码库', '11', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('8a32e4477f9d4c769ec07c63cb5e5e8b', '502012', '国新能源煤炭运销公司', 'RFC', '铁路集运站编码库', '12', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('213bcb37a3b043c29418d6017df8573f', '502013', '大同市城区块煤发运站', 'RFC', '铁路集运站编码库', '13', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('0ce648fbe9af449bb9445b626b39b30a', '502014', '古店煤站', 'RFC', '铁路集运站编码库', '14', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('e84147b8dd6245d5b836824b91b50ae7', '502015', '拖皮油库集运站', 'RFC', '铁路集运站编码库', '15', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('678c94ba6ad343a1aa3669d058a60753', '502016', '杏儿沟煤业有限公司', 'RFC', '铁路集运站编码库', '16', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('1babb90ec7f14376b6c60649cd29b498', '502017', '大同经营公司', 'RFC', '铁路集运站编码库', '17', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('43142543f93248009a6d2a69f1a6dbc1', '502018', '永久发煤站', 'RFC', '铁路集运站编码库', '18', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('3a574ef238eb4d579a1997cfef0b47ae', '502019', '南郊区联营煤站', 'RFC', '铁路集运站编码库', '19', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('987a8cb4490f437baa4628a664c7f1de', '502020', '塔山煤炭集运站', 'RFC', '铁路集运站编码库', '20', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('e8257b9f0b754d178e2ed4e85c23781f', '502021', '山西省晋昌工贸总公司大同发煤站', 'RFC', '铁路集运站编码库', '21', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('21e986ea94e341c8b818cf6917ed09c5', '502022', '大同市马口煤矿口泉煤站', 'RFC', '铁路集运站编码库', '22', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('45d6ac11b384427a9a7aec5b4eff65eb', '502023', '口泉煤站', 'RFC', '铁路集运站编码库', '23', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('546edf75039b4162bd9c94c788af62c6', '502024', '口泉站', 'RFC', '铁路集运站编码库', '24', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('951060bb285b4b819e6502d3a2754af2', '502025', '大同煤矿集团大同煤炭运销南郊乔村发运站', 'RFC', '铁路集运站编码库', '25', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('e60df1f58ace4d218e2b3ec45df7f026', '502026', '大同煤矿集团大同煤炭运销南郊第三发运站', 'RFC', '铁路集运站编码库', '26', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('6742f619cabe4e84b2de5ddea45725a4', '502027', '中包晋宏', 'RFC', '铁路集运站编码库', '27', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('72d50e183a8f452db71bf426bcfb91d5', '502028', '大同市勤盛和煤业有限公司', 'RFC', '铁路集运站编码库', '28', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('8775df7637e04e39b234b046f5c03147', '502029', '山西晋宏实业有限公司大同公司', 'RFC', '铁路集运站编码库', '29', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('70defc319415435cb7023f104466706d', '502030', '大同煤矿集团大同煤炭运销南郊有限公司', 'RFC', '铁路集运站编码库', '30', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('8034730009f2401f85a5b83b6bca8791', '502031', '大同市杏儿沟煤业有限责任公司', 'RFC', '铁路集运站编码库', '31', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('5f5917beb9aa46f9aa212af7b33ed416', '502032', '大同煤矿集团大同煤炭运销南郊社队发运站', 'RFC', '铁路集运站编码库', '32', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('24f1bc4da80248ad98c2da61f91531a5', '502033', '大同煤矿集团大同煤炭运销南郊胡家湾发运站', 'RFC', '铁路集运站编码库', '33', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('33fbfcd6d1ad4549ac52d5dddbffe58b', '502034', '大同市青磁窑煤矿', 'RFC', '铁路集运站编码库', '34', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('f3f172975d5a482d8861eb78913b0bd2', '502035', '大同市姜家湾煤炭集运站', 'RFC', '铁路集运站编码库', '35', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('c313b302a79c464fa55a8069438715fe', '502036', '大同煤矿集团大同煤炭运销云西发运站', 'RFC', '铁路集运站编码库', '36', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('bf2f8cdf23704c8c94dbca621a05f64e', '502037', '西韩岭联营储运站', 'RFC', '铁路集运站编码库', '37', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('1db381cc6f904947901f03758ba6d907', '502038', '大同市南郊城区发煤站', 'RFC', '铁路集运站编码库', '38', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('8bc2fc5d7022404da36d3678490e87eb', '502039', '山西兴远贸易有限公司', 'RFC', '铁路集运站编码库', '39', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('d66553da6472448c9ce27c504fb3c39f', '502040', '大同北站煤山专线', 'RFC', '铁路集运站编码库', '40', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('a338eb1890be4d71b8382eb4705d5dfd', '502041', '晋宏煤站', 'RFC', '铁路集运站编码库', '41', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b15ebe82cae34880bf9b08b7fc8cfd81', '502042', '大同南郊煤炭集运站', 'RFC', '铁路集运站编码库', '42', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('996e7e9a4ee44a0aa263c9405fe5162c', '502043', '圣水沟发煤站', 'RFC', '铁路集运站编码库', '43', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('2a0c6fa27231470a8e0c7c8356ed0026', '502044', '大同北站７、９道', 'RFC', '铁路集运站编码库', '44', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('d0376d5ef2034ee29a545e3d2fd5d295', '502045', '韩家岭发煤站', 'RFC', '铁路集运站编码库', '45', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('92b01b00b08a40db8d0e8e08d8dbb38d', '502046', '姜家湾煤炭集运站', 'RFC', '铁路集运站编码库', '46', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b869e1120a1a472385db4ec14660e0cb', '502047', '马口煤矿口泉煤站', 'RFC', '铁路集运站编码库', '47', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('0b660a41582e4ee5b6aa52d000d1af71', '502048', '山煤大同口泉出口煤发煤站', 'RFC', '铁路集运站编码库', '48', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('f30119a94af349f9a6035eb8a4ae0611', '502049', '同煤集团大同煤炭运销南郊联营口泉发运站', 'RFC', '铁路集运站编码库', '49', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('de71c5d581d24416a5382bb0c646b73c', '502050', '口泉', 'RFC', '铁路集运站编码库', '50', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b2078e44ded94d509b58966e937af252', '502051', '大同路通煤炭有限责任公司', 'RFC', '铁路集运站编码库', '51', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('72506b597a074c72ae6943340793e03c', '502052', '大同煤矿集团东周窑煤炭有限责任公司专用铁路', 'RFC', '铁路集运站编码库', '52', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b5cbd949419b46aea83b7ddde8170eff', '502053', '大同煤矿集团东周窑煤炭有限责任公司', 'RFC', '铁路集运站编码库', '53', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('9abbf2552cbc487a9b30e44f26d98750', '502054', '小京庄煤站', 'RFC', '铁路集运站编码库', '54', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b5a14614856149d9b2f5c437f65adc31', '502055', '左云县上张家坟煤站', 'RFC', '铁路集运站编码库', '55', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('2dd005c2e7054428bc75ff05f5c82d5b', '502056', '大同市张家场鹏宇恒达精煤有限责任公司', 'RFC', '铁路集运站编码库', '56', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('d935bff993a849a4908dfdf55b302f37', '502057', '左云县张家坟煤炭运销站', 'RFC', '铁路集运站编码库', '57', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('4650f783e6d5415e8e3ce7c052362b69', '502058', '大同市新高山能源有限公司', 'RFC', '铁路集运站编码库', '58', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('557e847fd0a545dba5cb4df74e2a7f9a', '502059', '大同市旧高山煤炭集运站', 'RFC', '铁路集运站编码库', '59', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('d56dc60864d94fd1a4d81bb8335ca167', '502060', '山西威达通新高山站', 'RFC', '铁路集运站编码库', '60', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('db1b68fdd5b842a9b40bfd37ffa5d285', '502061', '通联煤站', 'RFC', '铁路集运站编码库', '61', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('ba9d2b7b4070451b874b238cd97ade10', '502062', '旧高山煤炭集运站', 'RFC', '铁路集运站编码库', '62', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('8453bf4b7646445fa28cfd1e0f02413b', '502063', '鹊儿山煤炭集运站', 'RFC', '铁路集运站编码库', '63', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('80a09caabdeb4ab7a4c8daf058067cf2', '502064', '上张家坟煤站', 'RFC', '铁路集运站编码库', '64', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b2d0d00776e840d7a87b863e937f950d', '502065', '小京庄煤炭集运站', 'RFC', '铁路集运站编码库', '65', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('1415a2efe1b24221ba2546ec4de21937', '502066', '山西省大同县黄土坡煤站', 'RFC', '铁路集运站编码库', '66', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('7b7b2a07c5d24e708b38bbcc428b1fc1', '502067', '大同秦嘉湖东煤炭集运有限公司', 'RFC', '铁路集运站编码库', '67', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('4418dfd672a24d21ac61e80062ac21e1', '502068', '大同解家庄晋发运销有限公司', 'RFC', '铁路集运站编码库', '68', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('652d451c0fa34eeeb034faa370a88fac', '502069', '青磁窑煤矿', 'RFC', '铁路集运站编码库', '69', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('ceffadc5fba64025bdd75ef214f87be1', '502070', '大同市吴官屯煤业有限责任公司', 'RFC', '铁路集运站编码库', '70', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('a7991c5b75214a9781056bc9da5ef2d2', '502071', '大同站', 'RFC', '铁路集运站编码库', '71', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('77c397d7b11a436d9b90d5259bf4242f', '502072', '马武山煤炭集运站', 'RFC', '铁路集运站编码库', '72', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('5c0bdbcb705a4caab28abe13ca26ffaf', '502073', '大同古店发煤站', 'RFC', '铁路集运站编码库', '73', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('a2de4852de7c463da9818e2fdad4023e', '502074', '国新能源煤炭运销公司（口泉）', 'RFC', '铁路集运站编码库', '74', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('00d61c0fc4ad4f619ebeb96d8b051cef', '502075', '大同云冈煤炭运销公司', 'RFC', '铁路集运站编码库', '75', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('feb57a0706ba45b3b3602a5315014fea', '502076', '大同市矿业公司口泉发煤站', 'RFC', '铁路集运站编码库', '76', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b25117c9cbf34d128ee5f47cce208992', '502077', '大同市矿业公司平旺发煤站', 'RFC', '铁路集运站编码库', '77', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('956c0b822c3945fb9714fc14195fd34e', '502078', '大同煤炭投资管理公司', 'RFC', '铁路集运站编码库', '78', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('578199f7b9f847ed969dd16ec5ca1cc4', '502079', '大同市南郊塔山集运站', 'RFC', '铁路集运站编码库', '79', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('6c1fe9fb68234f3c8e25a44e7d950ac5', '502080', '在同煤矿集团忻州煤炭运销化北屯集运站', 'RFC', '铁路集运站编码库', '80', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('72ff408962f9414d9b53805566c985c1', '502081', '新白洞发煤站', 'RFC', '铁路集运站编码库', '81', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('333328feb8524f619c07897fa1984ad2', '502082', '大同煤炭运销矿区有限公司平旺煤站', 'RFC', '铁路集运站编码库', '82', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b11e0b28e36c43f7ac1fbeec10427e98', '502083', '大同煤矿集团大同煤炭运销矿区有限公司', 'RFC', '铁路集运站编码库', '83', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('882f8ab8983e4087b6b4df8fa042dc25', '502084', '大同市张寺窑煤站', 'RFC', '铁路集运站编码库', '84', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('60bb3d1127b44a629868b6a7dfd057a5', '502085', '大同市上深涧煤炭集运站', 'RFC', '铁路集运站编码库', '85', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('0116e00243814944b35de748eb4077c8', '502086', '转运岔线发煤站', 'RFC', '铁路集运站编码库', '86', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('9b19fcf3f49f47b890a5a39b17f08cf0', '502087', '上深涧煤站', 'RFC', '铁路集运站编码库', '87', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('8c29441113c64af6a7098551c2008f71', '502088', '黄土坡集运站１、４道', 'RFC', '铁路集运站编码库', '88', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('dd08f08ba54e4a6fa83145ab48294a2c', '502089', '机务段新装线', 'RFC', '铁路集运站编码库', '89', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('bc96156d7fe349638a15e8b577b78b12', '502090', '大同煤矿集团大同煤炭运销灵丘公司', 'RFC', '铁路集运站编码库', '90', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('52c20405c55f4539a48e3961be780004', '502091', '大涧', 'RFC', '铁路集运站编码库', '91', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('7d100cb7a359422ba33f96d6f4a3844c', '502092', '大涧站装车点', 'RFC', '铁路集运站编码库', '92', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('5464b9cb51e9498abb68af4e07fd2ca9', '502093', '湖东倒装补袖联营煤站', 'RFC', '铁路集运站编码库', '93', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('87bf4892e48f4f36bcb1d02a223bc83f', '502094', '解家庄集运站', 'RFC', '铁路集运站编码库', '94', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('b8f7406d364c40a7b33941f65191fa8c', '502095', '大寨发煤站', 'RFC', '铁路集运站编码库', '95', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('53d132a1ca7e48f2a2568c17eed2871c', '502096', '桃坡', 'RFC', '铁路集运站编码库', '96', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('289f068898134d5982b26b037a059f40', '502097', '三都煤站', 'RFC', '铁路集运站编码库', '97', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('13eae1c30cc445e5a1f875ecc09d4252', '502098', '白羊墅煤站', 'RFC', '铁路集运站编码库', '98', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('124cc333be19430baa09f6b728454186', '502099', '华佳发煤站', 'RFC', '铁路集运站编码库', '99', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('75fa01e62f4b42ffa83cb0afcd496d4c', '502100', '木材', 'RFC', '铁路集运站编码库', '100', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('aa965bd8808d4cd5bd728613d2782319', '502101', '义井', 'RFC', '铁路集运站编码库', '101', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('3959a50b6d64446da4db7751783ba3ea', '502102', '上烟', 'RFC', '铁路集运站编码库', '102', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('088b3c5696b6452185acc31e32ad576e', '502103', '赛鱼', 'RFC', '铁路集运站编码库', '103', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('dfe409dc72e44b2d83160498a4ac89bc', '502104', '乱流集运站', 'RFC', '铁路集运站编码库', '104', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('0c5d2c8faa8c41649fad60baca32bb23', '502105', '东关发煤站', 'RFC', '铁路集运站编码库', '105', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('a77aba786c8d4a30860f7bc8538ff945', '502106', '宁艾', 'RFC', '铁路集运站编码库', '106', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('cc3f1e98a83640b89c890693b574b4d5', '502107', '乱流', 'RFC', '铁路集运站编码库', '107', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('8b5755657fe743bebff0b8ae726ceaf2', '502108', '魏家坡集运站', 'RFC', '铁路集运站编码库', '108', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('aeaf46bda7084a2bb4d1b5ad0047ee49', '502109', '沁县发煤站', 'RFC', '铁路集运站编码库', '109', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('16cc3ffd650e4a448e1689ae49a816ce', '502110', '长治市金属材抖有限公司', 'RFC', '铁路集运站编码库', '110', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('2fc41ecfe73a4feaa71eb4e72f17e7c8', '502111', '堠北庄煤站', 'RFC', '铁路集运站编码库', '111', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('d624e27614724ee980b953d4fad718e2', '502112', '马厂煤炭集运站', 'RFC', '铁路集运站编码库', '112', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('d22341ecf2af4ddd8474ba68a04d9d9a', '502113', '三元中能专线', 'RFC', '铁路集运站编码库', '113', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('1fb7a122b6a64f7ba85c5757e831ac31', '502114', '长治集运站', 'RFC', '铁路集运站编码库', '114', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('9c3f659843de42089759cffa3aaea469', '502115', '关村集运站', 'RFC', '铁路集运站编码库', '115', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('195446c4dbe44096ae472cb807e40f45', '502116', '司法部煤管局', 'RFC', '铁路集运站编码库', '116', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('b207d0777bd141cb8e6d597cf80f2de1', '502117', '长治联运线', 'RFC', '铁路集运站编码库', '117', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('167bc45a970d44c08dda70924c87b19a', '502118', '大辛庄站', 'RFC', '铁路集运站编码库', '118', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('984e65b0d3d946c3ba9ee1d28c046343', '502119', '长治北', 'RFC', '铁路集运站编码库', '119', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('6719932235b64716b3fc58f6e6fcb279', '502120', '城区集运站', 'RFC', '铁路集运站编码库', '120', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('4ef373848fb54cc7983a19760a65e45c', '502121', '长治城区联运公司', 'RFC', '铁路集运站编码库', '121', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('6788ed6f5d7d49dca4c9e52b82f13e11', '502122', '虒亭发煤站', 'RFC', '铁路集运站编码库', '122', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('ddaf1ec7523a49a38698a72de45bba1f', '502123', '襄垣发煤站', 'RFC', '铁路集运站编码库', '123', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('5ed027adae214ec38a9dfe523ac9ad40', '502124', '五阳发煤站', 'RFC', '铁路集运站编码库', '124', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('340c9ffeaa73481fb7c09c21f17093c8', '502125', '襄垣九七二煤站', 'RFC', '铁路集运站编码库', '125', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('5fde562f90b3442f9e8dcb927bbebb47', '502126', '夏店发煤站', 'RFC', '铁路集运站编码库', '126', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('559a6e995c4b45e39c5f2f2e39727f5c', '502127', '五阳车站站内五道', 'RFC', '铁路集运站编码库', '127', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('88eaa9e19ead41499cd592f30db3b9d1', '502128', '襄垣县出口公司', 'RFC', '铁路集运站编码库', '128', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('66097f93c14c4e20b484d94acd1b69e3', '502129', '经坊集运站', 'RFC', '铁路集运站编码库', '129', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('e40deccd1e2e4386a560a98f1a943186', '502130', '小宋发煤站', 'RFC', '铁路集运站编码库', '130', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('ad290b59dbf843d39b08b43f0f4f0279', '502131', '郝家庄煤站', 'RFC', '铁路集运站编码库', '131', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('1fb51303b6944a0a876b05b15c31ba21', '502132', '王庄集运站', 'RFC', '铁路集运站编码库', '132', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('138fe1a937dd4ceda5d1fd788c11ac54', '502133', '任家庄集运站', 'RFC', '铁路集运站编码库', '133', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('716e59937d614468bfa9153018577518', '502134', '经坊煤矿', 'RFC', '铁路集运站编码库', '134', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('3e3545f437dc4b6cbe88277f58dcd289', '502135', '东田良发煤站', 'RFC', '铁路集运站编码库', '135', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('18a978b51fac44b49b9e368a357f4062', '502136', '长治市华晟荣矿业有限公司', 'RFC', '铁路集运站编码库', '136', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('cbfd233430954a8b8ca83d4189b29ec8', '502137', '庄头发煤站', 'RFC', '铁路集运站编码库', '137', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('273bdcfe3ea4407d9d7d570ae5802bea', '502138', '霍尔辛赫', 'RFC', '铁路集运站编码库', '138', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('748a4d56f22843db840f23b081177dd8', '502139', '长子站', 'RFC', '铁路集运站编码库', '139', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('3a03ea1b1c1a43f6af75fa32e67d25fc', '502140', '潞城发煤站', 'RFC', '铁路集运站编码库', '140', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('6cbb2138ba3b4b55b018852b61a3d762', '502141', '店上煤站', 'RFC', '铁路集运站编码库', '141', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('2eace31f697f42a9a8ac36efb8b1477a', '502142', '微子镇煤炭集运站', 'RFC', '铁路集运站编码库', '142', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('59e80fce0f064d56895651bfc04bad3f', '502143', '潞宝战', 'RFC', '铁路集运站编码库', '143', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('bce5beda435c41a7be7845a5fc1ac702', '502144', '北社发煤站', 'RFC', '铁路集运站编码库', '144', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('0ed9be960ecf472b85d06c5d57119147', '502145', '武乡发煤站', 'RFC', '铁路集运站编码库', '145', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('2cc6376749154f19bfcf0dcaebff57af', '502146', '墨镫发煤站', 'RFC', '铁路集运站编码库', '146', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('ebce01dcca4c412a989dd7268cfc6df5', '502147', '黎城发煤站', 'RFC', '铁路集运站编码库', '147', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('45df983707014729a45073821e063606', '502148', '水洋发煤站', 'RFC', '铁路集运站编码库', '148', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('9bdaf14df1194bf6bfe5160f232af2d9', '502149', '交口发煤站', 'RFC', '铁路集运站编码库', '149', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('eb13952d7c664f7cbd668602bc1670b2', '502150', '长北集店', 'RFC', '铁路集运站编码库', '150', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('f85ec2d1066c4d0493e32fdd3768c2fa', '502151', '左权', 'RFC', '铁路集运站编码库', '151', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('3dab6a10b7ec488d9446f36944542f4f', '502152', '王湖站', 'RFC', '铁路集运站编码库', '152', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('3f90760a9d3846f1aaf0d20d498f33b2', '502153', '孝南站', 'RFC', '铁路集运站编码库', '153', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('5c31458b05964cb99ea8be253ce4bb60', '502154', '会里站', 'RFC', '铁路集运站编码库', '154', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('101b7fe4e80048858b7f6b798607322f', '502155', '金星', 'RFC', '铁路集运站编码库', '155', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('0d9980b5bb2c472686784872fbc78768', '502156', '泽州板桥煤站', 'RFC', '铁路集运站编码库', '156', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('f71c49810fc74b888184ebcbe077ea87', '502157', '十二道南北板桥发煤站', 'RFC', '铁路集运站编码库', '157', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('44af7752084447a98024ba2e5ab7ce69', '502158', '三家店发煤站', 'RFC', '铁路集运站编码库', '158', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('66c1c955f214470789dd3af84d16d709', '502159', '晋城北专线发煤站', 'RFC', '铁路集运站编码库', '159', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('4e6e0236293e457e873ac72832369c90', '502160', '鑫泽公司煤站', 'RFC', '铁路集运站编码库', '160', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('0c7ed822acde4ea4b709754574752fb6', '502161', '武庄沟煤站', 'RFC', '铁路集运站编码库', '161', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('5d172725a4ea419e914295c0fac30848', '502162', '乡镇晋北煤站', 'RFC', '铁路集运站编码库', '162', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('dbdf571161bd4360b5533376681cde0c', '502163', '金村购销转运站', 'RFC', '铁路集运站编码库', '163', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('53d0bfc0c06d4344bc8bdfb6f6695299', '502164', '宏泰公司煤站', 'RFC', '铁路集运站编码库', '164', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('b963cc52026745afa915216d23ba7d57', '502165', '东元庆集运站', 'RFC', '铁路集运站编码库', '165', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('16f01284915346e390674bd7155c8cf0', '502166', '城区西武匠煤站', 'RFC', '铁路集运站编码库', '166', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('7af07ee5e2ca4a2d91886de27011a186', '502167', '晋郊煤站', 'RFC', '铁路集运站编码库', '167', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('83ee612d9e5a4f36a95bba3f82daf9c8', '502168', '申匠煤炭集运站', 'RFC', '铁路集运站编码库', '168', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('561dd9ed70874beab6c5cf33f2fe07ea', '502169', '南王庄集运站', 'RFC', '铁路集运站编码库', '169', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('9237bd94c5a34971a80cd8cbaf72f762', '502170', '米山煤站', 'RFC', '铁路集运站编码库', '170', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('bc03b815201a4278aa05c0f9954e24a6', '502171', '赵庄煤矿', 'RFC', '铁路集运站编码库', '171', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('2133d6840bf54be3bc821db7c2712539', '502172', '南陈铺煤炭集运站', 'RFC', '铁路集运站编码库', '172', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('0ae09423ab7e4b1c85afe391178dd203', '502173', '兰花集运站', 'RFC', '铁路集运站编码库', '173', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('e376cc9a9b1a4cbfbe97ebc56be9da3e', '502174', '晋泽通煤站', 'RFC', '铁路集运站编码库', '174', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('b013bb6e8e6a40028aa00682ad2225d0', '502175', '西阳村东九道发煤站', 'RFC', '铁路集运站编码库', '175', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('a97805c7e9914efbb9ed353f49e78f94', '502176', '八甲口综合集运站', 'RFC', '铁路集运站编码库', '176', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('117572abc3f34f8badffceef0007ab0b', '502177', '阳城公司煤站', 'RFC', '铁路集运站编码库', '177', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('b9978d5fed7c4bc9997bc27fe5bc8f82', '502178', '晋隆八甲口煤站', 'RFC', '铁路集运站编码库', '178', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('99d66f42240e49fcaaaf7a489d6ac37e', '502179', '晋城上孔煤站', 'RFC', '铁路集运站编码库', '179', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('6e1e1cc81e9f4fd59ae9933af4cb3c66', '502180', '上孔集运站', 'RFC', '铁路集运站编码库', '180', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('fb7e4c2d646b44f38a6f2b89c0ab9172', '502181', '亚美大宁', 'RFC', '铁路集运站编码库', '181', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('b084102ff55b4a34a8242d20cf4bcb5e', '502182', '阳城县下孔货运站', 'RFC', '铁路集运站编码库', '182', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('6cc347e8c8d24974b49ad479e42a496e', '502183', '阳城煤运铁路销售中心', 'RFC', '铁路集运站编码库', '183', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('0c9be75d61bd4946a00e33def108b714', '502184', '阳城货场发煤站', 'RFC', '铁路集运站编码库', '184', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('64d3e0560ed3484c9035e2635443f8a3', '502185', '武安发煤站', 'RFC', '铁路集运站编码库', '185', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('dac5839a7b224314b33d3100f8a0f7d2', '502186', '屯城煤炭集运站', 'RFC', '铁路集运站编码库', '186', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('ed91263a47204741bbbf4c8e43348ed1', '502187', '沁和公司嘉峰煤炭集运站', 'RFC', '铁路集运站编码库', '187', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('3f72b8a0da5b439bb9df736edc21f96c', '502188', '兰金发煤站', 'RFC', '铁路集运站编码库', '188', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('899e27f73ec44915b9647120d380c6b5', '502189', '嘉峰煤运集运站', 'RFC', '铁路集运站编码库', '189', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('80426be22f8f42d5bcf00c5aeef84261', '502190', '沁水裕丰站', 'RFC', '铁路集运站编码库', '190', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('22cfa2afe0854082b83a259254eff25c', '502191', '沁水煤站', 'RFC', '铁路集运站编码库', '191', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('28dc9ed6815e4f7cbfe812261926257a', '502192', '端氏', 'RFC', '铁路集运站编码库', '192', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('dab5206bac1044149f5ee7453b2fd7e1', '502193', '朔州市晋贸通储运有限公司', 'RFC', '铁路集运站编码库', '193', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('797fcb229437455eb21eeb91e86af351', '502194', '朔州市兴安煤炭投资有限公司', 'RFC', '铁路集运站编码库', '194', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('883d96436895492ea1d4ee170a55b184', '502195', '朔州市国发兴业煤炭有限公司', 'RFC', '铁路集运站编码库', '195', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('95062fd24dab47c58108f8854cff6106', '502196', '东江能源有限公司', 'RFC', '铁路集运站编码库', '196', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('573b51ecaa424555b01ef427f714ab55', '502197', '山西智龙煤制品有限公司朔州分公司', 'RFC', '铁路集运站编码库', '197', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('9a4964d89f3145e1b1449b7c18ff8c95', '502198', '山西银丰煤炭运销有限公司', 'RFC', '铁路集运站编码库', '198', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('aedd97a995884d15a1a095871fff34ba', '502199', '朔州东方长宏能源发展有限公司', 'RFC', '铁路集运站编码库', '199', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('398e43e6b9124d0b9c7879a9bbf4d6c7', '502200', '朔州市宏运能源有限公司', 'RFC', '铁路集运站编码库', '200', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('aab59e477d43436982158034d2bcbd3d', '502201', '山西葫芦堂能源投资有限公司', 'RFC', '铁路集运站编码库', '201', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('37ae51b63c6a408fb9a941eaf5325b15', '502202', '朔州煤炭运销刘家口有限公司', 'RFC', '铁路集运站编码库', '202', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('f72c8a501a3d47d090efc30af019a86e', '502203', '大同煤矿集团煤炭运销朔州有限公司', 'RFC', '铁路集运站编码库', '203', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('bdaa04fd60494bcb8ea1d7983871a6f5', '502204', '恒利工贸开发有限公司朔州分公司', 'RFC', '铁路集运站编码库', '204', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('d59abf5a2d804547909e0699e01bcbcb', '502205', '安庄发煤站', 'RFC', '铁路集运站编码库', '205', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('01a2e6df579745999239e7391a3949ad', '502206', '前寨发煤站', 'RFC', '铁路集运站编码库', '206', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('75aa747b172741939e9b0eb0dc655cf2', '502207', '金朔煤炭集运站', 'RFC', '铁路集运站编码库', '207', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('e1a2a8a9b1614f53a80bb468817ada4b', '502208', '中煤杨涧煤业有限公司', 'RFC', '铁路集运站编码库', '208', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('309ebd25b32046fe8495f7779bd09bfe', '502209', '同煤朔州大新煤站', 'RFC', '铁路集运站编码库', '209', null, 'admin', '2016-10-12 17:32:56', 'admin', '2016-10-12 17:32:56', null, '0');
INSERT INTO `sys_dict` VALUES ('2dc030f5c2134780b7dbb47b431b9a6f', '502210', '山西煤炭运销集团朔州有限公司', 'RFC', '铁路集运站编码库', '210', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('44c562da6da344f092b647457da7e18f', '502211', '大同煤矿集团朔州矿业公司大新煤炭集运站', 'RFC', '铁路集运站编码库', '211', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('e3eee656b4d740ee90bc6fc8fbb792e9', '502212', '大同煤矿集团朔州矿业公司马邑煤炭集运站', 'RFC', '铁路集运站编码库', '212', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('5ec59a7aea7c4c2497a927c17f89be39', '502213', '大同煤矿集团朔州矿业公司元子河运销站', 'RFC', '铁路集运站编码库', '213', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('93a65598f2c54425bf9306b513ef2aba', '502214', '太原聚瑞能源有限责任公司朔州经销部', 'RFC', '铁路集运站编码库', '214', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('050cb841ab7349aa95de89b7f0fbbdce', '502215', '朔州中煤煤电工业有限公司', 'RFC', '铁路集运站编码库', '215', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('3f5704a019674c428e6f39979e1df200', '502216', '山西集华兴业煤炭有限公司', 'RFC', '铁路集运站编码库', '216', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('395ce71f6ad6412eb0d598c97a629e76', '502217', '山西巨鑫能源发展有限公司朔州分公司', 'RFC', '铁路集运站编码库', '217', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('e22bc4b1d254484d91f5fc27d3902e0a', '502218', '山西西易统配煤炭销售有限公司', 'RFC', '铁路集运站编码库', '218', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('cde358d7d604443f9ec844102880fa83', '502219', '中煤大同有限责任公司', 'RFC', '铁路集运站编码库', '219', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('aaf1b154dc374e6bb9137ac894e1b7be', '502220', '朔州新开渊储运有限公司', 'RFC', '铁路集运站编码库', '220', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('410eeff8871d4c2196886cbe2b319b4f', '502221', '朔州市木瓜界煤炭集运有限公司', 'RFC', '铁路集运站编码库', '221', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('d2056709666f4203a0d2fd027f1d9d68', '502222', '同煤朔州公司芦家窑发煤站', 'RFC', '铁路集运站编码库', '222', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('2c774a22b40d4dd2a5b12a216f3ed542', '502223', '大同煤矿集团煤炭运销朔州有限公司井坪发煤站', 'RFC', '铁路集运站编码库', '223', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('cacf50284aef403b98d2723ffd56e5c4', '502224', '山西煤运省外煤焦经销有限公司朔州井坪煤炭集运站', 'RFC', '铁路集运站编码库', '224', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('1e5306188f4f466793be78e78a741620', '502225', '朔州市芦西选煤有限公司', 'RFC', '铁路集运站编码库', '225', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('2e90d3b72e3d4caf9520b7ec5e015911', '502226', '山西华昱能源有限公司', 'RFC', '铁路集运站编码库', '226', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('2d0b8f73c7f74cb59ef63de3c009a0b7', '502227', '山西亨元通煤制品加工有限公司', 'RFC', '铁路集运站编码库', '227', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('9432165ab4ed4ef784475ce54bccfcd0', '502228', '同煤朔州公司', 'RFC', '铁路集运站编码库', '228', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('aef5248c3c844d78b69bc37041db9693', '502229', '大同煤矿集团煤炭运销朔州有限公司东榆林发煤站', 'RFC', '铁路集运站编码库', '229', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('0e7255d46cab46f28d9e256fb7edfa34', '502230', '山西朔贸同煤炭有限公司', 'RFC', '铁路集运站编码库', '230', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('28c4fe3bfd3345868ebd9cdb42eb4681', '502231', '大同煤矿集团煤炭运销朔州有限公司北周庄发煤站', 'RFC', '铁路集运站编码库', '231', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('d7439fde3e6e4468bc19d1563cc1c9fa', '502232', '同煤朔州右玉公司东榆林煤站', 'RFC', '铁路集运站编码库', '232', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('07b7012d516d4e32ba797d5a0405b731', '502233', '山西瑞启煤炭运销有限公司', 'RFC', '铁路集运站编码库', '233', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('a226bee96bca4766a33bb2b7f4be294c', '502234', '山西岩伟锋煤炭洗选有限公司', 'RFC', '铁路集运站编码库', '234', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('810196217c4f44ddadedbe6594f901b8', '502235', '大同煤矿集团朔州矿业公司岱岳煤炭运销站', 'RFC', '铁路集运站编码库', '235', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('23e626f4b05f4b44a0d836c8f775e9df', '502236', '山西观音堂煤炭运销有限公司', 'RFC', '铁路集运站编码库', '236', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('ae82939bbbfc424a93189765b5bae966', '502237', '山西中煤顺通煤业有限责任公司', 'RFC', '铁路集运站编码库', '237', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('aa3a4583ddbc41de98ea21baa58ad130', '502238', '山西汇力丰能源开发有限公司', 'RFC', '铁路集运站编码库', '238', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('c5196d9d67a64390b306c306d9824e1c', '502239', '怀仁联顺玺达煤炭销售有限公司', 'RFC', '铁路集运站编码库', '239', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('82440511b1e944e89c474daf0f66ed5a', '502240', '山西华昱能源有限公司金沙滩分公司', 'RFC', '铁路集运站编码库', '240', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('8b717465c84e45718d1632bc6655afc7', '502241', '朔州市下寨煤业综合加工厂', 'RFC', '铁路集运站编码库', '241', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('11088f9e8e2e433aad1d4705e617644f', '502242', '山西煤炭进出口集团朔州公司大峪口选煤厂', 'RFC', '铁路集运站编码库', '242', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('759f6921c0c442359995e6a86ec16ecd', '502243', '南窑出口煤站', 'RFC', '铁路集运站编码库', '243', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('248657edb514476ca3e3a0f403df9e02', '502244', '山西恒源伟业能源有限公司', 'RFC', '铁路集运站编码库', '244', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('1e78997885784e70a9e04fd0643037e2', '502245', '大同煤矿集团煤炭运销朔州有限公司宋庄煤炭运销站', 'RFC', '铁路集运站编码库', '245', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('9da96317348849babefcebcd06966087', '502246', '峙峰山煤矿', 'RFC', '铁路集运站编码库', '246', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('c864b44db81f46e49e7270fad0180116', '502247', '山西联友洗煤有限公司', 'RFC', '铁路集运站编码库', '247', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('8a954fa4669d4059b8184148c689abb5', '502248', '山西怀仁中能芦子沟煤业有限公司', 'RFC', '铁路集运站编码库', '248', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('327063165862483093f80c40608b4e0d', '502249', '山西国怀精煤有限公司', 'RFC', '铁路集运站编码库', '249', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('412b4198f30e4ad2acf250956c8c3044', '502250', '山西省怀仁县南窑煤炭集运站', 'RFC', '铁路集运站编码库', '250', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('f9b3289212ff47d4b4a09449b8d21020', '502251', '大同县安华福盛能源有限公司', 'RFC', '铁路集运站编码库', '251', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('c102a48989064e3bbb8fca5e4446581a', '502252', '山西省朔州市小峪煤炭发运有限公司', 'RFC', '铁路集运站编码库', '252', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('70ec194ffc59424583c5c256d105ebb2', '502253', '大同煤矿集团朔州矿业公司南窑出口煤站', 'RFC', '铁路集运站编码库', '253', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('3fa97011a32847e289d5f6471789f715', '502254', '朔州矿业公司金沙滩煤炭集运站', 'RFC', '铁路集运站编码库', '254', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('df6e7de6a4d84a8e8c3f9483717a7ef2', '502255', '山西集华兴业煤炭有限公司怀仁集运站', 'RFC', '铁路集运站编码库', '255', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('b254050d075b40d095bc77aba38732b5', '502256', '朔州华阳煤炭有限公司', 'RFC', '铁路集运站编码库', '256', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('9299c482844447b99d24140eadcf9303', '502257', '山西中联煤业有限公司', 'RFC', '铁路集运站编码库', '257', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('7a2c5013f6274b4685203087f4a0a01c', '502258', '山西煤炭物流发展有限公司', 'RFC', '铁路集运站编码库', '258', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('4fb4de1a6b94484da4311c2d06c22e03', '502259', '煤炭运销总公司忻州有限公司阳方口集运站', 'RFC', '铁路集运站编码库', '259', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('21fbd40d79334561b59a0eeea427740b', '502260', '同煤运销总公司忻州宁武公司', 'RFC', '铁路集运站编码库', '260', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('7003f0c784784ddc92d1ea6a1a199d32', '502261', '山西源通煤焦运销有限公司', 'RFC', '铁路集运站编码库', '261', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('3a4d58d4bea14b52b7466b53115b1dc3', '502262', '同煤煤炭运销总公司忻州司宁武西站', 'RFC', '铁路集运站编码库', '262', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('2481f23acdcd46d3abc7c8e9801dc133', '502263', '忻州市煤炭集运公司马营海站', 'RFC', '铁路集运站编码库', '263', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('aa45e7f4d19b4f459cdcc8fde4e906a7', '502264', '宁武化北屯发煤站', 'RFC', '铁路集运站编码库', '264', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('ac9b57b88a5a40cea366a5be45ed7681', '502265', '静乐公司化北屯发煤站', 'RFC', '铁路集运站编码库', '265', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('1eabde7e060741048268cfafe3c42914', '502266', '山西煤炭进出口集团忻州公司', 'RFC', '铁路集运站编码库', '266', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('e47af0459b9c4525a35222c4e901b799', '502267', '同煤忻州有限公司神池公司', 'RFC', '铁路集运站编码库', '267', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('fccd90e38ff4476cbcb6e6ff54b3c02f', '502268', '同煤忻州有限公司河曲公司', 'RFC', '铁路集运站编码库', '268', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('87b4d183d024441c9d027ed691c90037', '502269', '同煤忻州有限公司保德公司', 'RFC', '铁路集运站编码库', '269', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('b2a7cfa3d3c141b8811d2af5946eeaec', '502270', '同煤忻州有限公司偏关公司', 'RFC', '铁路集运站编码库', '270', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('e5fe8b66c37746ea83045de14f01d5ec', '502271', '同煤忻州有限公司五寨公司', 'RFC', '铁路集运站编码库', '271', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('98443ed356684cd5b08dbf38d66d3854', '502272', '刘元头发煤站(庄阴运销分处)', 'RFC', '铁路集运站编码库', '272', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('b60dcd98a489439db04691d94bc02725', '502273', '忻州地方铁路局', 'RFC', '铁路集运站编码库', '273', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('980257f6337642d99f7b08b3de960a62', '502274', '世德恒久', 'RFC', '铁路集运站编码库', '274', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('33b813616d294e0bbca95e1950e387d3', '502275', '神池乡镇煤炭运销公司', 'RFC', '铁路集运站编码库', '275', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('a868ca324ec84ee3bc3e543122ec2c52', '502276', '五寨乡镇煤炭运销公司', 'RFC', '铁路集运站编码库', '276', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('443efb78c4e5444496777cb392755bc8', '502277', '保德乡镇煤炭运销公司', 'RFC', '铁路集运站编码库', '277', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('0e2862d52b9c4608b4afc413dd94762c', '502278', '五寨隆泰煤焦化有限责任公司', 'RFC', '铁路集运站编码库', '278', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('4cddb1ac497c4ee79f86d49c57eff44f', '502279', '太原亚泰能源有限公司', 'RFC', '铁路集运站编码库', '279', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('2d1e3b43961746409c16291b55cb2f8f', '502280', '大同煤矿集团煤炭运销总公司忻州有限公司繁峙公司', 'RFC', '铁路集运站编码库', '280', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('dcfd930bcb704ebc9ca0135cc00bd537', '502281', '原平煤炭集运站', 'RFC', '铁路集运站编码库', '281', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('662c1d022b7d4db0960483316197fc43', '502282', '崞阳煤炭集运站', 'RFC', '铁路集运站编码库', '282', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('236101d45248482789208be00b1b0aa7', '502283', '里煤洞煤炭集运站', 'RFC', '铁路集运站编码库', '283', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('d289514343654e73b8b1f59a4deba66e', '502284', '轩岗煤销站', 'RFC', '铁路集运站编码库', '284', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('234496303e1d428e95badf59dd14ea36', '502285', '原平煤建发煤站', 'RFC', '铁路集运站编码库', '285', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('9b49456ee47444999c232054d36a8932', '502286', '石豹沟煤矿', 'RFC', '铁路集运站编码库', '286', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('942c0d36f5f8420e88d79ac8a5628955', '502287', '凯源公司', 'RFC', '铁路集运站编码库', '287', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('20774ace04d849c1a474b5389d856eee', '502288', '轩岗运销部', 'RFC', '铁路集运站编码库', '288', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('7dc764d63c164b6089363c6f07263ec7', '502289', '原平乡镇煤炭运销公司', 'RFC', '铁路集运站编码库', '289', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('9e216b49284b48e4950096952ad64f45', '502290', '山西国新能源集团瑞德煤炭有限公司', 'RFC', '铁路集运站编码库', '290', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('ace06b56125a4d12b7055930344f3100', '502291', '山西诚至煤焦有限责任公司', 'RFC', '铁路集运站编码库', '291', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('778e4d6d0b0c4cb79de3d119b9761dbb', '502292', '山西能源产业集团忻州公司原平发煤站', 'RFC', '铁路集运站编码库', '292', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('9c338ddda1ef40e99ef6c34af98a033b', '502293', '山西科煤生产经销公司', 'RFC', '铁路集运站编码库', '293', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('369e2c05e616435c89778758ea50abe1', '502294', '山西鑫隆源煤炭开发有限责任公司', 'RFC', '铁路集运站编码库', '294', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('5c3442bfe93c44b1ab7d2ed554345f25', '502295', '巨奥煤运有限公司', 'RFC', '铁路集运站编码库', '295', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('44d153cbe4cb4a4fbbc3b4580033a278', '502296', '河曲乡镇煤炭运销公司', 'RFC', '铁路集运站编码库', '296', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('77a64139a10545509001938e55518748', '502297', '山西国新能源集团宏达煤炭有限公司', 'RFC', '铁路集运站编码库', '297', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('173867f00867498ca0b78072d076f832', '502298', '山西黄河华源经贸有限公司', 'RFC', '铁路集运站编码库', '298', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('50e93b81da124c1c966e37adc8c54df0', '502299', '山西能源产业集团忻州公司五寨发煤站', 'RFC', '铁路集运站编码库', '299', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('03a8b5776b2141568b174fd3d42f92cc', '502300', '山西煤炭进出口集团安塘集运站', 'RFC', '铁路集运站编码库', '300', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('f1895365bd364e50b929732ff6fed211', '502301', '岢岚汇丰能源有限责任公司', 'RFC', '铁路集运站编码库', '301', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('c6ae570f6a3049f7b61069e55da634aa', '502302', '忻州市国新能源煤炭有限公司', 'RFC', '铁路集运站编码库', '302', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('ff1a400373b845a9b2fa010c44c2ea5a', '502303', '山西国新能源集团岢岚煤炭有限公司', 'RFC', '铁路集运站编码库', '303', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('e19c60c171554a049db33ede8dc85b99', '502304', '静乐公司忻州站', 'RFC', '铁路集运站编码库', '304', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('2e2882d4e7d84de98f2430f03b949265', '502305', '静乐公司田村站', 'RFC', '铁路集运站编码库', '305', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('cee446ac645e45a19082a4ff018d3906', '502306', '山西世德能源集团有限公司', 'RFC', '铁路集运站编码库', '306', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('440894f77f23481f93bae18e17fce7b0', '502307', '代县乡镇煤炭运销公司', 'RFC', '铁路集运站编码库', '307', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('9fa26f781def46f5a58106cd941cba66', '502308', '离石站8道', 'RFC', '铁路集运站编码库', '308', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('5e1e3819bb0642428ba446b2d7a87d59', '502309', '吕梁聚晟', 'RFC', '铁路集运站编码库', '309', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('b2fb4f0d6aec4adc9f422b282f8ab5aa', '502310', '柳沟村煤炭集运站', 'RFC', '铁路集运站编码库', '310', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('8af85b5d7877408d8507eea7f0a7e2ef', '502311', '山西孝柳铁路有限责任公司', 'RFC', '铁路集运站编码库', '311', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('1d9fcfce9847414cb140760ee1a010e5', '502312', '山西同盛煤业有限公司', 'RFC', '铁路集运站编码库', '312', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('aec6602756dd416f891e22dbc8e1b1b9', '502313', '接发线4道', 'RFC', '铁路集运站编码库', '313', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('10339f01e2fa4598a117bb950a731a63', '502314', '穆村站货场', 'RFC', '铁路集运站编码库', '314', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('6f0b0a09865d4ac29cc523326a0ddcce', '502315', '孝柳穆村站', 'RFC', '铁路集运站编码库', '315', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('364ccbf32a6c4a8d8a8665954ff33434', '502316', '山西省柳林同德焦煤有限公司', 'RFC', '铁路集运站编码库', '316', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('4286f47b12c64687a12cce203cd33fbb', '502317', '岢岚站', 'RFC', '铁路集运站编码库', '317', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('24c8730db8124834afee1c53ac74371d', '502318', '东义集运站', 'RFC', '铁路集运站编码库', '318', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('0f1952a1f342459d8a5bd3bd3ea9060f', '502319', '山西省楼俊孝南焦炭发运站', 'RFC', '铁路集运站编码库', '319', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('8a761f4f29d7434c8c40826f186fc80a', '502320', '金岩集团忠宝铁路发运站', 'RFC', '铁路集运站编码库', '320', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('501832feb97d45acac235a8bec9f98f8', '502321', '山西省离柳集团有限公司', 'RFC', '铁路集运站编码库', '321', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('af436b87d3134ac386ae538f2beab805', '502322', '孝义市春辉煤焦有限公司', 'RFC', '铁路集运站编码库', '322', null, 'admin', '2016-10-12 17:32:57', 'admin', '2016-10-12 17:32:57', null, '0');
INSERT INTO `sys_dict` VALUES ('659c7c53cd5d4a39905057c63a20c9cb', '502323', '孝义市金辉煤焦有限公司', 'RFC', '铁路集运站编码库', '323', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('19ab65fc895c4159b72c02b380c2c341', '502324', '孝义市洗煤厂', 'RFC', '铁路集运站编码库', '324', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('e02fec4dc97b404eb82e94135d456ae8', '502325', '山西中吕能源有限公司', 'RFC', '铁路集运站编码库', '325', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('7fb14a394c764a94a0ad3dcb0915cbef', '502326', '吕梁机焦物质经销公司孝西发煤站', 'RFC', '铁路集运站编码库', '326', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('3d6d0fc06ef54448bd2e90ea9b1ba24d', '502327', '孝义市乡镇企业精煤站', 'RFC', '铁路集运站编码库', '327', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('e1c9ebd23d2f4a6fb352567b0f4e8311', '502328', '孝义市红塔煤焦有限公司', 'RFC', '铁路集运站编码库', '328', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('b644a3699975470cb5b82c2325df7e96', '502329', '山西进出口公司', 'RFC', '铁路集运站编码库', '329', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('8d2ee3ce8eca4161b359393f6c500e48', '502330', '吕梁国新能源公司', 'RFC', '铁路集运站编码库', '330', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('bea81026a7ff4cfab874d5fcdc1a4dcf', '502331', '灵石站内10道', 'RFC', '铁路集运站编码库', '331', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('c3977b40ba7047b38d6cdc831a97d281', '502332', '灵石县荣辉矿业有限责任公司', 'RFC', '铁路集运站编码库', '332', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('405a556f08bc4fbe97eb95e99d7c6ca4', '502333', '晋中市永宏煤化有限公司', 'RFC', '铁路集运站编码库', '333', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('b451606468f140a08072fb5b37be3b55', '502334', '天行煤焦铁路专线', 'RFC', '铁路集运站编码库', '334', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('90598a8e644546528f1fbdbba6885108', '502335', '晋中市永宏煤化有限公司(二道）', 'RFC', '铁路集运站编码库', '335', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('cdf1767367374745a9e7d089a1cc32ac', '502336', '山西保利星辰煤焦化有限公司', 'RFC', '铁路集运站编码库', '336', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('a9478f16573942229aae0aa3ed13e373', '502337', '南关天行站台', 'RFC', '铁路集运站编码库', '337', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('20c6bdf47456450091025de554a0804f', '502338', '山西中宝富源煤炭运销有限公司', 'RFC', '铁路集运站编码库', '338', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('3b49e3714bb34c09995888590814a747', '502339', '山西通昌能源集团有限公司两渡煤炭发运站', 'RFC', '铁路集运站编码库', '339', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('8e043b1ecb194f468694591464119b3d', '502340', '山西省新晋老区经济发展有限公司', 'RFC', '铁路集运站编码库', '340', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('7d03f730e3d44d8399f3961abfaf14e1', '502341', '山西大力能源有限公司灵石南关煤焦发运站', 'RFC', '铁路集运站编码库', '341', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('c2ec2c162fbe45e78f511bd6eb75cbca', '502342', '山西晋煤实业股份有限公司', 'RFC', '铁路集运站编码库', '342', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('ee4dce6ebeb746bf93df426c50c43093', '502343', '山西天行煤焦运销有限公司1、2道', 'RFC', '铁路集运站编码库', '343', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('fb824ab7a2c547b2ab1da43294d6794e', '502344', '山西灵石县通宇实业有限公司两渡煤焦集运站', 'RFC', '铁路集运站编码库', '344', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('c56b83e8e24c42dbb8f38674be783ec1', '502345', '山西煤运明隆煤炭销售有限公司', 'RFC', '铁路集运站编码库', '345', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('451787fe72dc4ddeb5b3f743aa18decf', '502346', '山西省平遥煤化（集团）有限责任公司', 'RFC', '铁路集运站编码库', '346', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('1bceb97a97234c8b8d3462601bb3eb95', '502347', '山西省平遥鑫盛煤焦有限公司', 'RFC', '铁路集运站编码库', '347', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('4edf3ade861747feaad1085e3b2c8122', '502348', '寿阳县河底站', 'RFC', '铁路集运站编码库', '348', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('c27add4c627b4c4bacad31b211678743', '502349', '寿阳县东湾站', 'RFC', '铁路集运站编码库', '349', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('4102f07dcc4a46dab90389ac6902216c', '502350', '寿阳县平舒煤站', 'RFC', '铁路集运站编码库', '350', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('496f41eac23544f8a4a04e7a91a83fb7', '502351', '寿阳县草沟煤站', 'RFC', '铁路集运站编码库', '351', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('a6486c6f85d84f0299e16870b2b72924', '502352', '寿阳县010物资库（六道）', 'RFC', '铁路集运站编码库', '352', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('3fe988988963436bae395cc7a0c9d746', '502353', '寿阳县010物资库（三道）', 'RFC', '铁路集运站编码库', '353', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('93390b7ceadf455293a50b6a7da936b8', '502354', '寿阳县011物资库（三道）', 'RFC', '铁路集运站编码库', '354', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('c7ef87162822428b8cef9a3123b0ddac', '502355', '寿阳先行集运站', 'RFC', '铁路集运站编码库', '355', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('f12f358d4a3c40338452e105b614c8f0', '502356', '寿阳县物资库（一道）', 'RFC', '铁路集运站编码库', '356', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('70dbca479d434194880af934e585af8d', '502357', '寿阳县物资库（六道）', 'RFC', '铁路集运站编码库', '357', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('a78a20f902e547d8a7e96cae0d57a40e', '502358', '中储010库', 'RFC', '铁路集运站编码库', '358', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('dffd7e27be7c4c94a92ca1cf88779683', '502359', '晋中市阳涉煤炭运销有限公司寒王发运站', 'RFC', '铁路集运站编码库', '359', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('9164bbed566545bfba816995192b3dbe', '502360', '左权县国新能源煤炭有限责任公司', 'RFC', '铁路集运站编码库', '360', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('a6fcae4dc2b74c29b00e2b97ea28f23c', '502361', '左权县鸿泰发运有限公司', 'RFC', '铁路集运站编码库', '361', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('710f07adc3fe45c5bc2b543f1501e30c', '502362', '左权县聚晟能源有限公司', 'RFC', '铁路集运站编码库', '362', null, 'admin', '2016-10-12 17:32:58', 'admin', '2016-10-12 17:32:58', null, '0');
INSERT INTO `sys_dict` VALUES ('3c946dc292864fbd9d518e4933382c84', '502363', '介休站经营公司十四道', 'RFC', '铁路集运站编码库', '363', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('70bacbcf28614351bc7c388b3874d2d8', '502364', '介休市南铁物资仓储有限公司', 'RFC', '铁路集运站编码库', '364', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('906572dd9d4e4dca8c3c349b4e3fa790', '502365', '山西煤炭运销集团晋中介休有限公司发煤站', 'RFC', '铁路集运站编码库', '365', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('772ea266d11e4e4ba73a06897ccacf7f', '502366', '聚晟能源有限公司', 'RFC', '铁路集运站编码库', '366', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('ad9ce630969f4454a37e4f394ffbba9f', '502367', '阳涉煤炭运销有限公司', 'RFC', '铁路集运站编码库', '367', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('14c4fa89a3894435979301cc6fd7c4b9', '502368', '山西天和盛煤焦有限公司', 'RFC', '铁路集运站编码库', '368', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('2ecf714b47d94be2a0da7377dc5e0f5a', '502369', '山西省晋中市富康社会福利有限公司', 'RFC', '铁路集运站编码库', '369', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('1f1c05a7f1414fbfa845f5cbee152b79', '502370', '山西通宇煤炭销售有限公司', 'RFC', '铁路集运站编码库', '370', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('732b9c01157b41ce9e25d6c3d074a74b', '502371', '山西瑞康煤焦开发有限公司', 'RFC', '铁路集运站编码库', '371', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('793f92cdf8b24c50bcd705bb3ee52c4e', '502372', '山西国能煤炭经销有限责任公司和顺分公司', 'RFC', '铁路集运站编码库', '372', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('95c0434457d4452eb83604075ecdd08e', '502373', '山西省太阳石煤炭储运有限公司', 'RFC', '铁路集运站编码库', '373', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('3dd6c5c89cca4336be33f7e459f1cad5', '502374', '山西金润煤炭贸易有限公司', 'RFC', '铁路集运站编码库', '374', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('bad2fd6478754b25b3aa58a4ef0be39b', '502375', '晋中市阳涉煤炭运销有限公司泊里发运站', 'RFC', '铁路集运站编码库', '375', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('39c816614f5249beb857958aa99c5d2d', '502376', '山西源通煤焦运销有限责任公司和顺分公司', 'RFC', '铁路集运站编码库', '376', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('43b85f6d784040d687b0a51cab83e71d', '502377', '山西一缘统配煤炭销售有限公司', 'RFC', '铁路集运站编码库', '377', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('eee03d0642c34226b65c6a6da4d46094', '502378', '山西华鹏能源有限公司', 'RFC', '铁路集运站编码库', '378', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('8026978c741e43b18be2764e1f564cc6', '502379', '山西晶石天路煤炭运销有限公司', 'RFC', '铁路集运站编码库', '379', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('c8d8a18b49a547aeb925f8cee16198a1', '502380', '和顺会里集运站', 'RFC', '铁路集运站编码库', '380', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('11a72ae4fe4c46e297447e66a4ca30fd', '502381', '临汾地区煤炭运销公司什林发煤站', 'RFC', '铁路集运站编码库', '381', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('29bb5405977c429dba0f1e8fe82ffeb6', '502382', '山西省临汾市临汾北煤焦集运站', 'RFC', '铁路集运站编码库', '382', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('276b3ce72f6746eb9afd02321cda4405', '502383', '临汾北南铁集团腾飞公司联营货场', 'RFC', '铁路集运站编码库', '383', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('4db6c92587054acb9145ff4b9d7fe697', '502384', '山西省煤炭运销总公司临汾分公司尧都区公司（临汾北）', 'RFC', '铁路集运站编码库', '384', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('a55ecc477b7545a1871f8c23deb50c36', '502385', '汾西县煤炭运销公司什林发煤站', 'RFC', '铁路集运站编码库', '385', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('5a66219d1aed41068378ddf7a0a72419', '502386', '乡宁县煤炭运销公司临汾精煤发运站', 'RFC', '铁路集运站编码库', '386', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('87927983e9154f6a9bc9fc4bb04c78af', '502387', '大宁县煤炭运销公司临汾发运站', 'RFC', '铁路集运站编码库', '387', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('c87fc6c389804495abdb9ef5790b4ff0', '502388', '古县煤炭运销公司', 'RFC', '铁路集运站编码库', '388', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('896115cd963640468b6eeddc1c27891f', '502389', '山西焦化集团临汾洗煤有限公司', 'RFC', '铁路集运站编码库', '389', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('37ebb68bb48943329b010bcb12d63c9d', '502390', '山西中铁集源焦化有限责任公司', 'RFC', '铁路集运站编码库', '390', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('db760c3b048b44b989e75eab5d854d7b', '502391', '山西临汾铁流运销有限责任公司', 'RFC', '铁路集运站编码库', '391', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('ad24afdaa0af4129946deb16e6dcd005', '502392', '临汾地区煤炭运销公司', 'RFC', '铁路集运站编码库', '392', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('11135974adfc4e438a214fe940ec2c55', '502393', '蒲县煤炭运销公司', 'RFC', '铁路集运站编码库', '393', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('09efbc394d1d4d39945ff7f6efe456ac', '502394', '临汾市尧都区亚鑫达煤焦铁有限公司', 'RFC', '铁路集运站编码库', '394', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('810cd3043ef246cd983e3bf2fc2952e6', '502395', '铁路联营货场', 'RFC', '铁路集运站编码库', '395', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('3a146d8a46cc44e783103e52cc681d22', '502396', '临北发运站', 'RFC', '铁路集运站编码库', '396', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('42df03d2fe294a6c8c7e0cc9d03a813b', '502397', '临汾煤炭运销分公司临汾煤焦集运站', 'RFC', '铁路集运站编码库', '397', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('00a12712fc2041d4aa8b2aa9394dbf08', '502398', '临汾煤炭运销分公司临汾煤建发煤站', 'RFC', '铁路集运站编码库', '398', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('4c9d7d1b4c6444778a1bb9c0bd75393b', '502399', '山西省乡宁县地方国营台头煤矿', 'RFC', '铁路集运站编码库', '399', null, 'admin', '2016-10-12 17:32:53', 'admin', '2016-10-12 17:32:53', null, '0');
INSERT INTO `sys_dict` VALUES ('227f6cf1e82449a1ba4e149c4066ef1c', '502400', '洪洞发煤站', 'RFC', '铁路集运站编码库', '400', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('772890e5d0e946e38ffa5c24c0333016', '502401', '山西恒富煤化集团有限公司铁路发运站', 'RFC', '铁路集运站编码库', '401', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('88e491e419034f8e8390ab39f870e6a6', '502402', '洪洞县煤炭运销公司发煤站', 'RFC', '铁路集运站编码库', '402', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('e3f53191e04d4844b41360c786bf8270', '502403', '乡宁县兴源精煤有限责任公司', 'RFC', '铁路集运站编码库', '403', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('29aa819d92324e3ca5d1602fca8bdf1e', '502404', '山西恒富煤化集团有限公司', 'RFC', '铁路集运站编码库', '404', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('eff74eadca394c09aba39c0e6c54cfea', '502405', '赵城发煤站', 'RFC', '铁路集运站编码库', '405', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('50cde1f8ff8049faacd0a3450df42837', '502406', '洪洞县龙鑫焦化有限责任公司', 'RFC', '铁路集运站编码库', '406', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('52472fab33af43c194b0cf202c42cec1', '502407', '洪洞县赵城煤焦集运站', 'RFC', '铁路集运站编码库', '407', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('d34e13b2f9544b9c8850b515d7c4d8ef', '502408', '洪洞县官庄洗煤厂发煤站', 'RFC', '铁路集运站编码库', '408', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('4023a9c9163146ceb38a17616ca5cdd2', '502409', '临地煤运洪洞县磨头洗煤厂', 'RFC', '铁路集运站编码库', '409', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('a9b94676e74b41f4b042a7abcbde27a7', '502410', '赵城煤焦集运站', 'RFC', '铁路集运站编码库', '410', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('6336cf359f3049e0b970e1fa2524302a', '502411', '甘亭', 'RFC', '铁路集运站编码库', '411', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('80d292f90f21488587fad6cce8bcc179', '502412', '洪洞县佳盛煤焦有限公司', 'RFC', '铁路集运站编码库', '412', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('66bd63af0f7e477ca77990f626c55a4c', '502413', '张礼顺泰发煤站', 'RFC', '铁路集运站编码库', '413', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('c430100587dd4f10a487112087eb3f1e', '502414', '张礼发运站', 'RFC', '铁路集运站编码库', '414', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('ce8c0876b2e44471b68c2cd808b3e9a0', '502415', '张礼集运站', 'RFC', '铁路集运站编码库', '415', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('f4c8aab88ca14ef7b0e78fa301642cbe', '502416', '翼城县牢寨煤矿', 'RFC', '铁路集运站编码库', '416', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('d96f838eb6e944b19d4d46a4b1309aa2', '502417', '山西省煤炭运销总公司临汾分公司翼城县公司', 'RFC', '铁路集运站编码库', '417', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('92d916589a464ae587b1961b419b697c', '502418', '翼城东煤炭集运站', 'RFC', '铁路集运站编码库', '418', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('59e15f9a5a3e4089a50d640647fb81b4', '502419', '第五劳改支队候马精煤发运站', 'RFC', '铁路集运站编码库', '419', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('c5c60f6d10d9413a9e27bc6343be4684', '502420', '临汾地区煤炭运销公司侯马北煤焦发运站', 'RFC', '铁路集运站编码库', '420', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('c0a4e6c267c9433687bf198d26efccfc', '502421', '临汾地区煤炭运销公司北坞发煤站', 'RFC', '铁路集运站编码库', '421', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('2665af06b23e43ddb2b9a51383391a04', '502422', '侯马市煤炭运销公司侯马北发运站', 'RFC', '铁路集运站编码库', '422', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('f8aeaecf9b88403897eeea9bf72327e2', '502423', '山西省煤炭运销总公司临汾分公司侯北集运站', 'RFC', '铁路集运站编码库', '423', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('d2e86ec4af0e470e83f9676ff766e17c', '502424', '山西省贫困地区经济开发服务公司临汾分公司', 'RFC', '铁路集运站编码库', '424', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('3fca1b586a984a21beb586dc333091a3', '502425', '侯马北联二线', 'RFC', '铁路集运站编码库', '425', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('48db0f5ba1244596a052df4336593847', '502426', '运城分公司侯马北发煤站', 'RFC', '铁路集运站编码库', '426', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('cdeada6521944af2a2d235b87fb84479', '502427', '永济市公司侯马北发煤站', 'RFC', '铁路集运站编码库', '427', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('de8ecdc0a32841c8ac725b1c398153bb', '502428', '运城市诚达煤焦销售公司发煤站', 'RFC', '铁路集运站编码库', '428', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('7d5e264a197c46c899a32a5dc450311d', '502429', '万荣县公司侯马北发煤站', 'RFC', '铁路集运站编码库', '429', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('0709e35bf3d2467aa17b0620e93534a8', '502430', '临汾地区煤炭运销公司圣佛发煤站', 'RFC', '铁路集运站编码库', '430', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('e10fdb34a4ac484cbfb4899a1fad8163', '502431', '霍州煤炭工业公司三合煤焦发运站', 'RFC', '铁路集运站编码库', '431', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('07a6b8907c6c4aa3b2293821a76241ce', '502432', '山西省临汾地区什林煤矿发运站', 'RFC', '铁路集运站编码库', '432', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('8eb6fbc708f64fb3b5a5ac48ce4a24f9', '502433', '隰县煤炭运销公司', 'RFC', '铁路集运站编码库', '433', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('190a42a50e234d639ba762171e713acc', '502434', '霍州发运站', 'RFC', '铁路集运站编码库', '434', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('d5536879dd4b4fadb569f6dafea36e6a', '502435', '临汾地区煤炭运销分公司辛置发煤站', 'RFC', '铁路集运站编码库', '435', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('344e356b522c44af8b335fc42d783d2f', '502436', '霍州市煤炭运销公司辛置联营煤焦发运站', 'RFC', '铁路集运站编码库', '436', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('e24cf5fa551f4e0093ea70aaf472754a', '502437', '汾西县煤炭运销公司辛置发煤站', 'RFC', '铁路集运站编码库', '437', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('5b80ef0c1fd14928a92ae829283f4344', '502438', '霍州市辛置镇洗煤厂', 'RFC', '铁路集运站编码库', '438', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('263dd546c0e8449482d62b70816e9e71', '502439', '曲沃煤焦集运站', 'RFC', '铁路集运站编码库', '439', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('cddc03800eea45b3b667bc47fca0937f', '502440', '清涧二货场', 'RFC', '铁路集运站编码库', '440', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('6ff86b10ea8149c69426bef615fa5fa4', '502441', '河津煤站', 'RFC', '铁路集运站编码库', '441', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('3779548e37d942d49fe3dff706ade3e6', '502442', '太原铁路局侯马车务段清涧站', 'RFC', '铁路集运站编码库', '442', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('71ea2144efb54e96a4f1a102391186d6', '502443', '清涧发煤站', 'RFC', '铁路集运站编码库', '443', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('53642ba85f6f47509daf339e98214ca6', '502444', '杜家沟煤矿发煤站', 'RFC', '铁路集运站编码库', '444', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('a4ffd2b2fed54343890a1780237fe187', '502445', '运城分公司河津发煤站', 'RFC', '铁路集运站编码库', '445', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('3eff487064b04879aa73259996384914', '502446', '河津市公司米家湾集运站', 'RFC', '铁路集运站编码库', '446', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('e079baa86b234c6d9245c7a06f2d59c6', '502447', '运城分公司禹门口发煤站', 'RFC', '铁路集运站编码库', '447', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('83f05fd1280741468199047bd12de478', '502448', '新绛县公司发煤站', 'RFC', '铁路集运站编码库', '448', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('b5872557c042438c80e5c7e1d038ced5', '502449', '稷山县公司发煤站', 'RFC', '铁路集运站编码库', '449', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('d0cddabcc26149b8b7393c269c3bc4af', '502450', '稷山河东煤焦有限公司河东发煤站', 'RFC', '铁路集运站编码库', '450', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('bb414a3414eb4651afdf012cde8cee3f', '502451', '白家庄', 'RFC', '铁路集运站编码库', '451', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('83f0253909ef4cabb42b792e5ce4202d', '502452', '杜儿坪', 'RFC', '铁路集运站编码库', '452', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('bdaf317373a7446790c9fd8c9b48cadc', '502453', '西铭', 'RFC', '铁路集运站编码库', '453', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('65c91ed57c3542aa94b15b0494588984', '502454', '官地', 'RFC', '铁路集运站编码库', '454', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('7e335d4776384710b4a7e593971512ec', '502455', '东曲', 'RFC', '铁路集运站编码库', '455', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('f3bdb8593ee14840b4553a09dca161e7', '502456', '西曲', 'RFC', '铁路集运站编码库', '456', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('a0ba7e1141d5475db897ea1e03f7a8d7', '502457', '马兰', 'RFC', '铁路集运站编码库', '457', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('7e7b3811e3e542e186ed279012970ea9', '502458', '屯兰', 'RFC', '铁路集运站编码库', '458', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('67a3b6ebee2a464480990be25b7abf7b', '502459', '镇城底', 'RFC', '铁路集运站编码库', '459', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('a17673a9551e47428b04c87c1c3349cc', '502460', '岢岚站', 'RFC', '铁路集运站编码库', '460', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('75cbf7e276e74c70a96da813e0871aec', '502461', '孝南', 'RFC', '铁路集运站编码库', '461', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('4db4bc15b7f34da0be2dfe5878377e56', '502462', '两渡发煤站', 'RFC', '铁路集运站编码库', '462', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('631ae0ded70f460a902b5a7bb2ded33b', '502463', '中兴发煤站', 'RFC', '铁路集运站编码库', '463', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('34a4984e1e8e464b96a02548f0b57065', '502464', '灵石南关天行站台', 'RFC', '铁路集运站编码库', '464', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('8932dfad4d2a4ff3916a79df81554564', '502465', '张家庄', 'RFC', '铁路集运站编码库', '465', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('3f8b77f2eca444fa90340abe27898aea', '502466', '王家会集运站', 'RFC', '铁路集运站编码库', '466', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('9e3fea413f5e4222a4d9ead0a468d687', '502467', '辛置', 'RFC', '铁路集运站编码库', '467', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('d6bd37152e5142b5b1ff6470bfbfb416', '502468', '曹村', 'RFC', '铁路集运站编码库', '468', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('6bd67c1e8c6a4cfb8752808968219f71', '502469', '团柏', 'RFC', '铁路集运站编码库', '469', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('474a22b80f8f4930a4516cf615847488', '502470', '霍州', 'RFC', '铁路集运站编码库', '470', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('ed407eab1684402796cb193b1c83efeb', '502471', '圣佛', 'RFC', '铁路集运站编码库', '471', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('7950e9e7ea3d4ba3b1f6916688a2093c', '502472', '赵城', 'RFC', '铁路集运站编码库', '472', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('549a03713a3c4983b50efc3e791b916f', '502473', '洪洞发煤站', 'RFC', '铁路集运站编码库', '473', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('a5b6a270841e4d6c8fb53f70b20cb62e', '502474', '太谷', 'RFC', '铁路集运站编码库', '474', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('838eed7524c545a98359319d35bd5947', '502475', '青磁窑', 'RFC', '铁路集运站编码库', '475', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('9cbaad6a6d9d4c0fb98265263180559d', '502476', '姜家湾', 'RFC', '铁路集运站编码库', '476', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('6c665f81e21544c1a79a48831bf2a3a9', '502477', '杏儿沟', 'RFC', '铁路集运站编码库', '477', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('8b8565cc054d496fade2e5ece3286c53', '502478', '南阳坡', 'RFC', '铁路集运站编码库', '478', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('9c71a86af1634a22ae3c498a4ee0c658', '502479', '焦家寨', 'RFC', '铁路集运站编码库', '479', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('6efb8df11db04c66bc81e21fdd8e33ec', '502480', '刘家梁', 'RFC', '铁路集运站编码库', '480', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('485fddab95a64bc8ab56ba05e0b66952', '502481', '程坑', 'RFC', '铁路集运站编码库', '481', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('b7f587f81b214b8397ed75e37da459f2', '502482', '北坑', 'RFC', '铁路集运站编码库', '482', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('ddddfe68341b4c109b614db7b9fa85cd', '502483', '王坪', 'RFC', '铁路集运站编码库', '483', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('29b9b063eb4c4c9dafa8fd9879b1d7db', '502484', '小峪', 'RFC', '铁路集运站编码库', '484', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('397ab53d32ff4cad988bbe0b483942fb', '502485', '榆树底', 'RFC', '铁路集运站编码库', '485', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('4af4a3414c9c44d1a052ad2af2f3ff0c', '502486', '增子坊', 'RFC', '铁路集运站编码库', '486', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('322dfa63b8a94ae28c40e352f37df3de', '502487', '山西孝柳铁路有限责任公司朱家店站', 'RFC', '铁路集运站编码库', '487', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('b4fc58ee68804edc84eaaf5b204acff5', '502488', '山西蒲县煤业开发集团有限责任公司', 'RFC', '铁路集运站编码库', '488', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('9c3a1a526da74833bf104d784fbd625b', '502489', '漳村矿', 'RFC', '铁路集运站编码库', '489', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('105c55324a4c4a2499c851d89f76e1af', '502490', '司马矿', 'RFC', '铁路集运站编码库', '490', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('c6708c9938074fc6b2dfd6a3ca0338a8', '502491', '高河矿', 'RFC', '铁路集运站编码库', '491', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('0d740b0d15b642f4bec05d19b74aafbc', '502492', '石圪节矿', 'RFC', '铁路集运站编码库', '492', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('69c94ece1976414a9a904b6b36bf8d06', '502493', '常村矿', 'RFC', '铁路集运站编码库', '493', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('b68705cefb4047c7aeead9a5062d6bdc', '502494', '王庄矿', 'RFC', '铁路集运站编码库', '494', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('498f2b5599b5470192f9af7fac4434f7', '502495', '慈林山矿', 'RFC', '铁路集运站编码库', '495', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('36ec30afccae42a098d162bea475d91e', '502496', '夏店矿', 'RFC', '铁路集运站编码库', '496', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('da2972d9b0414d5e8429cdbf8a801e75', '502497', '郭庄矿', 'RFC', '铁路集运站编码库', '497', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('e82294fb20524c93b0a79798ba15511c', '502498', '余吾矿', 'RFC', '铁路集运站编码库', '498', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('32e9e63b6d504a628d5e363026202830', '502499', '李阳矿', 'RFC', '铁路集运站编码库', '499', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('2103e0bbc7cf4bec91bf78fde24cb539', '502500', '阳煤集团寿阳开元矿业有限责任公司专用铁路', 'RFC', '铁路集运站编码库', '500', null, 'admin', '2016-10-12 17:32:54', 'admin', '2016-10-12 17:32:54', null, '0');
INSERT INTO `sys_dict` VALUES ('0fb57fc3ffcf4d3088ebc968b6c7c5a4', '502501', '阳泉煤业集团寿阳煤炭销售有限公司专用铁路', 'RFC', '铁路集运站编码库', '501', null, 'admin', '2016-10-12 17:32:55', 'admin', '2016-10-12 17:32:55', null, '0');
INSERT INTO `sys_dict` VALUES ('1c65d7ca89904f51b79cc5ca2e560cbd', '503001', '折返段专用线', 'RSLC', '铁路专用线编码库', '1', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('10f102a21d5748b8a9f7383640e38173', '503002', '华润煤业专用线', 'RSLC', '铁路专用线编码库', '2', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('03bfe6f1cc7848b58272ebc9ea2b4015', '503003', '金业专用线', 'RSLC', '铁路专用线编码库', '3', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('5a0a8d8bc22e47b487aba7886dc9fb57', '503004', '古交矾石沟煤矿专用线', 'RSLC', '铁路专用线编码库', '4', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('e546c511ea72467f88693bb93208bba5', '503005', '山西晋煤铁路物流有限公司铁路专用线', 'RSLC', '铁路专用线编码库', '5', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('0ab475e9b9de4489aeb93467f116f637', '503006', '宗业专用线', 'RSLC', '铁路专用线编码库', '6', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('d986360393d045fb92d7008b2ad9a6ab', '503007', '东山煤矿专用线', 'RSLC', '铁路专用线编码库', '7', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('ca3255be82734b659e475a2068ce98b2', '503008', '古交煤运公司专用线', 'RSLC', '铁路专用线编码库', '8', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('b62915757afb43cdaa5a91dedac795d0', '503009', '山西经铁物贸公司专用线', 'RSLC', '铁路专用线编码库', '9', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('7856a7661bc5426fab3d2c9417ac1f87', '503010', '晋太专用线', 'RSLC', '铁路专用线编码库', '10', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('42feb36afc2b43caa41fcc61ecc757e1', '503011', '南郊城区专用线', 'RSLC', '铁路专用线编码库', '11', null, 'admin', '2016-10-12 17:34:17', 'admin', '2016-10-12 17:34:17', null, '0');
INSERT INTO `sys_dict` VALUES ('ac8d764ff00f408eaac5c0f26377ac4f', '503012', '韩家岭钰源专用线', 'RSLC', '铁路专用线编码库', '12', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('92b3fb4ed2b34709b7a61a94ecb06adc', '503013', '西韩岭连营储运站专用线', 'RSLC', '铁路专用线编码库', '13', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('b065d69f9eb94d83a5b64953431417da', '503014', '托皮专用线', 'RSLC', '铁路专用线编码库', '14', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('5d6c7c7d9dde4c73b70a6c1151eba237', '503015', '大同煤矿集团云冈制气焦化有限公司专用线', 'RSLC', '铁路专用线编码库', '15', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('756c460d766b43c6a560cb8ca7ce717d', '503016', '青羊湾专用线', 'RSLC', '铁路专用线编码库', '16', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('055fda19ab4e4679bdd45bfdbe8bd2a2', '503017', '通联专用线', 'RSLC', '铁路专用线编码库', '17', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('311b40f4201a47188242b44a33706785', '503018', '湖东专用线', 'RSLC', '铁路专用线编码库', '18', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('d679c6b0f1fb43feabc5a87edc66888a', '503019', '大同煤炭运销城区北站发运站专用线', 'RSLC', '铁路专用线编码库', '19', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('1d5d30d99608497b8927eafb4403695a', '503020', '大同三友专用线', 'RSLC', '铁路专用线编码库', '20', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('2da818bdb936429eb43d64b207fd4e0c', '503021', '雁木专用线', 'RSLC', '铁路专用线编码库', '21', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('2b43c4a2f9344cf7a45b816a19807d47', '503022', '大同市石料厂专用线煤站', 'RSLC', '铁路专用线编码库', '22', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('4bf5767dd3794061826aad4715c4b1c4', '503023', '矿区高胜专用线', 'RSLC', '铁路专用线编码库', '23', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('1935138966cf4d19be298d17583c72eb', '503024', '新高山能源专用线', 'RSLC', '铁路专用线编码库', '24', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('798278de0c704808ab78e542d30cc93a', '503025', '大阳泉矿专用线', 'RSLC', '铁路专用线编码库', '25', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('9fc8bb1e092b4e09a1396888a191014c', '503026', '义井矿专用线', 'RSLC', '铁路专用线编码库', '26', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('5760f7ef2695431491d3a9a27c7ef1d8', '503027', '康源能源有限公司专用线', 'RSLC', '铁路专用线编码库', '27', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('0888a8b65c6648e993887bd87c9fe696', '503028', '南寨煤矿专用线', 'RSLC', '铁路专用线编码库', '28', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('a9fd1935716141118e5e36aada35f00e', '503029', '联社西库专用线', 'RSLC', '铁路专用线编码库', '29', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('01472f0accee48978cc29026ba952f2c', '503030', '机务段专用线', 'RSLC', '铁路专用线编码库', '30', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('d3c77feb3b934910ab92f87d1aadf31e', '503031', '马厂专用线', 'RSLC', '铁路专用线编码库', '31', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('8e4a844458a04cc1a76a2d5a72736bb3', '503032', '三元煤业专用线', 'RSLC', '铁路专用线编码库', '32', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('6bad6e15e933478e9d014b5c8df0a645', '503033', '化轻公司专用线', 'RSLC', '铁路专用线编码库', '33', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('4c2ad003a44040a7a68a6076c51926b2', '503034', '首钢长治钢铁有限公司专用线', 'RSLC', '铁路专用线编码库', '34', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('14a33fb148cb48dfb290fd8ae0846ca7', '503035', '化工专用线', 'RSLC', '铁路专用线编码库', '35', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('4f71c86aead04e1ea3d8e859b5f95487', '503036', '明信专用线', 'RSLC', '铁路专用线编码库', '36', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('3feba8981d68413bac08c0d359a32ae1', '503037', '晋平煤业专用线', 'RSLC', '铁路专用线编码库', '37', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('f43b36b8af114073b94760fd708c52ed', '503038', '夏店站襄垣煤矿专用线', 'RSLC', '铁路专用线编码库', '38', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('717c3198666b4d06a2391874383a6aa9', '503039', '９７２专用线', 'RSLC', '铁路专用线编码库', '39', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('c5fef190bf80405d9c2477b3d03be7c7', '503040', '襄垣煤矿专用线', 'RSLC', '铁路专用线编码库', '40', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('cf7471105dc6487c82709360eac3cc61', '503041', '郝家庄煤站专用线', 'RSLC', '铁路专用线编码库', '41', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('cc0673c8a90a4841965d34fdca2bc7d9', '503042', '经坊煤矿专用线', 'RSLC', '铁路专用线编码库', '42', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('cf72c8e93ee34e6d8facae57234e3f3c', '503043', '任家庄专用线', 'RSLC', '铁路专用线编码库', '43', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('a6d05b4d7e9742019af66dc5a2746f90', '503044', '王庄煤矿专用线', 'RSLC', '铁路专用线编码库', '44', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('c1e3cfd8870c4e398ea22f160407b0d9', '503045', '东田良煤站专用线', 'RSLC', '铁路专用线编码库', '45', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('8572f5b52bf6401686171f18f7f7c506', '503046', '霍尔辛赫专用线', 'RSLC', '铁路专用线编码库', '46', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('85518e0b4c4b49298f4e144b8d68aa31', '503047', '华晟荣专用线', 'RSLC', '铁路专用线编码库', '47', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('10ab4a29af4c41199bf229f19fe13669', '503048', '山西煤炭运销集团长治潞城有限公司煤炭专用线', 'RSLC', '铁路专用线编码库', '48', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('a1599e1a1f044015906a4dfa5e370d09', '503049', '店上煤站专用线', 'RSLC', '铁路专用线编码库', '49', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('5db58d1adb0e4eaeb0c6e3e1a6697fdc', '503050', '潞宝专用线', 'RSLC', '铁路专用线编码库', '50', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('f94da664f003496b9121bb18e719f9a0', '503051', '莒山煤矿专用线', 'RSLC', '铁路专用线编码库', '51', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('6b20bb6beedf4dc98cabba93c37f7fff', '503052', '天地王坡专用线', 'RSLC', '铁路专用线编码库', '52', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('3ac3b2b76f9e42cfa0ee3ad47e2cfd87', '503053', '三八煤矿专用线', 'RSLC', '铁路专用线编码库', '53', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('0166d8760ec14405ab1d3dc7caf04cf2', '503054', '巴公电厂专用线', 'RSLC', '铁路专用线编码库', '54', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('49ae42f4200d45e2841aab7f037c31ad', '503055', '大阳煤矿专用线', 'RSLC', '铁路专用线编码库', '55', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('485575deccaf44b7bcfab6197a0523de', '503056', '岳南煤矿专用线', 'RSLC', '铁路专用线编码库', '56', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('deda38b5fbe845d9bcba8fdae8e95c77', '503057', '北岩煤矿专用线', 'RSLC', '铁路专用线编码库', '57', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('3f922bbc27c64155bc3685136e7f4bac', '503058', '伯方煤矿专用线', 'RSLC', '铁路专用线编码库', '58', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('b66a8ada7c394dd08f05769e023bb547', '503059', '唐安煤矿专用线', 'RSLC', '铁路专用线编码库', '59', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('ea4a2aafeb8b49dd9f5f693f8adfbd6f', '503060', '新庄煤矿专用线', 'RSLC', '铁路专用线编码库', '60', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('d9a89250893c4fcfb375a522f9b0b765', '503061', '牛山煤矿专用线', 'RSLC', '铁路专用线编码库', '61', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('fddb60f19ab34926b5fd14cde048e17e', '503062', '石渣厂专用线', 'RSLC', '铁路专用线编码库', '62', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('a7b08f58c6d84cb19ea70911bf141d77', '503063', '康营煤炭专用线', 'RSLC', '铁路专用线编码库', '63', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('a1871a7a289749c08e8e610ca5e98a6c', '503064', '申家庄煤矿专用线', 'RSLC', '铁路专用线编码库', '64', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('dcd55d6d7fdc4b749c033e28da24fbed', '503065', '望云煤矿专用线', 'RSLC', '铁路专用线编码库', '65', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('ff1e075997e9422d863f4ee0dd339b84', '503066', '西阳村车站康复专用线', 'RSLC', '铁路专用线编码库', '66', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('26858207c6a44b589c0653a7253b89f6', '503067', '上孔专用线', 'RSLC', '铁路专用线编码库', '67', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('dfdcc1adc6ac401092fbb20708cce4ab', '503068', '八专专用线', 'RSLC', '铁路专用线编码库', '68', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('a686d8c2335c4da197fa74dd785c8de5', '503069', '永红煤矿专用线', 'RSLC', '铁路专用线编码库', '69', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('a3c8e495cafe4071979df9d5bc992922', '503070', '侯村煤矿专用线', 'RSLC', '铁路专用线编码库', '70', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('3f78d959407a4ebb9f02324d89a513e1', '503071', '吕梁孝柳煤焦储运公司煤焦专用线', 'RSLC', '铁路专用线编码库', '71', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('2cdebbe27b864626839b7d16024a5866', '503072', '山西省吕梁地区朱家店煤矿专用线', 'RSLC', '铁路专用线编码库', '72', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('f9962607dc41478fa583afac74915ca6', '503073', '东义集团专用线', 'RSLC', '铁路专用线编码库', '73', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('568583585e6d47ce8abc3d7d186db999', '503074', '孝义市孝南粮油转运站专用线', 'RSLC', '铁路专用线编码库', '74', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('85dc3725e1cf4477b517a1329b376611', '503075', '山西储备局476处专用线', 'RSLC', '铁路专用线编码库', '75', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('32a4c0e60f0f44a086bb345e80bde337', '503076', '交口道耳煤业有限责任公司专用线', 'RSLC', '铁路专用线编码库', '76', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('de20bedaa735476299ad9855d35a5d7b', '503077', '孝义市金达煤焦有限公司专用线', 'RSLC', '铁路专用线编码库', '77', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('276b27d6be284528896957185f054c7a', '503078', '义棠煤业专用线', 'RSLC', '铁路专用线编码库', '78', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('421ac7bd98854626ae3042886cf80e55', '503079', '孝龙煤焦集运有限公司铁路专用线', 'RSLC', '铁路专用线编码库', '79', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('1813f89a463d4d6b877415d158d4bf10', '503080', '山西离柳焦煤集团有限公司专用线', 'RSLC', '铁路专用线编码库', '80', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('4e24a20194ba44ec87159e498688f490', '503081', '烟台开发区临汾铁路贸易有限责任公司专用线', 'RSLC', '铁路专用线编码库', '81', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('28ea3f3108324b82879b6a4040cba705', '503082', '山西省灵石通宇实业有限公司玉成发运站专用线', 'RSLC', '铁路专用线编码库', '82', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('c888e7fb15564ffe82a41e7ffbbff4c1', '503083', '灵石县紫嵘铸管有限责任公司铸管厂专用线', 'RSLC', '铁路专用线编码库', '83', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('35a59e98381242b8b80ffb3c9f370d43', '503084', '山西省晋中地区灵石煤矿新专用线', 'RSLC', '铁路专用线编码库', '84', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('72867492013c4a64b626f97ea91092b1', '503085', '中宝富源专用线', 'RSLC', '铁路专用线编码库', '85', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('a1862e2a4452485284a4d189c2d376a2', '503086', '灵石煤炭新专用线', 'RSLC', '铁路专用线编码库', '86', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('bba95f92691143b9b044ed0fcf3c9908', '503087', '保利星辰专用线', 'RSLC', '铁路专用线编码库', '87', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('7b903449438340d28ccfe2c4bc2b5233', '503088', '永宏专用线', 'RSLC', '铁路专用线编码库', '88', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('98d48d68148a4b52b1214d25673845a1', '503089', '霍州市许村煤矿专用线', 'RSLC', '铁路专用线编码库', '89', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('e6c80100810142a4940b297820368466', '503090', '灵煤专用线一道', 'RSLC', '铁路专用线编码库', '90', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('490bc04dd5784bfdb83c0a7c07980221', '503091', '山西省灵石通宇实业有限公司玉成发运站专用线', 'RSLC', '铁路专用线编码库', '91', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('3471bd506e4d4d1db145bcc96274baa1', '503092', '山西省灵石县煤运销公司两渡煤焦集运站专用线', 'RSLC', '铁路专用线编码库', '92', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('3117398075974c6aa9e68f8405fbcf07', '503093', '山西省晋中灵石煤矿专用线', 'RSLC', '铁路专用线编码库', '93', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('3901d594f14e4db586c1e4295f365e1d', '503094', '灵石永宏专用线', 'RSLC', '铁路专用线编码库', '94', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('1ad937211e894d839fcef948b8ff3b24', '503095', '晋中灵石煤矿有限公司专用线', 'RSLC', '铁路专用线编码库', '95', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('caa583799af84d6cb84d9361a0f505f4', '503096', '晋中市永宏煤化专用线', 'RSLC', '铁路专用线编码库', '96', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('9132724d9ea84d8e8821c0c736798559', '503097', '山西中宝富源煤炭运销有限公司专用线三道', 'RSLC', '铁路专用线编码库', '97', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('969dcf925e234a61a542b13aa299ed1a', '503098', '山西中宝富源煤炭运销有限公司专用线', 'RSLC', '铁路专用线编码库', '98', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('b5528cc1d4ae4579bbd0620dbd389640', '503099', '晋泰专用线', 'RSLC', '铁路专用线编码库', '99', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('091f5c2d5cc94c20aab3e4cac0c4c82b', '503100', '黄段专用线（平舒站）', 'RSLC', '铁路专用线编码库', '100', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('e3296b5eb0d4422187fab6061041e94d', '503101', '一三九专用线', 'RSLC', '铁路专用线编码库', '101', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('922d0856a9eb4d51aaede8379309b8fe', '503102', '介休市劳服金达煤焦储运有限公司专用线、山西碳素厂专用线', 'RSLC', '铁路专用线编码库', '102', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('58ce69c8251946f7a19962f3a3e2aa99', '503103', '介休市劳服金达煤焦储运有限公司专用线', 'RSLC', '铁路专用线编码库', '103', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('8d9c312cd0984692ade1a808933c612f', '503104', '介休市金达煤焦储运有限公司专用线', 'RSLC', '铁路专用线编码库', '104', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('b0c3ac867eaf4d8ebcdd87573117b56d', '503105', '山西碳素厂专用线', 'RSLC', '铁路专用线编码库', '105', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('acaccbce591848a7b184980393f6c924', '503106', '山西天泽矿业有限公司专用线', 'RSLC', '铁路专用线编码库', '106', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('bf1420a73fe3465d9a3b34af154f09ae', '503107', '义安安泰专用线', 'RSLC', '铁路专用线编码库', '107', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('60a221c363f64e9aa10c17510b304380', '503108', '万安义棠专用线', 'RSLC', '铁路专用线编码库', '108', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('24da1eca6a3e4636ad211df35b620480', '503109', '亚鑫达铁路专用线', 'RSLC', '铁路专用线编码库', '109', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('4a809bd9083e41e7a30ba6c5cd9c85a8', '503110', '临汾市尧都区亚鑫达煤焦铁有限公司专用线', 'RSLC', '铁路专用线编码库', '110', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('90fef872060547fab4b16a2a78af8a8e', '503111', '临汾世纪鼎圣能源有限公司临北铁路专用线', 'RSLC', '铁路专用线编码库', '111', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('b29f5baa8ba3405b9f4665d75ed11f1e', '503112', '西郭煤矿专用线', 'RSLC', '铁路专用线编码库', '112', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('9579914f10aa4d35a4b30d762e789afb', '503113', '世纪鼎盛专用线道', 'RSLC', '铁路专用线编码库', '113', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('e4149423751c4115b0b5bf72793d7bf7', '503114', '山西尧盛达经贸有限公司专用线', 'RSLC', '铁路专用线编码库', '114', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('14251ba1ac6a4be494931e17531a2e85', '503115', '龙鑫专用线', 'RSLC', '铁路专用线编码库', '115', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('ea1b97144afc43edabf361e139206a34', '503116', '山西三维专用线', 'RSLC', '铁路专用线编码库', '116', null, 'admin', '2016-10-12 17:34:18', 'admin', '2016-10-12 17:34:18', null, '0');
INSERT INTO `sys_dict` VALUES ('40c57267a67a4576af19d2426c217c8e', '503117', '光大储运专用线', 'RSLC', '铁路专用线编码库', '117', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('ac992cd0908049969923b954a8ba9155', '503118', '临汾聚晟能源有限责任公司专用线（煤海润）', 'RSLC', '铁路专用线编码库', '118', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('95013477055b42eba02b92818fae454f', '503119', '山西光大储运有很公司专用线', 'RSLC', '铁路专用线编码库', '119', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('8d288e2bcb0a4b32811d068b836b9c44', '503120', '山西临汾同济储运有限公司专用线', 'RSLC', '铁路专用线编码库', '120', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('b53cd273fc0e4b37bdc8785f23a90d5f', '503121', '南铁专用线', 'RSLC', '铁路专用线编码库', '121', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('f453a8f918a948feaa897bc5381022c1', '503122', '山西煤炭运销总公司翼城东煤炭集运站专用线', 'RSLC', '铁路专用线编码库', '122', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('81491e5f580c40edb4b2c2c1243c43b5', '503123', '铁盛专用线', 'RSLC', '铁路专用线编码库', '123', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('a638484b167341309aba09c1e4bf9b11', '503124', '霍州三合专用线', 'RSLC', '铁路专用线编码库', '124', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('51e8aa9986ec4505bea62495eb356392', '503125', '山西漳泽电力股份有限公司河津发电厂专用线5', 'RSLC', '铁路专用线编码库', '125', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('e1e18b41717441feb16130817d748b1b', '503126', '山西中煤华晋能源集团有限责任公司王家岭铁路专用线', 'RSLC', '铁路专用线编码库', '126', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('f1f834c7df7a46fb9c56d79c74efb8a4', '503127', '新峪专用线', 'RSLC', '铁路专用线编码库', '127', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('2f349483062f4b3f803d67fa0a5f4542', '503128', '新阳专用线', 'RSLC', '铁路专用线编码库', '128', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('dc523e419d90432aa742b3fb7451e752', '503129', '新柳专用线', 'RSLC', '铁路专用线编码库', '129', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('f054197f9a0a4811b9aeffb3c4b4c445', '503130', '宁静铁路专用线', 'RSLC', '铁路专用线编码库', '130', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('e8fed2495a624b39aef7857abcafbc18', '503131', '沙曲选煤厂专用线', 'RSLC', '铁路专用线编码库', '131', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('3b508fcdadb1408a8df0e60afc299a9b', '503132', '口泉1号专用线', 'RSLC', '铁路专用线编码库', '132', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('dd5e837aed1c4529a5c3cf38bc4e5e32', '503133', '口泉2号专用线', 'RSLC', '铁路专用线编码库', '133', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('b52f6f0c8e7049f38dbd09ccbe534201', '503134', '口泉5号专用线', 'RSLC', '铁路专用线编码库', '134', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('de96ccd4a3e04a4d9dcd92878b2e64a6', '503135', '白洞专用线', 'RSLC', '铁路专用线编码库', '135', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('c1c4f62f90914d57bdb4ab178daa6e39', '503136', '云岗1号专用线', 'RSLC', '铁路专用线编码库', '136', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('24f2ae4a0ebc4203b91083e1cfbeeb0d', '503137', '口泉3号专用线', 'RSLC', '铁路专用线编码库', '137', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('66b41a33b92f400e861606be77d76801', '503138', '口泉4号专用线', 'RSLC', '铁路专用线编码库', '138', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('fd875ebc19b542ca929a74fc127ea5b3', '503139', '口泉7号专用线', 'RSLC', '铁路专用线编码库', '139', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('63c1c3f2bef746dda523e102b5f8a9d8', '503140', '口泉8号专用线', 'RSLC', '铁路专用线编码库', '140', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('a37ddb335fc74616a4b053a9a28c5eb4', '503141', '新高山1号专用线', 'RSLC', '铁路专用线编码库', '141', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('328baf7cba5c4c0b9c250108ef4589e8', '503142', '口泉11号专用线', 'RSLC', '铁路专用线编码库', '142', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('3e049145be444053bb5e3a2d11faff1f', '503143', '口泉12号专用线', 'RSLC', '铁路专用线编码库', '143', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('912f4c267f264f54b10197e2fd77903f', '503144', '云西1号专用线', 'RSLC', '铁路专用线编码库', '144', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('27a40c65585a494190ad3742b62fe253', '503145', '新高山5号专用线', 'RSLC', '铁路专用线编码库', '145', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('fca5ebd4a7534dc7bd225a4460d8e359', '503146', '云西2号专用线', 'RSLC', '铁路专用线编码库', '146', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('0b23d04bdf084d00b057c408e23d82bd', '503147', '韩家岭1号专用线', 'RSLC', '铁路专用线编码库', '147', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('ea2b509899ee425aa2097100e47c9321', '503148', '前寨1号专用线', 'RSLC', '铁路专用线编码库', '148', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('47b9ebcac8cc48398cef1a192d9ef397', '503149', '韩家岭2号专用线', 'RSLC', '铁路专用线编码库', '149', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('d75390d112ad4ac590aebcf419a42d8b', '503150', '新高山4号专用线', 'RSLC', '铁路专用线编码库', '150', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('e4df7d966e0d4ede935e8021b973355c', '503151', '晋煤矿区专用线', 'RSLC', '铁路专用线编码库', '151', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('5e4c463ede3c4332adfb46fc2ef3c959', '503152', '嘉乐泉煤矿专用线', 'RSLC', '铁路专用线编码库', '152', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('2a20a25dd085425ba186481d727343f0', '503153', '长沟煤矿专用线', 'RSLC', '铁路专用线编码库', '153', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('8ffadf8cda9e4f64b22815a8293febf5', '503154', '山西中宝富源煤炭运销有限公司专用线', 'RSLC', '铁路专用线编码库', '154', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('673f21070ce444798f1665001f5ad86d', '503155', '炉峪口专用线', 'RSLC', '铁路专用线编码库', '155', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('692aa2fa58fe4e5c91a6c16cfe5e8835', '503156', '五阳矿专用线', 'RSLC', '铁路专用线编码库', '156', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('1c574ddce0fb45a4ba4017fd89486cac', '503157', '一矿铁路专用线', 'RSLC', '铁路专用线编码库', '157', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('582098cc8024455b8c18c83a42db7f58', '503158', '山西国阳新能股份有限公司二矿专用线', 'RSLC', '铁路专用线编码库', '158', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('2ba2f0879933444298b648101c15556f', '503159', '三矿铁路专用线', 'RSLC', '铁路专用线编码库', '159', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('0de3de4fd8594eef965da8ba79cfda24', '503160', '贵时沟铁路专用线', 'RSLC', '铁路专用线编码库', '160', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('4b3060a0582d417eb01d57da714a46fc', '503161', '山西国阳新能股份有限公司新景矿洗煤厂专用线', 'RSLC', '铁路专用线编码库', '161', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('ed0411c1270f451b8c84ddccff5ba094', '503162', '下秦山铁路专用线', 'RSLC', '铁路专用线编码库', '162', null, 'admin', '2016-10-12 17:34:19', 'admin', '2016-10-12 17:34:19', null, '0');
INSERT INTO `sys_dict` VALUES ('22ad98da06524a2eb467daa53c60ef81', '701', '挂牌价', 'PTC', '价格类型编码库', '1', null, 'admin', '2016-10-12 17:30:54', 'admin', '2016-10-12 17:30:54', null, '0');
INSERT INTO `sys_dict` VALUES ('940410d0bfb6498991c8fe3edc561ba9', '702', '坑口价', 'PTC', '价格类型编码库', '2', null, 'admin', '2016-10-12 17:30:54', 'admin', '2016-10-12 17:30:54', null, '0');
INSERT INTO `sys_dict` VALUES ('0cf22fe3a50943968b94b13ca929b098', '703', '车板价', 'PTC', '价格类型编码库', '3', null, 'admin', '2016-10-12 17:30:54', 'admin', '2016-10-12 17:30:54', null, '0');
INSERT INTO `sys_dict` VALUES ('b2294e31824a4934a84fa5ced7ea605e', '704', '车板含税价', 'PTC', '价格类型编码库', '4', null, 'admin', '2016-10-12 17:30:54', 'admin', '2016-10-12 17:30:54', null, '0');
INSERT INTO `sys_dict` VALUES ('978060f66440463392a3ccea17d5367d', '705', '含税车板价', 'PTC', '价格类型编码库', '5', null, 'admin', '2016-10-12 17:30:54', 'admin', '2016-10-12 17:30:54', null, '0');
INSERT INTO `sys_dict` VALUES ('0c27dc9ea40f4d21864c2cd4ff457ba3', '706', '到站价', 'PTC', '价格类型编码库', '6', null, 'admin', '2016-10-12 17:30:54', 'admin', '2016-10-12 17:30:54', null, '0');
INSERT INTO `sys_dict` VALUES ('a428772184e1421aac6c33f658b6e075', '707', '到岸价', 'PTC', '价格类型编码库', '7', null, 'admin', '2016-10-12 17:30:55', 'admin', '2016-10-12 17:30:55', null, '0');
INSERT INTO `sys_dict` VALUES ('78cb8005cedc48119fc068a65f487f0f', '708', '离岸价', 'PTC', '价格类型编码库', '8', null, 'admin', '2016-10-12 17:30:55', 'admin', '2016-10-12 17:30:55', null, '0');
INSERT INTO `sys_dict` VALUES ('35fd0e5b98ab486e959e2d129cea5569', '709', '平仓价', 'PTC', '价格类型编码库', '9', null, 'admin', '2016-10-12 17:30:55', 'admin', '2016-10-12 17:30:55', null, '0');
INSERT INTO `sys_dict` VALUES ('4663aa8c25c8419380dcca4dc870a03c', '710', '场地价', 'PTC', '价格类型编码库', '10', null, 'admin', '2016-10-12 17:30:55', 'admin', '2016-10-12 17:30:55', null, '0');
INSERT INTO `sys_dict` VALUES ('293e68a438b743ffa93888d0e8fab74e', '711', '含税价', 'PTC', '价格类型编码库', '11', null, 'admin', '2016-10-12 17:30:55', 'admin', '2016-10-12 17:30:55', null, '0');
INSERT INTO `sys_dict` VALUES ('fbdf6e0c50e249b1835c7e269b8c93ea', '712', '不含税价', 'PTC', '价格类型编码库', '12', null, 'admin', '2016-10-12 17:30:55', 'admin', '2016-10-12 17:30:55', null, '0');
INSERT INTO `sys_dict` VALUES ('4fe14bb7065c4b74b49637e6d9646473', '713', '含税包干价', 'PTC', '价格类型编码库', '13', null, 'admin', '2016-10-12 17:30:55', 'admin', '2016-10-12 17:30:55', null, '0');
INSERT INTO `sys_dict` VALUES ('e621db6ef10549809434055a7e41cb79', '714', '不含税包干价', 'PTC', '价格类型编码库', '14', null, 'admin', '2016-10-12 17:30:55', 'admin', '2016-10-12 17:30:55', null, '0');
INSERT INTO `sys_dict` VALUES ('4028801a56978c3c0156979095ee0011', 'BLC', '购买地编码', 'dic_type', '购买方所在地编码库', '3', null, 'admin', '2016-08-17 16:14:10', 'admin', '2016-08-17 16:14:10', '', '0');
INSERT INTO `sys_dict` VALUES ('4028801a56975e2601569760794b0010', 'BTC', '购买方类型', 'dic_type', '购买方类型编码库', '2', null, 'admin', '2016-08-17 15:21:37', 'admin', '2016-08-17 15:21:37', '', '0');
INSERT INTO `sys_dict` VALUES ('4028801a56975e260156975fbb55000b', 'CC', '煤种', 'dic_type', '煤种编码库', '1', null, 'admin', '2016-08-17 15:20:48', 'admin', '2016-08-17 16:11:42', '1', '0');
INSERT INTO `sys_dict` VALUES ('40288013569b9c6f01569c18ff6d0009', 'D', '日报', 'sendReportType', '发送时间类型', '6', null, 'admin', '2016-08-18 13:21:39', 'admin', '2016-08-18 15:03:10', '', '0');
INSERT INTO `sys_dict` VALUES ('40288013569b9c6f01569c1b95cc000b', 'M', '月报', 'sendReportType', '发送时间类型', '6', null, 'admin', '2016-08-18 13:24:28', 'admin', '2016-08-18 15:03:18', '', '0');
INSERT INTO `sys_dict` VALUES ('4028801a56978c3c01569791979b0016', 'OPC', '出省口编码', 'dic_type', '出省口编码库', '4', null, 'admin', '2016-08-17 16:15:16', 'admin', '2016-08-17 16:15:16', '', '0');
INSERT INTO `sys_dict` VALUES ('4028801a56978c3c01569791979b0123', 'PTC', '价格类型', 'dic_type', '价格类型编码', '4', null, 'admin', '2016-08-17 16:15:16', 'admin', '2016-08-17 16:15:16', '', '0');
INSERT INTO `sys_dict` VALUES ('4028801a56978c3c01569779bd0123', 'RFC', '集运站编码', 'dic_type', '铁路集运站编码库', '4', null, 'admin', '2016-08-17 16:15:16', 'admin', '2016-08-17 16:15:16', '', '0');
INSERT INTO `sys_dict` VALUES ('4028801a56978c3c01569791979bd0123', 'RSC', '铁路发站编码', 'dic_type', '铁路发站编码', '4', null, 'admin', '2016-08-17 16:15:16', 'admin', '2016-08-17 16:15:16', '', '0');
INSERT INTO `sys_dict` VALUES ('4028801a569783c069791979bd0123', 'RSCC', '到站城市编码', 'dic_type', '铁路到站所在城市编码库', '4', null, 'admin', '2016-08-17 16:15:16', 'admin', '2016-08-17 16:15:16', '', '0');
INSERT INTO `sys_dict` VALUES ('4028801a56978c3c569791979bd0123', 'RSLC', '铁路专线编码', 'dic_type', '铁路专用线编码库', '4', null, 'admin', '2016-08-17 16:15:16', 'admin', '2016-08-17 16:15:16', '', '0');
INSERT INTO `sys_dict` VALUES ('40288013569b9c6f01569c1a9b40000a', 'W', '周报', 'sendReportType', '发送时间类型', '6', null, 'admin', '2016-08-18 13:23:24', 'admin', '2016-08-18 15:03:28', '', '0');
INSERT INTO `sys_dict` VALUES ('402880ee57185a350157185f07dc0001', '建设', '建设', '矿井类型', '矿井类型', '2', null, 'admin', '2016-09-11 16:31:03', 'admin', '2016-09-11 16:31:03', '', '0');
INSERT INTO `sys_dict` VALUES ('402880ee57185a350157185debc10000', '生产', '生产', '矿井类型', '矿井类型', '1', null, 'admin', '2016-09-11 16:29:50', 'admin', '2016-09-11 16:30:33', '', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `status` varchar(10) DEFAULT NULL COMMENT '状态码',
  `message` varchar(200) DEFAULT NULL COMMENT '信息',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `starttime` double DEFAULT NULL COMMENT '开始时间',
  `endtiime` double DEFAULT NULL COMMENT '结束时间',
  `protime` double DEFAULT NULL COMMENT '耗时',
  `del_flag` int(11) DEFAULT NULL,
  `exception` text COMMENT '异常信息',
  `remarks` varchar(200) DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`) USING BTREE,
  KEY `sys_log_request_uri` (`request_uri`) USING BTREE,
  KEY `sys_log_type` (`type`) USING BTREE,
  KEY `sys_log_create_date` (`create_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_name` varchar(100) DEFAULT NULL COMMENT '父名称',
  `full_name` varchar(2000) DEFAULT NULL COMMENT '全名称',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `iconimg` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`) USING BTREE,
  KEY `sys_menu_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('4028800355490c5a0155491liu7c0017', '系统管理', '功能菜单_系统管理_消息通知', '402880f653ac86fd0153ac8947810000', 'root,402880f653ac86fd0153ac8947810000', '消息通知', '100', 'infoRep/queryImportLog.do?menuId=4028800355490c5a0155491liu7c0017', '1', '1', '1', 'info:queryImportLog:view', 'admin', '2016-06-13 17:27:04', 'admin', '2016-09-13 09:51:09', null, '1');
INSERT INTO `sys_menu` VALUES ('402880ee5716fb340157170142670000', '经营信息', '功能菜单_经营信息_上报经营信息', 'mtjy_senddata_mg', 'root,mtjy_senddata_mg', '上报经营信息', '200016', 'mtjySenddata/getPage.do?menuId=402880ee5716fb340157170142670000', '', '', '1', '', 'admin', '2016-09-11 10:09:01', 'admin', '2016-09-13 08:59:06', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee5716fb34015717078c5c0001', '产量日志', '功能菜单_产量日志_上报产量日志', 'mtqycl_senddata_mg', 'root,mtqycl_senddata_mg', '上报产量日志', '200018', 'mtqyclSenddata/getPage.do?menuId=402880ee5716fb34015717078c5c0001', '', '', '1', '', 'admin', '2016-09-11 10:15:53', 'admin', '2016-09-13 09:08:05', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee5716fb340157170aa49e0002', '运输信息', '功能菜单_运输信息_上报运输信息', 'mttlys_senddata_mg', 'root,mttlys_senddata_mg', '上报运输信息', '200025', 'mttlysSenddata/getPage.do?menuId=402880ee5716fb340157170aa49e0002', '', '', '1', '', 'admin', '2016-09-11 10:19:15', 'admin', '2016-09-13 09:08:23', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee5716fb340157170bad830003', '磅单报表', '功能菜单_磅单报表_上报磅单报表', 'mtbdbb_senddata_mg', 'root,mtbdbb_senddata_mg', '上报磅单报表', '200036', 'mtbdbbSenddata/getPage.do?menuId=402880ee5716fb340157170bad830003', '', '', '1', '', 'admin', '2016-09-11 10:20:23', 'admin', '2016-10-14 15:48:47', '-1', '0');
INSERT INTO `sys_menu` VALUES ('402880ee5716fb340157170d3e560004', '磅单信息', '功能菜单_磅单信息_上报磅单信息', 'mtqybd_senddata_mg', 'root,mtqybd_senddata_mg', '上报磅单信息', '200043', 'mtqybdSenddata/getPage.do?menuId=402880ee5716fb340157170d3e560004', '', '', '1', '', 'admin', '2016-09-11 10:22:06', 'admin', '2016-09-13 09:49:52', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee5716fb340157170f86c20005', '库存信息', '功能菜单_库存信息_上报库存信息', 'mtqykc_senddata_mg', 'root,mtqykc_senddata_mg', '上报库存信息', '200049', 'mtqykcSenddata/getPage.do?menuId=402880ee5716fb340157170f86c20005', '', '', '1', '', 'admin', '2016-09-11 10:24:36', 'admin', '2016-09-13 09:09:19', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee5716fb3401571711aee30006', '合同信息', '功能菜单_合同信息_上报合同信息', 'mtht_senddata_mg', 'root,mtht_senddata_mg', '上报合同信息', '200053', 'mthtSenddata/getPage.do?menuId=402880ee5716fb3401571711aee30006', '', '', '1', '', 'admin', '2016-09-11 10:26:57', 'admin', '2016-09-13 09:15:51', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee5716fb3401571713a10b0007', '结算信息', '功能菜单_结算信息_上报结算信息', 'mtjs_senddata_mg', 'root,mtjs_senddata_mg', '上报结算信息', '200067', 'mtjsSenddata/getPage.do?menuId=402880ee5716fb3401571713a10b0007', '', '', '1', '', 'admin', '2016-09-11 10:29:04', 'admin', '2016-09-26 15:48:50', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee5716fb3401571714bd6d0008', '外购日志', '功能菜单_外购日志_上报外购日志', 'mtwg_senddata_mg', 'root,mtwg_senddata_mg', '上报外购日志', '200070', 'mtwgSenddata/getPage.do?menuId=402880ee5716fb3401571714bd6d0008', '', '', '1', '', 'admin', '2016-09-11 10:30:17', 'admin', '2016-09-13 09:16:32', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee57186dcc0157187342ea0000', '字典信息', '功能菜单_字典信息_煤种编码库', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '煤种编码库', '200087', 'sysDict/getPageCC.do?menuId=402880ee57186dcc0157187342ea0000&type=CC', '', '', '1', '', 'admin', '2016-09-11 16:53:09', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee57186dcc0157187386590001', '字典信息', '功能菜单_字典信息_购买方类型编码库', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '购买方类型编码库', '200087', 'sysDict/getPageBTC.do?menuId=402880ee57186dcc0157187386590001&type=BTC', '', '', '1', '', 'admin', '2016-09-11 16:53:26', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee57186dcc01571873d4be0002', '字典信息', '功能菜单_字典信息_购买方所在地编码库', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '购买方所在地编码库', '200088', 'sysDict/getPageBLC.do?menuId=402880ee57186dcc01571873d4be0002&type=BLC', '', '', '1', '', 'admin', '2016-09-11 16:53:46', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee57186dcc0157187754710003', '字典信息', '功能菜单_字典信息_出省口编码库', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '出省口编码库', '200089', 'sysDict/getPageOPC.do?menuId=402880ee57186dcc0157187754710003&type=OPC', '', '', '1', '', 'admin', '2016-09-11 16:57:36', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee57186dcc01571877862d0004', '字典信息', '功能菜单_字典信息_价格类型编码库', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '价格类型编码库', '200090', 'sysDict/getPagePTC.do?menuId=402880ee57186dcc01571877862d0004&type=PTC', '', '', '1', '', 'admin', '2016-09-11 16:57:48', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee57186dcc01571877ad080005', '字典信息', '功能菜单_字典信息_铁路发站编码库', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '铁路发站编码库', '200091', 'sysDict/getPageRSC.do?menuId=402880ee57186dcc01571877ad080005&type=RSC', '', '', '1', '', 'admin', '2016-09-11 16:57:58', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee57186dcc01571877af100006', '字典信息', '功能菜单_字典信息_铁路集运站编码库', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '铁路集运站编码库', '200091', 'sysDict/getPageRFC.do?menuId=402880ee57186dcc01571877af100006&type=RFC', '', '', '1', '', 'admin', '2016-09-11 16:57:59', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee57186dcc01571877b07c0007', '字典信息', '功能菜单_字典信息_铁路专用线编码库', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '铁路专用线编码库', '200091', 'sysDict/getPageRSLC.do?menuId=402880ee57186dcc01571877b07c0007&type=RSLC', '', '', '1', '', 'admin', '2016-09-11 16:57:59', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee57186dcc01571878713f0008', '字典信息', '功能菜单_字典信息_到站城市编码库', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '到站城市编码库', '200094', 'sysDict/getPageRSCC.do?menuId=402880ee57186dcc01571878713f0008&type=RSCC', '', '', '1', '', 'admin', '2016-09-11 16:58:49', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('402880ee572115f50157211677180000', '系统管理', '功能菜单_系统管理_数据备份', '402880f653ac86fd0153ac8947810000', 'root,402880f653ac86fd0153ac8947810000', '数据备份', '200116', 'dbback/openbackmysql.do?menuId=402880ee572115f50157211677180000', '', '', '1', '', 'admin', '2016-09-13 09:08:22', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('402880f653abc66f0153abca584d0000', '菜单管理', '功能菜单_系统管理_菜单管理_菜单树', 'sys_menu_mg', 'root,402880f653ac86fd0153ac8947810000,sys_menu_mg', '菜单树', '100', 'sysMenu/getPageTree.do?menuId=sys_menu_mg', '', '', '1', '', '陈友华', '2016-03-25 11:21:18', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('402880f653ac86fd0153ac8947810000', '功能菜单', '功能菜单_系统管理', 'root', 'root', '系统管理', '100', '', '', 'base/images/tubiao/xitong.png', '1', '', '陈友华', '2016-03-25 14:49:51', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('402880f653ac86fd0153ac8bc35f0001', '功能菜单', '功能菜单_字典信息', 'root', 'root', '字典信息', '15', '', '', 'base/images/tubiao/zidian.png', '1', '', '陈友华', '2016-03-25 14:52:33', 'admin', '2016-09-13 09:49:29', '-1', '0');
INSERT INTO `sys_menu` VALUES ('4028d0815716d3b3015716d4a99d0000', '煤矿信息', '功能菜单_煤矿信息_添加煤矿信息', 'mtmk_senddata_mg', 'root,mtmk_senddata_mg', '添加煤矿信息', '200003', 'mtmkSenddata/openSave.do?menuId=mtmk_senddata_view', '', '', '1', '', 'admin', '2016-09-11 09:20:18', 'admin', '2016-09-13 08:43:31', '-1', '0');
INSERT INTO `sys_menu` VALUES ('4028d08157178d2f0157178fa9a10000', '煤矿信息', '功能菜单_煤矿信息_历史信息列表', 'mtmk_senddata_mg', 'root,mtmk_senddata_mg', '历史信息列表', '200005', 'mtmkSenddata/getHistoryPage.do?menuId=4028d08157178d2f0157178fa9a10000', '', '', '1', '', 'admin', '2016-09-11 12:44:33', 'admin', '2016-09-13 08:43:31', null, '0');
INSERT INTO `sys_menu` VALUES ('login_parameter_delete', '登录参数', '功能菜单_接口管理_登录参数_登录参数_删除登录参数', 'login_parameter_mg', 'root,mt_url_interface_mg,login_parameter_mg', '删除登录参数', '4', '', null, 'icon-pencil', '0', 'login:loginParameter:delete', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('login_parameter_input', '登录参数', '功能菜单_接口管理_登录参数_登录参数_导入登录参数', 'login_parameter_mg', 'root,mt_url_interface_mg,login_parameter_mg', '导入登录参数', '5', 'loginParameter/openInput.do?menuId=login_parameter_input', null, 'icon-pencil', '0', 'login:loginParameter:input', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('login_parameter_mg', '接口管理', '功能菜单_接口管理_登录参数', 'mt_url_interface_mg', 'root,mt_url_interface_mg', '登录参数', '200084', 'loginParameter/getPage.do?menuId=login_parameter_mg', '', 'icon-pencil', '1', '', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('login_parameter_output', '登录参数', '功能菜单_接口管理_登录参数_登录参数_导出登录参数', 'login_parameter_mg', 'root,mt_url_interface_mg,login_parameter_mg', '导出登录参数', '6', 'loginParameter/openOutput.do?menuId=login_parameter_output', null, 'icon-pencil', '0', 'login:loginParameter:output', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('login_parameter_save', '登录参数', '功能菜单_接口管理_登录参数_登录参数_添加登录参数', 'login_parameter_mg', 'root,mt_url_interface_mg,login_parameter_mg', '添加登录参数', '2', 'loginParameter/openSave.do?menuId=login_parameter_save', null, 'icon-pencil', '0', 'login:loginParameter:save', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('login_parameter_update', '登录参数', '功能菜单_接口管理_登录参数_登录参数_修改登录参数', 'login_parameter_mg', 'root,mt_url_interface_mg,login_parameter_mg', '修改登录参数', '3', 'loginParameter/openUpdate.do?menuId=login_parameter_update', null, 'icon-pencil', '0', 'login:loginParameter:update', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('login_parameter_view', '登录参数', '功能菜单_接口管理_登录参数_登录参数_登录参数列表', 'login_parameter_mg', 'root,mt_url_interface_mg,login_parameter_mg', '登录参数列表', '1', 'loginParameter/getPage.do?menuId=login_parameter_view', null, 'icon-pencil', '1', 'login:loginParameter:view', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mtbdbb_senddata_delete', '磅单报表', '功能菜单_磅单报表_磅单报表_删除磅单数据', 'mtbdbb_senddata_mg', 'root,mtbdbb_senddata_mg', '删除磅单数据', '4', '', null, 'icon-pencil', '0', 'bdbb:mtbdbbSenddata:delete', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:08:49', null, '0');
INSERT INTO `sys_menu` VALUES ('mtbdbb_senddata_input', '磅单报表', '功能菜单_磅单报表_磅单报表_导入磅单数据', 'mtbdbb_senddata_mg', 'root,mtbdbb_senddata_mg', '导入磅单数据', '5', 'mtbdbbSenddata/openInput.do?menuId=mtbdbb_senddata_input', null, 'icon-pencil', '0', 'bdbb:mtbdbbSenddata:input', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:08:49', null, '0');
INSERT INTO `sys_menu` VALUES ('mtbdbb_senddata_mg', '功能菜单', '功能菜单_磅单报表', 'root', 'root', '磅单报表', '7', 'mtbdbbSenddata/getPage.do?menuId=mtbdbb_senddata_mg', '', 'base/images/tubiao/bangdan.png', '1', '', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:08:49', null, '0');
INSERT INTO `sys_menu` VALUES ('mtbdbb_senddata_output', '磅单报表', '功能菜单_磅单报表_磅单报表_导出磅单数据', 'mtbdbb_senddata_mg', 'root,mtbdbb_senddata_mg', '导出磅单数据', '6', 'mtbdbbSenddata/openOutput.do?menuId=mtbdbb_senddata_output', null, 'icon-pencil', '0', 'bdbb:mtbdbbSenddata:output', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:08:49', null, '0');
INSERT INTO `sys_menu` VALUES ('mtbdbb_senddata_save', '磅单报表', '功能菜单_磅单报表_添加磅单报表', 'mtbdbb_senddata_mg', 'root,mtbdbb_senddata_mg', '添加磅单报表', '2', 'mtbdbbSenddata/openSave.do?menuId=mtbdbb_senddata_save', '', 'icon-pencil', '1', 'bdbb:mtbdbbSenddata:save', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:08:49', null, '0');
INSERT INTO `sys_menu` VALUES ('mtbdbb_senddata_update', '磅单报表', '功能菜单_磅单报表_磅单报表_修改磅单数据', 'mtbdbb_senddata_mg', 'root,mtbdbb_senddata_mg', '修改磅单数据', '3', 'mtbdbbSenddata/openUpdate.do?menuId=mtbdbb_senddata_update', null, 'icon-pencil', '0', 'bdbb:mtbdbbSenddata:update', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:08:49', null, '0');
INSERT INTO `sys_menu` VALUES ('mtbdbb_senddata_view', '磅单报表', '功能菜单_磅单报表_历史磅单报表', 'mtbdbb_senddata_mg', 'root,mtbdbb_senddata_mg', '历史磅单报表', '200042', 'mtbdbbSenddata/getPageHis.do?menuId=mtbdbb_senddata_view', '', 'icon-pencil', '1', 'bdbb:mtbdbbSenddata:view', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:08:49', null, '0');
INSERT INTO `sys_menu` VALUES ('mtht_senddata_delete', '合同信息', '功能菜单_合同信息_合同信息_删除合同信息', 'mtht_senddata_mg', 'root,mtht_senddata_mg', '删除合同信息', '4', '', null, 'icon-pencil', '0', 'ht:mthtSenddata:delete', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:15:51', null, '0');
INSERT INTO `sys_menu` VALUES ('mtht_senddata_input', '合同信息', '功能菜单_合同信息_合同信息_导入合同信息', 'mtht_senddata_mg', 'root,mtht_senddata_mg', '导入合同信息', '5', 'mthtSenddata/openInput.do?menuId=mtht_senddata_input', null, 'icon-pencil', '0', 'ht:mthtSenddata:input', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:15:51', null, '0');
INSERT INTO `sys_menu` VALUES ('mtht_senddata_mg', '功能菜单', '功能菜单_合同信息', 'root', 'root', '合同信息', '9', 'mthtSenddata/getPage.do?menuId=mtht_senddata_mg', '', 'base/images/tubiao/hetong.png', '1', '', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:15:51', null, '0');
INSERT INTO `sys_menu` VALUES ('mtht_senddata_output', '合同信息', '功能菜单_合同信息_合同信息_导出合同信息', 'mtht_senddata_mg', 'root,mtht_senddata_mg', '导出合同信息', '6', 'mthtSenddata/openOutput.do?menuId=mtht_senddata_output', null, 'icon-pencil', '0', 'ht:mthtSenddata:output', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:15:51', null, '0');
INSERT INTO `sys_menu` VALUES ('mtht_senddata_save', '合同信息', '功能菜单_合同信息_添加合同信息', 'mtht_senddata_mg', 'root,mtht_senddata_mg', '添加合同信息', '2', 'mthtSenddata/openSave.do?menuId=mtht_senddata_save', '', 'icon-pencil', '1', 'ht:mthtSenddata:save', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:15:51', '-1', '0');
INSERT INTO `sys_menu` VALUES ('mtht_senddata_update', '合同信息', '功能菜单_合同信息_合同信息_修改合同信息', 'mtht_senddata_mg', 'root,mtht_senddata_mg', '修改合同信息', '3', 'mthtSenddata/openUpdate.do?menuId=mtht_senddata_update', null, 'icon-pencil', '0', 'ht:mthtSenddata:update', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:15:51', null, '0');
INSERT INTO `sys_menu` VALUES ('mtht_senddata_view', '合同信息', '功能菜单_合同信息_历史合同列表', 'mtht_senddata_mg', 'root,mtht_senddata_mg', '历史合同列表', '200056', 'mthtSenddata/getPageHis.do?menuId=mtht_senddata_view', '', 'icon-pencil', '1', 'ht:mthtSenddata:view', '陈友华', '2016-08-18 00:00:00', 'admin', '2016-09-13 09:15:51', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjs_senddata_delete', '结算信息', '功能菜单_结算信息_结算信息_删除结算信息', 'mtjs_senddata_mg', 'root,mtjs_senddata_mg', '删除结算信息', '4', '', null, 'icon-pencil', '0', 'js:mtjsSenddata:delete', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjs_senddata_input', '结算信息', '功能菜单_结算信息_结算信息_导入结算信息', 'mtjs_senddata_mg', 'root,mtjs_senddata_mg', '导入结算信息', '5', 'mtjsSenddata/openInput.do?menuId=mtjs_senddata_input', null, 'icon-pencil', '0', 'js:mtjsSenddata:input', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjs_senddata_mg', '功能菜单', '功能菜单_结算信息', 'root', 'root', '结算信息', '10', 'mtjsSenddata/getPage.do?menuId=mtjs_senddata_mg', '', 'base/images/tubiao/jiesuan.png', '1', '', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjs_senddata_output', '结算信息', '功能菜单_结算信息_结算信息_导出结算信息', 'mtjs_senddata_mg', 'root,mtjs_senddata_mg', '导出结算信息', '6', 'mtjsSenddata/openOutput.do?menuId=mtjs_senddata_output', null, 'icon-pencil', '0', 'js:mtjsSenddata:output', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjs_senddata_save', '结算信息', '功能菜单_结算信息_添加结算信息', 'mtjs_senddata_mg', 'root,mtjs_senddata_mg', '添加结算信息', '2', 'mtjsSenddata/openSave.do?menuId=mtjs_senddata_save', '', 'icon-pencil', '1', 'js:mtjsSenddata:save', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:11', '-1', '0');
INSERT INTO `sys_menu` VALUES ('mtjs_senddata_update', '结算信息', '功能菜单_结算信息_结算信息_修改结算信息', 'mtjs_senddata_mg', 'root,mtjs_senddata_mg', '修改结算信息', '3', 'mtjsSenddata/openUpdate.do?menuId=mtjs_senddata_update', null, 'icon-pencil', '0', 'js:mtjsSenddata:update', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjs_senddata_view', '结算信息', '功能菜单_结算信息_历史结算列表', 'mtjs_senddata_mg', 'root,mtjs_senddata_mg', '历史结算列表', '200069', 'mtjsSenddata/getPageHis.do?menuId=mtjs_senddata_view', '', 'icon-pencil', '1', 'js:mtjsSenddata:view', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-26 15:49:36', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjy_senddata_delete', '经营信息', '功能菜单_经营信息_经营信息_删除经营信息', 'mtjy_senddata_mg', 'root,mtjy_senddata_mg', '删除经营信息', '4', '', null, 'icon-pencil', '0', 'jy:mtjySenddata:delete', '经营信息', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:59:06', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjy_senddata_input', '经营信息', '功能菜单_经营信息_经营信息_导入经营信息', 'mtjy_senddata_mg', 'root,mtjy_senddata_mg', '导入经营信息', '5', 'mtjySenddata/openInput.do?menuId=mtjy_senddata_input', null, 'icon-pencil', '0', 'jy:mtjySenddata:input', '经营信息', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:59:06', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjy_senddata_mg', '功能菜单', '功能菜单_经营信息', 'root', 'root', '经营信息', '2', 'mtjySenddata/getPage.do?menuId=mtjy_senddata_mg', '', 'base/images/tubiao/jingying.png', '1', '', '经营信息', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:59:06', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjy_senddata_output', '经营信息', '功能菜单_经营信息_经营信息_导出经营信息', 'mtjy_senddata_mg', 'root,mtjy_senddata_mg', '导出经营信息', '6', 'mtjySenddata/openOutput.do?menuId=mtjy_senddata_output', null, 'icon-pencil', '0', 'jy:mtjySenddata:output', '经营信息', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:59:06', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjy_senddata_save', '经营信息', '功能菜单_经营信息_添加经营信息', 'mtjy_senddata_mg', 'root,mtjy_senddata_mg', '添加经营信息', '200010', 'mtjySenddata/openSave.do?menuId=mtjy_senddata_save', '', 'icon-pencil', '1', 'jy:mtjySenddata:save', '经营信息', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:59:06', '-1', '0');
INSERT INTO `sys_menu` VALUES ('mtjy_senddata_update', '经营信息', '功能菜单_经营信息_经营信息_修改经营信息', 'mtjy_senddata_mg', 'root,mtjy_senddata_mg', '修改经营信息', '3', 'mtjySenddata/openUpdate.do?menuId=mtjy_senddata_update', null, 'icon-pencil', '0', 'jy:mtjySenddata:update', '经营信息', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:59:06', null, '0');
INSERT INTO `sys_menu` VALUES ('mtjy_senddata_view', '经营信息', '功能菜单_经营信息_历史信息列表', 'mtjy_senddata_mg', 'root,mtjy_senddata_mg', '历史信息列表', '200017', 'mtjySenddata/getPageHis.do?menuId=mtjy_senddata_view', '', 'icon-pencil', '1', 'jy:mtjySenddata:view', '经营信息', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:59:06', null, '0');
INSERT INTO `sys_menu` VALUES ('mtmk_senddata_delete', '煤矿信息', '功能菜单_煤矿信息_煤矿信息_删除煤矿信息', 'mtmk_senddata_mg', 'root,mtmk_senddata_mg', '删除煤矿信息', '4', '', null, 'icon-pencil', '0', 'mk:mtmkSenddata:delete', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:43:31', null, '0');
INSERT INTO `sys_menu` VALUES ('mtmk_senddata_input', '煤矿信息', '功能菜单_煤矿信息_煤矿信息_导入煤矿信息', 'mtmk_senddata_mg', 'root,mtmk_senddata_mg', '导入煤矿信息', '5', 'mtmkSenddata/openInput.do?menuId=mtmk_senddata_input', null, 'icon-pencil', '0', 'mk:mtmkSenddata:input', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:43:31', null, '0');
INSERT INTO `sys_menu` VALUES ('mtmk_senddata_mg', '功能菜单', '功能菜单_煤矿信息', 'root', 'root', '煤矿信息', '1', 'mtmkSenddata/getPage.do?menuId=mtmk_senddata_mg', '', 'base/images/tubiao/jichu.png', '1', '', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:43:31', null, '0');
INSERT INTO `sys_menu` VALUES ('mtmk_senddata_output', '煤矿信息', '功能菜单_煤矿信息_煤矿信息_导出煤矿信息', 'mtmk_senddata_mg', 'root,mtmk_senddata_mg', '导出煤矿信息', '6', 'mtmkSenddata/openOutput.do?menuId=mtmk_senddata_output', null, 'icon-pencil', '0', 'mk:mtmkSenddata:output', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:43:31', null, '0');
INSERT INTO `sys_menu` VALUES ('mtmk_senddata_save', '煤矿信息', '功能菜单_煤矿信息_添加煤矿信息', 'mtmk_senddata_mg', 'root,mtmk_senddata_mg', '添加煤矿信息', '200005', 'mtmkSenddata/openSave.do?menuId=mtmk_senddata_save', '', 'icon-pencil', '0', 'mk:mtmkSenddata:save', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:43:31', '-1', '1');
INSERT INTO `sys_menu` VALUES ('mtmk_senddata_update', '煤矿信息', '功能菜单_煤矿信息_煤矿信息_修改煤矿信息', 'mtmk_senddata_mg', 'root,mtmk_senddata_mg', '修改煤矿信息', '3', 'mtmkSenddata/openUpdate.do?menuId=mtmk_senddata_update', null, 'icon-pencil', '0', 'mk:mtmkSenddata:update', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:43:31', null, '0');
INSERT INTO `sys_menu` VALUES ('mtmk_senddata_view', '煤矿信息', '功能菜单_煤矿信息_上报煤矿信息', 'mtmk_senddata_mg', 'root,mtmk_senddata_mg', '上报煤矿信息', '200004', 'mtmkSenddata/getPage.do?menuId=mtmk_senddata_view', '', 'icon-pencil', '1', 'mk:mtmkSenddata:view', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 08:43:31', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqybd_senddata_delete', '磅单信息', '功能菜单_磅单信息_磅单信息_删除磅单信息', 'mtqybd_senddata_mg', 'root,mtqybd_senddata_mg', '删除磅单信息', '4', '', null, 'icon-pencil', '0', 'qybd:mtqybdSenddata:delete', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:52', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqybd_senddata_input', '磅单信息', '功能菜单_磅单信息_磅单信息_导入磅单信息', 'mtqybd_senddata_mg', 'root,mtqybd_senddata_mg', '导入磅单信息', '5', 'mtqybdSenddata/openInput.do?menuId=mtqybd_senddata_input', null, 'icon-pencil', '0', 'qybd:mtqybdSenddata:input', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:52', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqybd_senddata_mg', '功能菜单', '功能菜单_磅单信息', 'root', 'root', '磅单信息', '7', 'mtqybdSenddata/getPage.do?menuId=mtqybd_senddata_mg', '', 'base/images/tubiao/bdxx.png', '1', '', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:52', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqybd_senddata_output', '磅单信息', '功能菜单_磅单信息_磅单信息_导出磅单信息', 'mtqybd_senddata_mg', 'root,mtqybd_senddata_mg', '导出磅单信息', '6', 'mtqybdSenddata/openOutput.do?menuId=mtqybd_senddata_output', null, 'icon-pencil', '0', 'qybd:mtqybdSenddata:output', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:52', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqybd_senddata_save', '磅单信息', '功能菜单_磅单信息_添加磅单信息', 'mtqybd_senddata_mg', 'root,mtqybd_senddata_mg', '添加磅单信息', '2', 'mtqybdSenddata/openSave.do?menuId=mtqybd_senddata_save', '', 'icon-pencil', '1', 'qybd:mtqybdSenddata:save', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:52', '-1', '0');
INSERT INTO `sys_menu` VALUES ('mtqybd_senddata_update', '磅单信息', '功能菜单_磅单信息_磅单信息_修改磅单信息', 'mtqybd_senddata_mg', 'root,mtqybd_senddata_mg', '修改磅单信息', '3', 'mtqybdSenddata/openUpdate.do?menuId=mtqybd_senddata_update', null, 'icon-pencil', '0', 'qybd:mtqybdSenddata:update', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:52', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqybd_senddata_view', '磅单信息', '功能菜单_磅单信息_历史磅单列表', 'mtqybd_senddata_mg', 'root,mtqybd_senddata_mg', '历史磅单列表', '200045', 'mtqybdSenddata/getPageHis.do?menuId=mtqybd_senddata_view', '', 'icon-pencil', '1', 'qybd:mtqybdSenddata:view', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:52', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqycl_senddata_delete', '产量日志', '功能菜单_产量日志_产量日志_删除产量日志', 'mtqycl_senddata_mg', 'root,mtqycl_senddata_mg', '删除产量日志', '4', '', null, 'icon-pencil', '0', 'qycl:mtqyclSenddata:delete', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:05', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqycl_senddata_input', '产量日志', '功能菜单_产量日志_产量日志_导入产量日志', 'mtqycl_senddata_mg', 'root,mtqycl_senddata_mg', '导入产量日志', '5', 'mtqyclSenddata/openInput.do?menuId=mtqycl_senddata_input', null, 'icon-pencil', '0', 'qycl:mtqyclSenddata:input', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:05', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqycl_senddata_mg', '功能菜单', '功能菜单_产量日志', 'root', 'root', '产量日志', '3', 'mtqyclSenddata/getPage.do?menuId=mtqycl_senddata_mg', '', 'base/images/tubiao/chanliang.png', '1', '', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:05', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqycl_senddata_output', '产量日志', '功能菜单_产量日志_产量日志_导出产量日志', 'mtqycl_senddata_mg', 'root,mtqycl_senddata_mg', '导出产量日志', '6', 'mtqyclSenddata/openOutput.do?menuId=mtqycl_senddata_output', null, 'icon-pencil', '0', 'qycl:mtqyclSenddata:output', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:05', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqycl_senddata_save', '产量日志', '功能菜单_产量日志_添加产量日志', 'mtqycl_senddata_mg', 'root,mtqycl_senddata_mg', '添加产量日志', '2', 'mtqyclSenddata/openSave.do?menuId=mtqycl_senddata_save', '', 'icon-pencil', '1', 'qycl:mtqyclSenddata:save', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-10-14 15:49:05', '-1', '0');
INSERT INTO `sys_menu` VALUES ('mtqycl_senddata_update', '产量日志', '功能菜单_产量日志_产量日志_修改产量日志', 'mtqycl_senddata_mg', 'root,mtqycl_senddata_mg', '修改产量日志', '3', 'mtqyclSenddata/openUpdate.do?menuId=mtqycl_senddata_update', null, 'icon-pencil', '0', 'qycl:mtqyclSenddata:update', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:05', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqycl_senddata_view', '产量日志', '功能菜单_产量日志_历史产量列表', 'mtqycl_senddata_mg', 'root,mtqycl_senddata_mg', '历史产量列表', '200021', 'mtqyclSenddata/getPageHis.do?menuId=mtqycl_senddata_view', '', 'icon-pencil', '1', 'qycl:mtqyclSenddata:view', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:05', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqykc_senddata_delete', '库存信息', '功能菜单_库存信息_库存信息_删除库存信息', 'mtqykc_senddata_mg', 'root,mtqykc_senddata_mg', '删除库存信息', '4', '', null, 'icon-pencil', '0', 'qykc:mtqykcSenddata:delete', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:09:19', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqykc_senddata_input', '库存信息', '功能菜单_库存信息_库存信息_导入库存信息', 'mtqykc_senddata_mg', 'root,mtqykc_senddata_mg', '导入库存信息', '5', 'mtqykcSenddata/openInput.do?menuId=mtqykc_senddata_input', null, 'icon-pencil', '0', 'qykc:mtqykcSenddata:input', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:09:19', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqykc_senddata_mg', '功能菜单', '功能菜单_库存信息', 'root', 'root', '库存信息', '8', 'mtqykcSenddata/getPage.do?menuId=mtqykc_senddata_mg', '', 'base/images/tubiao/kucun.png', '1', '', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:09:19', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqykc_senddata_output', '库存信息', '功能菜单_库存信息_库存信息_导出库存信息', 'mtqykc_senddata_mg', 'root,mtqykc_senddata_mg', '导出库存信息', '6', 'mtqykcSenddata/openOutput.do?menuId=mtqykc_senddata_output', null, 'icon-pencil', '0', 'qykc:mtqykcSenddata:output', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:09:19', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqykc_senddata_save', '库存信息', '功能菜单_库存信息_添加库存信息', 'mtqykc_senddata_mg', 'root,mtqykc_senddata_mg', '添加库存信息', '200046', 'mtqykcSenddata/openSave.do?menuId=mtqykc_senddata_save', '', 'icon-pencil', '1', 'qykc:mtqykcSenddata:save', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:09:19', '-1', '0');
INSERT INTO `sys_menu` VALUES ('mtqykc_senddata_update', '库存信息', '功能菜单_库存信息_库存信息_修改库存信息', 'mtqykc_senddata_mg', 'root,mtqykc_senddata_mg', '修改库存信息', '3', 'mtqykcSenddata/openUpdate.do?menuId=mtqykc_senddata_update', null, 'icon-pencil', '0', 'qykc:mtqykcSenddata:update', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:09:19', null, '0');
INSERT INTO `sys_menu` VALUES ('mtqykc_senddata_view', '库存信息', '功能菜单_库存信息_历史库存列表', 'mtqykc_senddata_mg', 'root,mtqykc_senddata_mg', '历史库存列表', '200058', 'mtqykcSenddata/getPageHis.do?menuId=mtqykc_senddata_view', '', 'icon-pencil', '1', 'qykc:mtqykcSenddata:view', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:09:19', null, '0');
INSERT INTO `sys_menu` VALUES ('mttlys_senddata_delete', '运输信息', '功能菜单_运输信息_运输信息_删除运输信息', 'mttlys_senddata_mg', 'root,mttlys_senddata_mg', '删除运输信息', '4', '', null, 'icon-pencil', '0', 'tlys:mttlysSenddata:delete', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:23', null, '0');
INSERT INTO `sys_menu` VALUES ('mttlys_senddata_input', '运输信息', '功能菜单_运输信息_运输信息_导入运输信息', 'mttlys_senddata_mg', 'root,mttlys_senddata_mg', '导入运输信息', '5', 'mttlysSenddata/openInput.do?menuId=mttlys_senddata_input', null, 'icon-pencil', '0', 'tlys:mttlysSenddata:input', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:23', null, '0');
INSERT INTO `sys_menu` VALUES ('mttlys_senddata_mg', '功能菜单', '功能菜单_运输信息', 'root', 'root', '运输信息', '5', 'mttlysSenddata/getPage.do?menuId=mttlys_senddata_mg', '', 'base/images/tubiao/tielu.png', '1', '', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:23', null, '0');
INSERT INTO `sys_menu` VALUES ('mttlys_senddata_output', '运输信息', '功能菜单_运输信息_运输信息_导出运输信息', 'mttlys_senddata_mg', 'root,mttlys_senddata_mg', '导出运输信息', '6', 'mttlysSenddata/openOutput.do?menuId=mttlys_senddata_output', null, 'icon-pencil', '0', 'tlys:mttlysSenddata:output', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:23', null, '0');
INSERT INTO `sys_menu` VALUES ('mttlys_senddata_save', '运输信息', '功能菜单_运输信息_添加运输信息', 'mttlys_senddata_mg', 'root,mttlys_senddata_mg', '添加运输信息', '2', 'mttlysSenddata/openSave.do?menuId=mttlys_senddata_save', '', 'icon-pencil', '1', 'tlys:mttlysSenddata:save', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:23', '-1', '0');
INSERT INTO `sys_menu` VALUES ('mttlys_senddata_update', '运输信息', '功能菜单_运输信息_运输信息_修改运输信息', 'mttlys_senddata_mg', 'root,mttlys_senddata_mg', '修改运输信息', '3', 'mttlysSenddata/openUpdate.do?menuId=mttlys_senddata_update', null, 'icon-pencil', '0', 'tlys:mttlysSenddata:update', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:23', null, '0');
INSERT INTO `sys_menu` VALUES ('mttlys_senddata_view', '运输信息', '功能菜单_运输信息_历史运输列表', 'mttlys_senddata_mg', 'root,mttlys_senddata_mg', '历史运输列表', '200028', 'mttlysSenddata/getPageHis.do?menuId=mttlys_senddata_view', '', 'icon-pencil', '1', 'tlys:mttlysSenddata:view', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:08:23', null, '0');
INSERT INTO `sys_menu` VALUES ('mtwg_senddata_delete', '外购日志', '功能菜单_外购日志_外购日志_删除外购日志', 'mtwg_senddata_mg', 'root,mtwg_senddata_mg', '删除外购日志', '4', '', null, 'icon-pencil', '0', 'wg:mtwgSenddata:delete', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:32', null, '0');
INSERT INTO `sys_menu` VALUES ('mtwg_senddata_input', '外购日志', '功能菜单_外购日志_外购日志_导入外购日志', 'mtwg_senddata_mg', 'root,mtwg_senddata_mg', '导入外购日志', '5', 'mtwgSenddata/openInput.do?menuId=mtwg_senddata_input', null, 'icon-pencil', '0', 'wg:mtwgSenddata:input', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:32', null, '0');
INSERT INTO `sys_menu` VALUES ('mtwg_senddata_mg', '功能菜单', '功能菜单_外购日志', 'root', 'root', '外购日志', '11', 'mtwgSenddata/getPage.do?menuId=mtwg_senddata_mg', '', 'base/images/tubiao/waigou.png', '1', '', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:32', null, '0');
INSERT INTO `sys_menu` VALUES ('mtwg_senddata_output', '外购日志', '功能菜单_外购日志_外购日志_导出外购日志', 'mtwg_senddata_mg', 'root,mtwg_senddata_mg', '导出外购日志', '6', 'mtwgSenddata/openOutput.do?menuId=mtwg_senddata_output', null, 'icon-pencil', '0', 'wg:mtwgSenddata:output', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:32', null, '0');
INSERT INTO `sys_menu` VALUES ('mtwg_senddata_save', '外购日志', '功能菜单_外购日志_添加外购日志', 'mtwg_senddata_mg', 'root,mtwg_senddata_mg', '添加外购日志', '200067', 'mtwgSenddata/openSave.do?menuId=mtwg_senddata_save', '', 'icon-pencil', '1', 'wg:mtwgSenddata:save', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-10-14 15:48:14', '-1', '0');
INSERT INTO `sys_menu` VALUES ('mtwg_senddata_update', '外购日志', '功能菜单_外购日志_外购日志_修改外购日志', 'mtwg_senddata_mg', 'root,mtwg_senddata_mg', '修改外购日志', '3', 'mtwgSenddata/openUpdate.do?menuId=mtwg_senddata_update', null, 'icon-pencil', '0', 'wg:mtwgSenddata:update', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:16:32', null, '0');
INSERT INTO `sys_menu` VALUES ('mtwg_senddata_view', '外购日志', '功能菜单_外购日志_历史外购列表', 'mtwg_senddata_mg', 'root,mtwg_senddata_mg', '历史外购列表', '200082', 'mtwgSenddata/getPageHis.do?menuId=mtwg_senddata_view', '', 'icon-pencil', '1', 'wg:mtwgSenddata:view', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-20 10:28:55', null, '0');
INSERT INTO `sys_menu` VALUES ('mt_url_interface_delete', '接口管理', '功能菜单_接口管理_接口管理_删除接口管理', 'mt_url_interface_mg', 'root,mt_url_interface_mg', '删除接口管理', '4', '', null, 'icon-pencil', '0', 'rulface:mtUrlInterface:delete', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mt_url_interface_input', '接口管理', '功能菜单_接口管理_接口管理_导入接口管理', 'mt_url_interface_mg', 'root,mt_url_interface_mg', '导入接口管理', '5', 'mtUrlInterface/openInput.do?menuId=mt_url_interface_input', null, 'icon-pencil', '0', 'rulface:mtUrlInterface:input', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mt_url_interface_mg', '功能菜单', '功能菜单_接口管理', 'root', 'root', '接口管理', '20', 'mtUrlInterface/getPage.do?menuId=mt_url_interface_mg', '', 'base/images/tubiao/jiekou.png', '1', '', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mt_url_interface_output', '接口管理', '功能菜单_接口管理_接口管理_导出接口管理', 'mt_url_interface_mg', 'root,mt_url_interface_mg', '导出接口管理', '6', 'mtUrlInterface/openOutput.do?menuId=mt_url_interface_output', null, 'icon-pencil', '0', 'rulface:mtUrlInterface:output', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mt_url_interface_save', '接口管理', '功能菜单_接口管理_接口管理_添加接口管理', 'mt_url_interface_mg', 'root,mt_url_interface_mg', '添加接口管理', '2', 'mtUrlInterface/openSave.do?menuId=mt_url_interface_save', null, 'icon-pencil', '0', 'rulface:mtUrlInterface:save', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mt_url_interface_update', '接口管理', '功能菜单_接口管理_接口管理_修改接口管理', 'mt_url_interface_mg', 'root,mt_url_interface_mg', '修改接口管理', '3', 'mtUrlInterface/openUpdate.do?menuId=mt_url_interface_update', null, 'icon-pencil', '0', 'rulface:mtUrlInterface:update', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('mt_url_interface_view', '接口管理', '功能菜单_接口管理_接口管理_接口管理列表', 'mt_url_interface_mg', 'root,mt_url_interface_mg', '接口管理列表', '1', 'mtUrlInterface/getPage.do?menuId=mt_url_interface_view', null, 'icon-pencil', '1', 'rulface:mtUrlInterface:view', '陈友华', '2016-08-19 00:00:00', 'admin', '2016-09-13 09:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('root', '功能菜单', '功能菜单', 'root', 'root', '功能菜单', '0', null, null, null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_dict_delete', '字典管理', '功能菜单_系统管理_字典管理_字典管理_删除字典', 'sys_dict_mg', 'root,402880f653ac86fd0153ac8947810000,sys_dict_mg', '删除字典', '100', '', null, 'icon-pencil', '0', 'sys:sysDict:delete', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_dict_input', '字典管理', '功能菜单_系统管理_字典管理_字典管理_导入字典', 'sys_dict_mg', 'root,402880f653ac86fd0153ac8947810000,sys_dict_mg', '导入字典', '100', 'sysDict/openInput.do?menuId=sys_dict_input', null, 'icon-pencil', '0', 'sys:sysDict:input', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_dict_mg', '系统管理', '功能菜单_系统管理_字典管理', '402880f653ac86fd0153ac8947810000', 'root,402880f653ac86fd0153ac8947810000', '字典管理', '7', 'sysDict/getPage.do?menuId=sys_dict_mg', '', 'icon-pencil', '1', '', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_dict_output', '字典管理', '功能菜单_系统管理_字典管理_字典管理_导出字典', 'sys_dict_mg', 'root,402880f653ac86fd0153ac8947810000,sys_dict_mg', '导出字典', '100', 'sysDict/openOutput.do?menuId=sys_dict_output', null, 'icon-pencil', '0', 'sys:sysDict:output', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_dict_save', '字典管理', '功能菜单_系统管理_字典管理_字典管理_添加字典', 'sys_dict_mg', 'root,402880f653ac86fd0153ac8947810000,sys_dict_mg', '添加字典', '100', 'sysDict/openSave.do?menuId=sys_dict_save', null, 'icon-pencil', '0', 'sys:sysDict:save', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_dict_update', '字典管理', '功能菜单_系统管理_字典管理_字典管理_修改字典', 'sys_dict_mg', 'root,402880f653ac86fd0153ac8947810000,sys_dict_mg', '修改字典', '100', 'sysDict/openUpdate.do?menuId=sys_dict_update', null, 'icon-pencil', '0', 'sys:sysDict:update', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_dict_view', '字典管理', '功能菜单_系统管理_字典管理_字典管理_字典列表', 'sys_dict_mg', 'root,402880f653ac86fd0153ac8947810000,sys_dict_mg', '字典列表', '100', 'sysDict/getPage.do?menuId=sys_dict_view', null, 'icon-pencil', '1', 'sys:sysDict:view', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_log_delete', '日志管理', '功能菜单_系统管理_日志管理_操作日志_删除日志', 'sys_log_mg', 'root,402880f653ac86fd0153ac8947810000,sys_log_mg', '删除日志', '4', '', null, 'icon-pencil', '0', 'sys:sysLog:delete', '陈友华', '2016-04-09 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_log_input', '日志管理', '功能菜单_系统管理_日志管理_操作日志_导入日志', 'sys_log_mg', 'root,402880f653ac86fd0153ac8947810000,sys_log_mg', '导入日志', '5', 'sysLog/openInput.do?menuId=sys_log_input', null, 'icon-pencil', '0', 'sys:sysLog:input', '陈友华', '2016-04-09 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_log_mg', '系统管理', '功能菜单_系统管理_日志管理', '402880f653ac86fd0153ac8947810000', 'root,402880f653ac86fd0153ac8947810000', '日志管理', '1', 'sysLog/getPage.do?menuId=sys_log_mg', '', 'base/images/tubiao/xitong.png', '1', '', '陈友华', '2016-04-09 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_log_output', '日志管理', '功能菜单_系统管理_日志管理_操作日志_导出日志', 'sys_log_mg', 'root,402880f653ac86fd0153ac8947810000,sys_log_mg', '导出日志', '6', 'sysLog/openOutput.do?menuId=sys_log_output', null, 'icon-pencil', '0', 'sys:sysLog:output', '陈友华', '2016-04-09 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_log_save', '日志管理', '功能菜单_系统管理_日志管理_操作日志_添加日志', 'sys_log_mg', 'root,402880f653ac86fd0153ac8947810000,sys_log_mg', '添加日志', '2', 'sysLog/openSave.do?menuId=sys_log_save', null, 'icon-pencil', '0', 'sys:sysLog:save', '陈友华', '2016-04-09 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_log_update', '日志管理', '功能菜单_系统管理_日志管理_操作日志_修改日志', 'sys_log_mg', 'root,402880f653ac86fd0153ac8947810000,sys_log_mg', '修改日志', '3', 'sysLog/openUpdate.do?menuId=sys_log_update', null, 'icon-pencil', '0', 'sys:sysLog:update', '陈友华', '2016-04-09 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_log_view', '日志管理', '功能菜单_系统管理_日志管理_操作日志_日志列表', 'sys_log_mg', 'root,402880f653ac86fd0153ac8947810000,sys_log_mg', '日志列表', '1', 'sysLog/getPage.do?menuId=sys_log_view', null, 'icon-pencil', '1', 'sys:sysLog:view', '陈友华', '2016-04-09 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_menu_delete', '菜单管理', '功能菜单_系统管理_菜单管理_菜单管理_删除菜单', 'sys_menu_mg', 'root,402880f653ac86fd0153ac8947810000,sys_menu_mg', '删除菜单', '100', '', null, 'icon-pencil', '0', 'sys:sysMenu:delete', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_menu_input', '菜单管理', '功能菜单_系统管理_菜单管理_菜单管理_导入菜单', 'sys_menu_mg', 'root,402880f653ac86fd0153ac8947810000,sys_menu_mg', '导入菜单', '100', 'sysMenu/openInput.do?menuId=sys_menu_input', null, 'icon-pencil', '0', 'sys:sysMenu:input', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_menu_mg', '系统管理', '功能菜单_系统管理_菜单管理', '402880f653ac86fd0153ac8947810000', 'root,402880f653ac86fd0153ac8947810000', '菜单管理', '100', 'sysMenu/getPageTree.do?menuId=sys_menu_mg', '', 'icon-pencil', '1', '', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_menu_output', '菜单管理', '功能菜单_系统管理_菜单管理_菜单管理_导出菜单', 'sys_menu_mg', 'root,402880f653ac86fd0153ac8947810000,sys_menu_mg', '导出菜单', '100', 'sysMenu/openOutput.do?menuId=sys_menu_output', null, 'icon-pencil', '0', 'sys:sysMenu:output', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_menu_save', '菜单管理', '功能菜单_系统管理_菜单管理_菜单管理_添加菜单', 'sys_menu_mg', 'root,402880f653ac86fd0153ac8947810000,sys_menu_mg', '添加菜单', '100', 'sysMenu/openSave.do?menuId=sys_menu_save', null, 'icon-pencil', '0', 'sys:sysMenu:save', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_menu_update', '菜单管理', '功能菜单_系统管理_菜单管理_菜单管理_修改菜单', 'sys_menu_mg', 'root,402880f653ac86fd0153ac8947810000,sys_menu_mg', '修改菜单', '100', 'sysMenu/openUpdate.do?menuId=sys_menu_update', null, 'icon-pencil', '0', 'sys:sysMenu:update', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_menu_view', '菜单管理', '功能菜单_系统管理_菜单管理_菜单管理_菜单列表', 'sys_menu_mg', 'root,402880f653ac86fd0153ac8947810000,sys_menu_mg', '菜单列表', '100', 'sysMenu/getPage.do?menuId=sys_menu_view', '', 'icon-pencil', '1', 'sys:sysMenu:view', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_office_delete', '机构管理', '功能菜单_系统管理_机构管理_机构管理_删除单位', 'sys_office_mg', 'root,402880f653ac86fd0153ac8947810000,sys_office_mg', '删除单位', '100', '', null, 'icon-pencil', '0', 'sys:sysOffice:delete', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_office_input', '机构管理', '功能菜单_系统管理_机构管理_机构管理_导入单位', 'sys_office_mg', 'root,402880f653ac86fd0153ac8947810000,sys_office_mg', '导入单位', '100', 'sysOffice/openInput.do?menuId=sys_office_input', null, 'icon-pencil', '0', 'sys:sysOffice:input', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_office_mg', '系统管理', '功能菜单_系统管理_机构管理', '402880f653ac86fd0153ac8947810000', 'root,402880f653ac86fd0153ac8947810000', '机构管理', '100', 'sysOffice/getPageTree.do?menuId=sys_office_mg', '', 'icon-pencil', '1', '', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_office_output', '机构管理', '功能菜单_系统管理_机构管理_机构管理_导出单位', 'sys_office_mg', 'root,402880f653ac86fd0153ac8947810000,sys_office_mg', '导出单位', '100', 'sysOffice/openOutput.do?menuId=sys_office_output', null, 'icon-pencil', '0', 'sys:sysOffice:output', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_office_save', '机构管理', '功能菜单_系统管理_机构管理_机构管理_添加单位', 'sys_office_mg', 'root,402880f653ac86fd0153ac8947810000,sys_office_mg', '添加单位', '100', 'sysOffice/openSave.do?menuId=sys_office_save', null, 'icon-pencil', '0', 'sys:sysOffice:save', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_office_update', '机构管理', '功能菜单_系统管理_机构管理_机构管理_修改单位', 'sys_office_mg', 'root,402880f653ac86fd0153ac8947810000,sys_office_mg', '修改单位', '100', 'sysOffice/openUpdate.do?menuId=sys_office_update', null, 'icon-pencil', '0', 'sys:sysOffice:update', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_office_view', '机构管理', '功能菜单_系统管理_机构管理_机构管理_单位列表', 'sys_office_mg', 'root,402880f653ac86fd0153ac8947810000,sys_office_mg', '单位列表', '100', 'sysOffice/getPageTree.do?menuId=sys_office_view', '', 'icon-pencil', '1', 'sys:sysOffice:view', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_office_viewtree', '机构管理', '功能菜单_系统管理_机构管理_机构管理_单位树列表', 'sys_office_mg', 'root,402880f653ac86fd0153ac8947810000,sys_office_mg', '单位树列表', '100', 'sysOffice/getPageTree.do?menuId=sys_office_viewtree', null, 'icon-pencil', '1', 'sys:sysOffice:view', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_rolet_delete', '角色管理', '功能菜单_系统管理_角色管理_角色管理_删除角色', 'sys_rolet_mg', 'root,402880f653ac86fd0153ac8947810000,sys_rolet_mg', '删除角色', '100', '', null, 'icon-pencil', '0', 'sys:sysRole:delete', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_rolet_input', '角色管理', '功能菜单_系统管理_角色管理_角色管理_导入角色', 'sys_rolet_mg', 'root,402880f653ac86fd0153ac8947810000,sys_rolet_mg', '导入角色', '100', 'sysRole/openInput.do?menuId=sys_rolet_input', null, 'icon-pencil', '0', 'sys:sysRole:input', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_rolet_mg', '系统管理', '功能菜单_系统管理_角色管理', '402880f653ac86fd0153ac8947810000', 'root,402880f653ac86fd0153ac8947810000', '角色管理', '100', 'sysRole/getPage.do?menuId=sys_rolet_mg', '', 'icon-pencil', '1', '', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_rolet_output', '角色管理', '功能菜单_系统管理_角色管理_角色管理_导出角色', 'sys_rolet_mg', 'root,402880f653ac86fd0153ac8947810000,sys_rolet_mg', '导出角色', '100', 'sysRole/openOutput.do?menuId=sys_rolet_output', null, 'icon-pencil', '0', 'sys:sysRole:output', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_rolet_save', '角色管理', '功能菜单_系统管理_角色管理_角色管理_添加角色', 'sys_rolet_mg', 'root,402880f653ac86fd0153ac8947810000,sys_rolet_mg', '添加角色', '100', 'sysRole/openSave.do?menuId=sys_rolet_save', null, 'icon-pencil', '0', 'sys:sysRole:save', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_rolet_update', '角色管理', '功能菜单_系统管理_角色管理_角色管理_修改角色', 'sys_rolet_mg', 'root,402880f653ac86fd0153ac8947810000,sys_rolet_mg', '修改角色', '100', 'sysRole/openUpdate.do?menuId=sys_rolet_update', null, 'icon-pencil', '0', 'sys:sysRole:update', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_rolet_view', '角色管理', '功能菜单_系统管理_角色管理_角色管理_角色列表', 'sys_rolet_mg', 'root,402880f653ac86fd0153ac8947810000,sys_rolet_mg', '角色列表', '100', 'sysRole/getPage.do?menuId=sys_rolet_view', null, 'icon-pencil', '1', 'sys:sysRole:view', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_user_delete', '用户管理', '功能菜单_系统管理_用户管理_用户管理_删除用户', 'sys_user_mg', 'root,402880f653ac86fd0153ac8947810000,sys_user_mg', '删除用户', '100', '', null, 'icon-pencil', '0', 'sys:sysUser:delete', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_user_input', '用户管理', '功能菜单_系统管理_用户管理_用户管理_导入用户', 'sys_user_mg', 'root,402880f653ac86fd0153ac8947810000,sys_user_mg', '导入用户', '100', 'sysUser/openInput.do?menuId=sys_user_input', null, 'icon-pencil', '0', 'sys:sysUser:input', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_user_mg', '系统管理', '功能菜单_系统管理_用户管理', '402880f653ac86fd0153ac8947810000', 'root,402880f653ac86fd0153ac8947810000', '用户管理', '100', 'sysUser/getPage.do?menuId=sys_user_mg', '', 'icon-pencil', '1', '', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_user_output', '用户管理', '功能菜单_系统管理_用户管理_用户管理_导出用户', 'sys_user_mg', 'root,402880f653ac86fd0153ac8947810000,sys_user_mg', '导出用户', '100', 'sysUser/openOutput.do?menuId=sys_user_output', null, 'icon-pencil', '0', 'sys:sysUser:output', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_user_save', '用户管理', '功能菜单_系统管理_用户管理_用户管理_添加用户', 'sys_user_mg', 'root,402880f653ac86fd0153ac8947810000,sys_user_mg', '添加用户', '100', 'sysUser/openSave.do?menuId=sys_user_save', null, 'icon-pencil', '0', 'sys:sysUser:save', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_user_update', '用户管理', '功能菜单_系统管理_用户管理_用户管理_修改用户', 'sys_user_mg', 'root,402880f653ac86fd0153ac8947810000,sys_user_mg', '修改用户', '100', 'sysUser/openUpdate.do?menuId=sys_user_update', null, 'icon-pencil', '0', 'sys:sysUser:update', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('sys_user_view', '用户管理', '功能菜单_系统管理_用户管理_用户管理_用户列表', 'sys_user_mg', 'root,402880f653ac86fd0153ac8947810000,sys_user_mg', '用户列表', '100', 'sysUser/getPage.do?menuId=sys_user_view', null, 'icon-pencil', '1', 'sys:sysUser:view', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:51:09', null, '0');
INSERT INTO `sys_menu` VALUES ('tree_area_view', '字典信息', '功能菜单_字典信息_行政区列表', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '行政区列表', '100', 'treeArea/getPage.do?menuId=tree_area_view', '', 'icon-pencil', '0', 'tree:treeArea:view', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('tree_area_viewtree', '字典信息', '功能菜单_字典信息_行政区域', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '行政区域', '10', 'treeArea/getPageTree.do?menuId=tree_area_viewtree', '', 'icon-pencil', '1', 'tree:treeArea:view', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:49:29', null, '0');
INSERT INTO `sys_menu` VALUES ('tree_placetype_viewtree', '字典信息', '功能菜单_字典信息_场所类型', '402880f653ac86fd0153ac8bc35f0001', 'root,402880f653ac86fd0153ac8bc35f0001', '场所类型', '6', 'treePlacetype/getPageTree.do?menuId=tree_placetype_viewtree', '', 'icon-pencil', '0', 'tree:treePlacetype:view', '陈友华', '2016-03-24 00:00:00', 'admin', '2016-09-13 09:49:29', null, '0');

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_name` varchar(100) DEFAULT NULL COMMENT '父名称',
  `full_name` varchar(2000) DEFAULT NULL COMMENT '全名称',
  `parent_id` varchar(64) DEFAULT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) DEFAULT NULL COMMENT '所有父级编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序',
  `tree_area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` varchar(20) DEFAULT NULL COMMENT '机构类型',
  `grade` varchar(20) DEFAULT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`) USING BTREE,
  KEY `sys_office_del_flag` (`del_flag`) USING BTREE,
  KEY `sys_office_type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('4028801a5697077c0156970b2cbc0014', '组织机构', '组织机构_煤炭', 'root', 'root', '煤炭', '100002', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '2016-08-17 13:48:27', 'admin', '2016-08-17 13:48:46', null, '0');
INSERT INTO `sys_office` VALUES ('root', '组织机构', '组织机构', 'root', 'root', '组织机构', '10', '1', '100000', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-03-03 15:42:44', null, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_type` varchar(64) DEFAULT NULL COMMENT '权限类型',
  `sys_office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `data_scope` varchar(100) DEFAULT NULL COMMENT '数据范围',
  `use_able` varchar(20) DEFAULT NULL COMMENT '是否是可用',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'create_by',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'update_by',
  `update_date` datetime DEFAULT NULL COMMENT 'update_date',
  `remarks` varchar(225) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('40288009559adf6401559ae07406000a', '测试', '测试', '402880f653acb8800153acb994fd0000', '测试', '测试', 'admin', '2016-06-29 14:37:28', 'admin', '2016-08-17 13:48:12', '测试', '1');
INSERT INTO `sys_role` VALUES ('40288011540d14f201540d231da6007f', '开发人员', '开发使用', '402880f653acb8800153acb994fd0000', '', '', 'admin', '2016-04-13 09:01:25', 'admin', '2016-08-17 13:48:12', '', '1');
INSERT INTO `sys_role` VALUES ('4028808d55bf1a0c0155bf2d34ed001e', '测试', '', '', '', '', 'admin', '2016-07-06 15:47:38', 'admin', '2016-08-17 13:48:12', '', '1');
INSERT INTO `sys_role` VALUES ('4028808d55c30df40155c34981813e80', '测试使用，请勿随意操作', '超级管理员', '402880f653acb8800153acb994fd0000', '全部', '是', 'admin', '2016-07-07 10:57:02', 'admin', '2016-08-17 13:48:12', '测试使用，请勿随意操作---刘永顺', '1');
INSERT INTO `sys_role` VALUES ('402880f653acde580153acdfc3d80000', '系统管理员', 'admin', '402880f653acb8800153acb994fd0000', '', '', 'dev', '2016-03-25 16:24:19', 'admin', '2016-08-17 13:48:12', '', '1');
INSERT INTO `sys_role` VALUES ('402880f953bc31790153bc9f8fea0000', '科员', '科中', '402880f653acb8800153acb994fd0000', '1', '1', 'devTest', '2016-03-28 17:48:06', 'admin', '2016-08-17 13:48:12', '1', '1');
INSERT INTO `sys_role` VALUES ('4028d08157c1e0650157c257286a00b1', '分管领导', '', '4028801a5697077c0156970b2cbc0014', '', '', 'admin', '2016-10-14 16:37:54', 'admin', '2016-10-14 16:37:54', '', '0');
INSERT INTO `sys_role` VALUES ('4028d08157c1e0650157c257753500b2', '调度主任', '', '4028801a5697077c0156970b2cbc0014', '', '', 'admin', '2016-10-14 16:38:14', 'admin', '2016-10-14 16:38:14', '', '0');
INSERT INTO `sys_role` VALUES ('4028d08157c1e0650157c25805b700b3', '副主任', '', '4028801a5697077c0156970b2cbc0014', '', '', 'admin', '2016-10-14 16:38:51', 'admin', '2016-10-14 16:38:51', '', '0');
INSERT INTO `sys_role` VALUES ('4028d08157c1e0650157c25831c500b4', '成员', '', '4028801a5697077c0156970b2cbc0014', '', '', 'admin', '2016-10-14 16:39:02', 'admin', '2016-10-14 16:39:02', '', '0');
INSERT INTO `sys_role` VALUES ('4028e681570d10e101570d14efcc0001', '县煤炭厅操作员', '', '4028801a5697077c0156970b2cbc0014', '', '', 'admin', '2016-09-09 11:54:18', 'admin', '2016-10-14 16:39:08', '', '1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `sys_role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `sys_menu_id` varchar(64) NOT NULL COMMENT '权限类型',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'create_by',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'update_by',
  `update_date` datetime DEFAULT NULL COMMENT 'update_date',
  `remarks` varchar(225) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_sys_menu`;
CREATE TABLE `sys_role_sys_menu` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `sys_role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `sys_menu_id` varchar(64) NOT NULL COMMENT '权限类型',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'create_by',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'update_by',
  `update_date` datetime DEFAULT NULL COMMENT 'update_date',
  `remarks` varchar(225) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of sys_role_sys_menu
-- ----------------------------
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158e0062', '4028e681570d10e101570d14efcc0001', 'mtmk_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158e0063', '4028e681570d10e101570d14efcc0001', 'mtmk_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158f0064', '4028e681570d10e101570d14efcc0001', 'mtmk_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158f0065', '4028e681570d10e101570d14efcc0001', 'mtmk_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158f0066', '4028e681570d10e101570d14efcc0001', 'mtmk_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158f0067', '4028e681570d10e101570d14efcc0001', '4028d0815716d3b3015716d4a99d0000', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158f0068', '4028e681570d10e101570d14efcc0001', '4028d08157178d2f0157178fa9a10000', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158f0069', '4028e681570d10e101570d14efcc0001', 'mtjy_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158f006a', '4028e681570d10e101570d14efcc0001', 'mtjy_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244158f006b', '4028e681570d10e101570d14efcc0001', 'mtjy_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441590006c', '4028e681570d10e101570d14efcc0001', 'mtjy_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441590006d', '4028e681570d10e101570d14efcc0001', 'mtjy_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441590006e', '4028e681570d10e101570d14efcc0001', 'mtjy_senddata_save', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441590006f', '4028e681570d10e101570d14efcc0001', 'mtjy_senddata_view', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415900070', '4028e681570d10e101570d14efcc0001', 'mtqycl_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415900071', '4028e681570d10e101570d14efcc0001', 'mtqycl_senddata_save', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415900072', '4028e681570d10e101570d14efcc0001', 'mtqycl_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415900073', '4028e681570d10e101570d14efcc0001', 'mtqycl_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415910074', '4028e681570d10e101570d14efcc0001', 'mtqycl_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415910075', '4028e681570d10e101570d14efcc0001', 'mtqycl_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415910076', '4028e681570d10e101570d14efcc0001', 'mtqycl_senddata_view', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415910077', '4028e681570d10e101570d14efcc0001', 'mttlys_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415910078', '4028e681570d10e101570d14efcc0001', 'mttlys_senddata_save', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415910079', '4028e681570d10e101570d14efcc0001', 'mttlys_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441591007a', '4028e681570d10e101570d14efcc0001', 'mttlys_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441591007b', '4028e681570d10e101570d14efcc0001', 'mttlys_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441591007c', '4028e681570d10e101570d14efcc0001', 'mttlys_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441592007d', '4028e681570d10e101570d14efcc0001', 'mttlys_senddata_view', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441592007e', '4028e681570d10e101570d14efcc0001', 'mtbdbb_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441592007f', '4028e681570d10e101570d14efcc0001', 'mtbdbb_senddata_save', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415920080', '4028e681570d10e101570d14efcc0001', 'mtbdbb_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415920081', '4028e681570d10e101570d14efcc0001', 'mtbdbb_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415920082', '4028e681570d10e101570d14efcc0001', 'mtbdbb_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415920083', '4028e681570d10e101570d14efcc0001', 'mtbdbb_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415920084', '4028e681570d10e101570d14efcc0001', 'mtbdbb_senddata_view', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415930085', '4028e681570d10e101570d14efcc0001', 'mtqybd_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415930086', '4028e681570d10e101570d14efcc0001', 'mtqybd_senddata_save', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415930087', '4028e681570d10e101570d14efcc0001', 'mtqybd_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415930088', '4028e681570d10e101570d14efcc0001', 'mtqybd_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415930089', '4028e681570d10e101570d14efcc0001', 'mtqybd_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441593008a', '4028e681570d10e101570d14efcc0001', 'mtqybd_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441593008b', '4028e681570d10e101570d14efcc0001', '402880ee5716fb340157170d3e560004', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441593008c', '4028e681570d10e101570d14efcc0001', 'mtqybd_senddata_view', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441593008d', '4028e681570d10e101570d14efcc0001', 'mtqykc_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441594008e', '4028e681570d10e101570d14efcc0001', 'mtqykc_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441594008f', '4028e681570d10e101570d14efcc0001', 'mtqykc_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415940090', '4028e681570d10e101570d14efcc0001', 'mtqykc_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415940091', '4028e681570d10e101570d14efcc0001', 'mtqykc_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415940092', '4028e681570d10e101570d14efcc0001', 'mtqykc_senddata_save', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415940093', '4028e681570d10e101570d14efcc0001', '402880ee5716fb340157170f86c20005', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415940094', '4028e681570d10e101570d14efcc0001', 'mtqykc_senddata_view', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415940095', '4028e681570d10e101570d14efcc0001', 'mtht_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415950096', '4028e681570d10e101570d14efcc0001', 'mtht_senddata_save', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415950097', '4028e681570d10e101570d14efcc0001', 'mtht_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415950098', '4028e681570d10e101570d14efcc0001', 'mtht_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c24415950099', '4028e681570d10e101570d14efcc0001', 'mtht_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441595009a', '4028e681570d10e101570d14efcc0001', 'mtht_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441595009b', '4028e681570d10e101570d14efcc0001', '402880ee5716fb3401571711aee30006', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441595009c', '4028e681570d10e101570d14efcc0001', 'mtht_senddata_view', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441595009d', '4028e681570d10e101570d14efcc0001', 'mtjs_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441595009e', '4028e681570d10e101570d14efcc0001', 'mtjs_senddata_save', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c2441596009f', '4028e681570d10e101570d14efcc0001', 'mtjs_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159600a0', '4028e681570d10e101570d14efcc0001', 'mtjs_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159600a1', '4028e681570d10e101570d14efcc0001', 'mtjs_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159600a2', '4028e681570d10e101570d14efcc0001', 'mtjs_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159600a3', '4028e681570d10e101570d14efcc0001', '402880ee5716fb3401571713a10b0007', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159600a4', '4028e681570d10e101570d14efcc0001', 'mtjs_senddata_view', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159600a5', '4028e681570d10e101570d14efcc0001', 'mtwg_senddata_mg', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159600a6', '4028e681570d10e101570d14efcc0001', 'mtwg_senddata_update', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159700a7', '4028e681570d10e101570d14efcc0001', 'mtwg_senddata_delete', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159700a8', '4028e681570d10e101570d14efcc0001', 'mtwg_senddata_input', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159700a9', '4028e681570d10e101570d14efcc0001', 'mtwg_senddata_output', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159700aa', '4028e681570d10e101570d14efcc0001', 'mtwg_senddata_save', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159700ab', '4028e681570d10e101570d14efcc0001', '402880ee5716fb3401571714bd6d0008', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c244159700ac', '4028e681570d10e101570d14efcc0001', 'mtwg_senddata_view', 'admin', '2016-10-14 16:17:04', 'admin', '2016-10-14 16:17:04', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49a0151', '4028d08157c1e0650157c257753500b2', 'root', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49a0152', '4028d08157c1e0650157c257753500b2', 'mtmk_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49a0153', '4028d08157c1e0650157c257753500b2', 'mtmk_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49a0154', '4028d08157c1e0650157c257753500b2', 'mtmk_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49a0155', '4028d08157c1e0650157c257753500b2', 'mtmk_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49a0156', '4028d08157c1e0650157c257753500b2', 'mtmk_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49a0157', '4028d08157c1e0650157c257753500b2', '4028d0815716d3b3015716d4a99d0000', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49a0158', '4028d08157c1e0650157c257753500b2', 'mtmk_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49b0159', '4028d08157c1e0650157c257753500b2', '4028d08157178d2f0157178fa9a10000', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49b015a', '4028d08157c1e0650157c257753500b2', 'mtjy_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49b015b', '4028d08157c1e0650157c257753500b2', 'mtjy_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49b015c', '4028d08157c1e0650157c257753500b2', 'mtjy_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49b015d', '4028d08157c1e0650157c257753500b2', 'mtjy_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49b015e', '4028d08157c1e0650157c257753500b2', 'mtjy_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49b015f', '4028d08157c1e0650157c257753500b2', 'mtjy_senddata_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49b0160', '4028d08157c1e0650157c257753500b2', '402880ee5716fb340157170142670000', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49c0161', '4028d08157c1e0650157c257753500b2', 'mtjy_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49c0162', '4028d08157c1e0650157c257753500b2', 'mtqycl_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49c0163', '4028d08157c1e0650157c257753500b2', 'mtqycl_senddata_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49c0164', '4028d08157c1e0650157c257753500b2', 'mtqycl_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49c0165', '4028d08157c1e0650157c257753500b2', 'mtqycl_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49c0166', '4028d08157c1e0650157c257753500b2', 'mtqycl_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49c0167', '4028d08157c1e0650157c257753500b2', 'mtqycl_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49c0168', '4028d08157c1e0650157c257753500b2', '402880ee5716fb34015717078c5c0001', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49c0169', '4028d08157c1e0650157c257753500b2', 'mtqycl_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49d016a', '4028d08157c1e0650157c257753500b2', 'mttlys_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49d016b', '4028d08157c1e0650157c257753500b2', 'mttlys_senddata_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49d016c', '4028d08157c1e0650157c257753500b2', 'mttlys_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49d016d', '4028d08157c1e0650157c257753500b2', 'mttlys_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49d016e', '4028d08157c1e0650157c257753500b2', 'mttlys_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49d016f', '4028d08157c1e0650157c257753500b2', 'mttlys_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49d0170', '4028d08157c1e0650157c257753500b2', '402880ee5716fb340157170aa49e0002', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49d0171', '4028d08157c1e0650157c257753500b2', 'mttlys_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49d0172', '4028d08157c1e0650157c257753500b2', 'mtbdbb_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49e0173', '4028d08157c1e0650157c257753500b2', 'mtbdbb_senddata_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49e0174', '4028d08157c1e0650157c257753500b2', 'mtbdbb_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49e0175', '4028d08157c1e0650157c257753500b2', 'mtbdbb_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49e0176', '4028d08157c1e0650157c257753500b2', 'mtbdbb_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49e0177', '4028d08157c1e0650157c257753500b2', 'mtbdbb_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49e0178', '4028d08157c1e0650157c257753500b2', '402880ee5716fb340157170bad830003', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49e0179', '4028d08157c1e0650157c257753500b2', 'mtbdbb_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49e017a', '4028d08157c1e0650157c257753500b2', 'mtqybd_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49f017b', '4028d08157c1e0650157c257753500b2', 'mtqybd_senddata_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49f017c', '4028d08157c1e0650157c257753500b2', 'mtqybd_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49f017d', '4028d08157c1e0650157c257753500b2', 'mtqybd_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49f017e', '4028d08157c1e0650157c257753500b2', 'mtqybd_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49f017f', '4028d08157c1e0650157c257753500b2', 'mtqybd_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49f0180', '4028d08157c1e0650157c257753500b2', '402880ee5716fb340157170d3e560004', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49f0181', '4028d08157c1e0650157c257753500b2', 'mtqybd_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae49f0182', '4028d08157c1e0650157c257753500b2', 'mtqykc_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a00183', '4028d08157c1e0650157c257753500b2', 'mtqykc_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a00184', '4028d08157c1e0650157c257753500b2', 'mtqykc_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a00185', '4028d08157c1e0650157c257753500b2', 'mtqykc_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a00186', '4028d08157c1e0650157c257753500b2', 'mtqykc_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a00187', '4028d08157c1e0650157c257753500b2', 'mtqykc_senddata_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a00188', '4028d08157c1e0650157c257753500b2', '402880ee5716fb340157170f86c20005', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a00189', '4028d08157c1e0650157c257753500b2', 'mtqykc_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a1018a', '4028d08157c1e0650157c257753500b2', 'mtht_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a1018b', '4028d08157c1e0650157c257753500b2', 'mtht_senddata_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a1018c', '4028d08157c1e0650157c257753500b2', 'mtht_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a1018d', '4028d08157c1e0650157c257753500b2', 'mtht_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a1018e', '4028d08157c1e0650157c257753500b2', 'mtht_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a1018f', '4028d08157c1e0650157c257753500b2', 'mtht_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a10190', '4028d08157c1e0650157c257753500b2', '402880ee5716fb3401571711aee30006', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a10191', '4028d08157c1e0650157c257753500b2', 'mtht_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a20192', '4028d08157c1e0650157c257753500b2', 'mtjs_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a20193', '4028d08157c1e0650157c257753500b2', 'mtjs_senddata_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a20194', '4028d08157c1e0650157c257753500b2', 'mtjs_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a20195', '4028d08157c1e0650157c257753500b2', 'mtjs_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a20196', '4028d08157c1e0650157c257753500b2', 'mtjs_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a20197', '4028d08157c1e0650157c257753500b2', 'mtjs_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a20198', '4028d08157c1e0650157c257753500b2', '402880ee5716fb3401571713a10b0007', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a30199', '4028d08157c1e0650157c257753500b2', 'mtjs_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a3019a', '4028d08157c1e0650157c257753500b2', 'mtwg_senddata_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a3019b', '4028d08157c1e0650157c257753500b2', 'mtwg_senddata_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a3019c', '4028d08157c1e0650157c257753500b2', 'mtwg_senddata_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a3019d', '4028d08157c1e0650157c257753500b2', 'mtwg_senddata_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a3019e', '4028d08157c1e0650157c257753500b2', 'mtwg_senddata_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a3019f', '4028d08157c1e0650157c257753500b2', 'mtwg_senddata_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a301a0', '4028d08157c1e0650157c257753500b2', '402880ee5716fb3401571714bd6d0008', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a401a1', '4028d08157c1e0650157c257753500b2', 'mtwg_senddata_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a401a2', '4028d08157c1e0650157c257753500b2', '402880f653ac86fd0153ac8bc35f0001', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a401a3', '4028d08157c1e0650157c257753500b2', 'tree_placetype_viewtree', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a401a4', '4028d08157c1e0650157c257753500b2', 'tree_area_viewtree', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a401a5', '4028d08157c1e0650157c257753500b2', 'tree_area_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a401a6', '4028d08157c1e0650157c257753500b2', '402880ee57186dcc0157187342ea0000', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a401a7', '4028d08157c1e0650157c257753500b2', '402880ee57186dcc0157187386590001', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a401a8', '4028d08157c1e0650157c257753500b2', '402880ee57186dcc01571873d4be0002', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a501a9', '4028d08157c1e0650157c257753500b2', '402880ee57186dcc0157187754710003', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a501aa', '4028d08157c1e0650157c257753500b2', '402880ee57186dcc01571877862d0004', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a501ab', '4028d08157c1e0650157c257753500b2', '402880ee57186dcc01571877ad080005', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a501ac', '4028d08157c1e0650157c257753500b2', '402880ee57186dcc01571877af100006', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a501ad', '4028d08157c1e0650157c257753500b2', '402880ee57186dcc01571877b07c0007', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a501ae', '4028d08157c1e0650157c257753500b2', '402880ee57186dcc01571878713f0008', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a501af', '4028d08157c1e0650157c257753500b2', 'mt_url_interface_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a501b0', '4028d08157c1e0650157c257753500b2', 'mt_url_interface_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a601b1', '4028d08157c1e0650157c257753500b2', 'mt_url_interface_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a601b2', '4028d08157c1e0650157c257753500b2', 'mt_url_interface_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a601b3', '4028d08157c1e0650157c257753500b2', 'mt_url_interface_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a601b4', '4028d08157c1e0650157c257753500b2', 'mt_url_interface_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a601b5', '4028d08157c1e0650157c257753500b2', 'mt_url_interface_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a601b6', '4028d08157c1e0650157c257753500b2', 'login_parameter_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a601b7', '4028d08157c1e0650157c257753500b2', 'login_parameter_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a601b8', '4028d08157c1e0650157c257753500b2', 'login_parameter_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a601b9', '4028d08157c1e0650157c257753500b2', 'login_parameter_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a701ba', '4028d08157c1e0650157c257753500b2', 'login_parameter_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a701bb', '4028d08157c1e0650157c257753500b2', 'login_parameter_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a701bc', '4028d08157c1e0650157c257753500b2', 'login_parameter_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a701bd', '4028d08157c1e0650157c257753500b2', '402880f653ac86fd0153ac8947810000', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a701be', '4028d08157c1e0650157c257753500b2', 'sys_log_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a701bf', '4028d08157c1e0650157c257753500b2', 'sys_log_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a701c0', '4028d08157c1e0650157c257753500b2', 'sys_log_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a701c1', '4028d08157c1e0650157c257753500b2', 'sys_log_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a801c2', '4028d08157c1e0650157c257753500b2', 'sys_log_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a801c3', '4028d08157c1e0650157c257753500b2', 'sys_log_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a801c4', '4028d08157c1e0650157c257753500b2', 'sys_log_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a801c5', '4028d08157c1e0650157c257753500b2', 'sys_dict_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a801c6', '4028d08157c1e0650157c257753500b2', 'sys_dict_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a901c7', '4028d08157c1e0650157c257753500b2', 'sys_dict_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a901c8', '4028d08157c1e0650157c257753500b2', 'sys_dict_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a901c9', '4028d08157c1e0650157c257753500b2', 'sys_dict_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a901ca', '4028d08157c1e0650157c257753500b2', 'sys_dict_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4a901cb', '4028d08157c1e0650157c257753500b2', 'sys_dict_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4aa01cc', '4028d08157c1e0650157c257753500b2', 'sys_menu_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4aa01cd', '4028d08157c1e0650157c257753500b2', 'sys_menu_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4aa01ce', '4028d08157c1e0650157c257753500b2', 'sys_menu_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4aa01cf', '4028d08157c1e0650157c257753500b2', 'sys_menu_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4aa01d0', '4028d08157c1e0650157c257753500b2', 'sys_menu_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4aa01d1', '4028d08157c1e0650157c257753500b2', 'sys_menu_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ab01d2', '4028d08157c1e0650157c257753500b2', 'sys_menu_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ab01d3', '4028d08157c1e0650157c257753500b2', '402880f653abc66f0153abca584d0000', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ab01d4', '4028d08157c1e0650157c257753500b2', 'sys_user_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ab01d5', '4028d08157c1e0650157c257753500b2', 'sys_user_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ab01d6', '4028d08157c1e0650157c257753500b2', 'sys_user_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ac01d7', '4028d08157c1e0650157c257753500b2', 'sys_user_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ac01d8', '4028d08157c1e0650157c257753500b2', 'sys_user_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ac01d9', '4028d08157c1e0650157c257753500b2', 'sys_user_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ac01da', '4028d08157c1e0650157c257753500b2', 'sys_user_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ac01db', '4028d08157c1e0650157c257753500b2', 'sys_rolet_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ac01dc', '4028d08157c1e0650157c257753500b2', 'sys_rolet_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ad01dd', '4028d08157c1e0650157c257753500b2', 'sys_rolet_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ad01de', '4028d08157c1e0650157c257753500b2', 'sys_rolet_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ad01df', '4028d08157c1e0650157c257753500b2', 'sys_rolet_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ad01e0', '4028d08157c1e0650157c257753500b2', 'sys_rolet_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ad01e1', '4028d08157c1e0650157c257753500b2', 'sys_rolet_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ae01e2', '4028d08157c1e0650157c257753500b2', 'sys_office_mg', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ae01e3', '4028d08157c1e0650157c257753500b2', 'sys_office_save', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ae01e4', '4028d08157c1e0650157c257753500b2', 'sys_office_view', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ae01e5', '4028d08157c1e0650157c257753500b2', 'sys_office_input', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ae01e6', '4028d08157c1e0650157c257753500b2', 'sys_office_delete', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ae01e7', '4028d08157c1e0650157c257753500b2', 'sys_office_output', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ae01e8', '4028d08157c1e0650157c257753500b2', 'sys_office_update', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4ae01e9', '4028d08157c1e0650157c257753500b2', 'sys_office_viewtree', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');
INSERT INTO `sys_role_sys_menu` VALUES ('4028d08157c1e0650157c25ae4af01ea', '4028d08157c1e0650157c257753500b2', '402880ee572115f50157211677180000', 'admin', '2016-10-14 16:41:59', 'admin', '2016-10-14 16:41:59', null, '0');

-- ----------------------------
-- Table structure for sys_updownfile
-- ----------------------------
DROP TABLE IF EXISTS `sys_updownfile`;
CREATE TABLE `sys_updownfile` (
  `id` varchar(64) NOT NULL,
  `cont` varchar(100) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `filety` varchar(20) DEFAULT NULL,
  `loginfo` varchar(64) DEFAULT NULL,
  `nname` varchar(300) DEFAULT NULL,
  `oname` varchar(50) DEFAULT NULL,
  `sid` varchar(50) DEFAULT NULL,
  `uploadpath` varchar(500) DEFAULT NULL,
  `yn` bit(1) DEFAULT NULL,
  `time_up` datetime DEFAULT NULL,
  `fk_lc_user` varchar(64) DEFAULT NULL,
  `tableid` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统附件';

-- ----------------------------
-- Records of sys_updownfile
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) NOT NULL COMMENT '归属公司',
  `sys_office_id` varchar(64) NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` varchar(200) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`sys_office_id`) USING BTREE,
  KEY `sys_user_login_name` (`login_name`) USING BTREE,
  KEY `sys_user_company_id` (`company_id`) USING BTREE,
  KEY `sys_user_update_date` (`update_date`) USING BTREE,
  KEY `sys_user_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('4028d08157c1e0650157c259dded00b5', '4028801a5697077c0156970b2cbc0014', '4028801a5697077c0156970b2cbc0014', 'mt', '710998FD1B7C0235170265650770A4B1', '', '煤炭', '', '', '', null, null, '127.0.0.1', '2016-10-14 16:42:08', '1', 'admin', '2016-10-14 16:40:51', 'admin', '2016-10-14 16:40:51', '', '0');
INSERT INTO `sys_user` VALUES ('admin', '402880f653acb8800153acb994fd0000', '402880f653acb8800153acb994fd0000', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '0001', '系统管理员', '1185111298@qq.com', '8675', '8675', 'sys_admin', '402880fb5405046e0154051b0ace0001', '0:0:0:0:0:0:0:1', '2016-10-15 17:26:33', '1', '1', '2013-05-27 08:00:00', 'devTest', '2016-04-11 19:35:38', '最高管理员', '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `sys_user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户名称',
  `sys_role_id` varchar(64) NOT NULL COMMENT '角色名称',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'create_by',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'update_by',
  `update_date` datetime DEFAULT NULL COMMENT 'update_date',
  `remarks` varchar(225) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_sys_role`;
CREATE TABLE `sys_user_sys_role` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `sys_user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户名称',
  `sys_role_id` varchar(64) NOT NULL COMMENT '角色名称',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'create_by',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'update_by',
  `update_date` datetime DEFAULT NULL COMMENT 'update_date',
  `remarks` varchar(225) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_sys_role
-- ----------------------------
INSERT INTO `sys_user_sys_role` VALUES ('4028d08157c1e0650157c242c0f30061', '4028d08157c1e0650157c241838e0060', '4028e681570d10e101570d14efcc0001', 'admin', '2016-10-14 16:15:37', 'admin', '2016-10-14 16:15:37', null, '0');
INSERT INTO `sys_user_sys_role` VALUES ('4028d08157c1e0650157c24b619800ae', '4028d08157c1e0650157c24b4d2200ad', '4028e681570d10e101570d14efcc0001', 'admin', '2016-10-14 16:25:02', 'admin', '2016-10-14 16:25:02', null, '0');
INSERT INTO `sys_user_sys_role` VALUES ('4028d08157c1e0650157c24e998300b0', '4028d08157c1e0650157c24e84d900af', '4028e681570d10e101570d14efcc0001', 'admin', '2016-10-14 16:28:33', 'admin', '2016-10-14 16:28:33', null, '0');
INSERT INTO `sys_user_sys_role` VALUES ('4028d08157c1e0650157c259fef000b6', '4028d08157c1e0650157c259dded00b5', '4028d08157c1e0650157c257753500b2', 'admin', '2016-10-14 16:41:00', 'admin', '2016-10-14 16:41:00', null, '0');
INSERT INTO `sys_user_sys_role` VALUES ('4028e681570d10e101570d1559c00017', '4028e681570d10e101570d1417e10000', '4028e681570d10e101570d14efcc0001', 'admin', '2016-09-09 11:54:45', 'admin', '2016-09-09 11:54:45', null, '0');

-- ----------------------------
-- Table structure for tree_area
-- ----------------------------
DROP TABLE IF EXISTS `tree_area`;
CREATE TABLE `tree_area` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `parent_name` varchar(255) DEFAULT NULL COMMENT '父级名称',
  `full_name` varchar(2000) DEFAULT NULL COMMENT '全称',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `level_num` int(11) DEFAULT NULL COMMENT '级次',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(11) DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行政区域';

-- ----------------------------
-- Records of tree_area
-- ----------------------------
INSERT INTO `tree_area` VALUES ('root', '中国', '中国', '', '', '中国', '0', '1', 'admin', '2016-04-18 19:15:10', 'admin', '2016-04-19 11:15:36', null, '0');
INSERT INTO `tree_area` VALUES ('4028801a5697077c0156970ce0120054', '中国', '中国_山西', 'root', 'root', '山西', '100002', null, 'admin', '2016-08-17 13:50:18', 'admin', '2016-08-17 13:50:29', null, '0');

-- ----------------------------
-- Table structure for tree_placetype
-- ----------------------------
DROP TABLE IF EXISTS `tree_placetype`;
CREATE TABLE `tree_placetype` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `parent_name` varchar(255) DEFAULT NULL COMMENT '父级名称',
  `full_name` varchar(2000) DEFAULT NULL COMMENT '全称',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(11) DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公共场所类型';

-- ----------------------------
-- Records of tree_placetype
-- ----------------------------
INSERT INTO `tree_placetype` VALUES ('root', '公共场所类别', '公共场所类别', 'root', 'root', '公共场所类别', '0', 'admin', '2016-04-18 19:15:10', 'admin', '2016-04-19 11:15:36', null, '0');

-- ----------------------------
-- Table structure for tree_sampletype
-- ----------------------------
DROP TABLE IF EXISTS `tree_sampletype`;
CREATE TABLE `tree_sampletype` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `parent_name` varchar(255) DEFAULT NULL COMMENT '父级名称',
  `full_name` varchar(2000) DEFAULT NULL COMMENT '全称',
  `effectdate` date DEFAULT NULL COMMENT '生效日期',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(11) DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='样品类别';

-- ----------------------------
-- Records of tree_sampletype
-- ----------------------------
INSERT INTO `tree_sampletype` VALUES ('03', '样品类别', '样品类别_生活饮用水', '2016-04-18', 'root', 'root', '生活饮用水', '100001', 'admin', '2016-04-18 19:15:10', 'admin', '2016-04-19 11:15:36', null, '0');
