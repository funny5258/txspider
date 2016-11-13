DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `equip_id` varchar(11) DEFAULT NULL COMMENT '角色id',
  `jiahu` SMALLINT(3) NOT NULL DEFAULT '0' COMMENT '加护',
  `name` varchar(20) DEFAULT NULL COMMENT '角色名',
  `server_id` varchar(20) DEFAULT NULL COMMENT '服务器',
  `price` int(6) DEFAULT '0' COMMENT '价钱',
  `url` varchar(255) DEFAULT NULL COMMENT 'cbg链接',
   PRIMARY KEY (`id`),
   KEY `idx_price` (`price`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `role_basic`;
CREATE TABLE `role_basic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(10) NOT NULL COMMENT '编号',
  `lv` tinyint(2) NOT NULL DEFAULT '0' COMMENT '等级',
  `fly_soul_phase` tinyint(1) NOT NULL DEFAULT '0' COMMENT '神启境界',
  `fly_soul_lv` varchar(20) DEFAULT NULL COMMENT '神启等级',
  `xiuwei` int(6) NOT NULL DEFAULT '0' COMMENT '修为',
  `equ_xiuwei` int(6) NOT NULL DEFAULT '0' COMMENT '装备评价',
  `sch` tinyint(2) NOT NULL DEFAULT '0' COMMENT '门派',
  `pattack_max` smallint(5) NOT NULL DEFAULT '0' COMMENT '最大物攻',
  `mattack_max` smallint(5) NOT NULL DEFAULT '0' COMMENT '最大法攻',
  `pattack_min` smallint(5) NOT NULL DEFAULT '0' COMMENT '最小物攻',
  `mattack_min` smallint(5) NOT NULL DEFAULT '0' COMMENT '最小法攻',
  `hit` smallint(4) NOT NULL DEFAULT '0' COMMENT '命中',
  `modadd` smallint(4) NOT NULL DEFAULT '0' COMMENT '重击',
  `attadd` smallint(4) NOT NULL DEFAULT '0' COMMENT '附伤',
  `cri_add_p` smallint(4) NOT NULL DEFAULT '0' COMMENT '诛心',
  `cri_sub_p` smallint(4) NOT NULL DEFAULT '0' COMMENT '御心',
  `mdef` smallint(5) NOT NULL DEFAULT '0' COMMENT '法防',
  `pdef` smallint(5) NOT NULL DEFAULT '0' COMMENT '物防',
  `absolutely_attack` smallint(4) NOT NULL DEFAULT '0' COMMENT '破阵',
  `absolutely_defence` smallint(4) NOT NULL DEFAULT '0' COMMENT '磐石',
  `inprotect` smallint(5) NOT NULL DEFAULT '0' COMMENT '神明',
  `avoid` smallint(5) NOT NULL DEFAULT '0' COMMENT '回避',
  `attdef` smallint(5) NOT NULL DEFAULT '0' COMMENT '化解',
  `defhuman` tinyint(2) NOT NULL DEFAULT '0' COMMENT '知彼',
  `attackhuman` tinyint(2) NOT NULL DEFAULT '0' COMMENT '人祸',
  `sract` smallint(4) NOT NULL DEFAULT '0' COMMENT '身份',
  `srbody` smallint(4) NOT NULL DEFAULT '0' COMMENT '坚韧',
  `srmind` smallint(4) NOT NULL DEFAULT '0' COMMENT '定力',
  `movespeed` smallint(3) NOT NULL DEFAULT '0' COMMENT '追电',
  `castspeed` tinyint(2) NOT NULL DEFAULT '0' COMMENT '疾语',
  `attackspeed` tinyint(2) NOT NULL DEFAULT '0' COMMENT '骤雨',
  `thump_add_p` smallint(4) NOT NULL DEFAULT '0' COMMENT '万钧',
  `thump_sub_p` smallint(4) NOT NULL DEFAULT '0' COMMENT '铁壁',
  `strong` smallint(4) NOT NULL DEFAULT '0' COMMENT '力',
  `body` smallint(4) NOT NULL DEFAULT '0' COMMENT '体',
  `quick` smallint(4) NOT NULL DEFAULT '0' COMMENT '敏',
  `dodge` smallint(4) NOT NULL DEFAULT '0' COMMENT '疾',
  `soul` smallint(4) NOT NULL DEFAULT '0' COMMENT '魂',
  `mind` smallint(4) NOT NULL DEFAULT '0' COMMENT '念',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for role_haizi
-- ----------------------------

DROP TABLE IF EXISTS `role_calc`;
CREATE TABLE `role_calc` (
  `id` bigint(20) NOT NULL,
  `role_id`  varchar(10) NOT NULL,
  `lianhu` SMALLINT(3) NOT NULL DEFAULT '0' COMMENT '炼护',
  `haizi_lv` tinyint(2) NOT NULL DEFAULT '0' COMMENT '孩子最大等级',
  `haizi_zizhi` SMALLINT(4) NOT NULL DEFAULT '0' COMMENT '孩子最大资质',
  `haizi_wuxue` tinyint(2) NOT NULL DEFAULT '0' COMMENT '孩子最大武学',
  `lignt_menpai` tinyint(1) NOT NULL DEFAULT '0' COMMENT '御风行等级',
  `awake_lv` tinyint(2) NOT NULL DEFAULT '0' COMMENT '觉醒等级',
  `release_lv` tinyint(2) NOT NULL DEFAULT '0' COMMENT '封禁之力等级',
  `awake_value` tinyint(2) NOT NULL DEFAULT '0' COMMENT '觉醒度',
  `minglian` SMALLINT(4) NOT NULL DEFAULT '0' COMMENT '溟炼值',
  `qinghua` tinyint(1) NOT NULL DEFAULT '0' COMMENT '黛染青花',
  `xuansu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '玄素天成',
  `guhong` tinyint(1) NOT NULL DEFAULT '0' COMMENT '孤鸿月影',
  `xiangyun` tinyint(1) NOT NULL DEFAULT '0' COMMENT '降云思暖',
  `tinglan` tinyint(1) NOT NULL DEFAULT '0' COMMENT '岸芷汀兰',
  `haitang` tinyint(1) NOT NULL DEFAULT '0' COMMENT '海棠未雨',
  `feihuhuaqiu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '飞天华裘',
  `tianhulishang` tinyint(1) NOT NULL DEFAULT '0' COMMENT '天狐霓裳',
  `xianhucaijue` tinyint(1) NOT NULL DEFAULT '0' COMMENT '仙狐彩诀',
  `canghaisangtian` tinyint(1) NOT NULL DEFAULT '0' COMMENT '沧海桑田',
  `yeyujiangnan` tinyint(1) NOT NULL DEFAULT '0' COMMENT '夜雨江南',
  `huikanfanghu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '挥砍防护',
  `duncifanghu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '盾刺防护',
  `huoyuanfanghu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '火元防护',
  `shuifengdufanghu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '水风毒防护',
  `wanfeng` tinyint(1) NOT NULL DEFAULT '0' COMMENT '完封',
  `huxin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '护心',
  `douzhuanbian` tinyint(1) NOT NULL DEFAULT '0' COMMENT '斗转变',
  `yixinghuanying` tinyint(1) NOT NULL DEFAULT '0' COMMENT '移形换影',
  `taichu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有太初',
  `shilifushou` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有势力副手',
  `xiyangyang` tinyint(1) NOT NULL DEFAULT '0' COMMENT '喜洋洋',
  `mawangye` tinyint(1) NOT NULL DEFAULT '0' COMMENT '马王爷',
  `wangshengtianzun` tinyint(1) NOT NULL DEFAULT '0' COMMENT '万胜天尊',
  `yehuo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '业火',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ALTER TABLE role ADD UNIQUE `idx_equip_id` (`equip_id`) comment '';
ALTER TABLE role_basic DROP INDEX `idx_role_id`, ADD UNIQUE `idx_role_id` USING BTREE (`role_id`) comment '';
ALTER TABLE role_calc DROP INDEX `idx_role_id`, ADD UNIQUE `idx_role_id` USING BTREE (`role_id`) comment '';