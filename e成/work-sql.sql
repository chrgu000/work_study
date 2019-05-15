//微信公众号关注
CREATE TABLE `weixin_subscribe_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `top_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '参数id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '场景类型(1:面试官场景)',
  `scene_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '参数id',
  `openid` varchar(40) NOT NULL COMMENT '微信用户openid',
  `nickname` varchar(60) NOT NULL DEFAULT '' COMMENT '昵称',
  `sub_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否关注(1:已关注,2:取消关注)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_topid_openid_type` (`top_id`,`openid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信公众号关注日志表';

ALTER TABLE weixin_subscribe_info DROP INDEX unique_topid_openid_type;
CREATE UNIQUE INDEX unique_openid_type ON weixin_subscribe_info (`openid`,`type`);

//微信公众号关注
use tob_ats_common;
CREATE TABLE `weixin_subscribe_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `top_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '参数id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '场景类型(1:面试官场景)',
  `scene_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '参数id',
  `openid` varchar(40) NOT NULL COMMENT '微信用户openid',
  `nickname` varchar(60) NOT NULL DEFAULT '' COMMENT '昵称',
  `sub_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否关注(1:已关注,2:取消关注)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_openid_type` (`openid`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='微信公众号关注信息表';

CREATE TABLE `account_position_sensitive` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 关闭，2 开启',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='敏感词监测设置';

CREATE TABLE `position_sensitive_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `top_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `field` varchar(30) NOT NULL DEFAULT '' COMMENT '敏感词',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否删除 1正常 2已删除',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_top_id_field` (`top_id`,`field`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='敏感词';

$uid = $this->getUid();
$topId = $this->getTopId($uid);
$parentId = $this->getParentId($uid);