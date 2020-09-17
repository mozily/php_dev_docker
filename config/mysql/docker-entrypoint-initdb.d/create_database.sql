CREATE DATABASE IF NOT EXISTS `PHP_DB` /*!40100 COLLATE 'utf8mb4_unicode_ci' */;

USE `PHP_DB`;

DROP TABLE IF EXISTS `TB_ACCOUNT`;

CREATE TABLE `TB_ACCOUNT` (
	`user_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '서버가 발급한 유저 id',
	`channel_uid` BIGINT(20) NOT NULL COMMENT '채널에서 발급한 유저 id',
	`device_id` VARCHAR(20) NOT NULL COMMENT '채널에서 발급한 디바이스 id' COLLATE 'utf8mb4_unicode_ci',
	`is_active` TINYINT(4) NULL DEFAULT '1' COMMENT '계정 활성화 여부 (0: 비활성, 1: 정식, 2: 게스트)',
	`insert_time` INT(10) UNSIGNED NOT NULL COMMENT '데이터 최초 생성일',
	`update_time` INT(10) UNSIGNED NOT NULL COMMENT '데이터 최초 갱신일',
	PRIMARY KEY (`user_id`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1000000;