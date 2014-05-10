-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 10 2014 г., 16:44
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `urportal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_assets`
--

CREATE TABLE IF NOT EXISTS `urportal_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Дамп данных таблицы `urportal_assets`
--

INSERT INTO `urportal_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 83, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 32, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 33, 34, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 35, 36, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 37, 38, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 39, 40, 1, 'com_login', 'com_login', '{}'),
(13, 1, 41, 42, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 43, 44, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 45, 46, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 47, 48, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 49, 50, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 51, 52, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 53, 56, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 57, 58, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 59, 60, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 61, 62, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 63, 64, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 65, 68, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 69, 72, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 73, 74, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Контакты', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 54, 55, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 70, 71, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 66, 67, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 75, 76, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 77, 78, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 8, 20, 31, 2, 'com_content.category.8', 'Главное меню', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(36, 35, 21, 22, 3, 'com_content.article.1', 'Главная', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 35, 23, 24, 3, 'com_content.article.2', 'Мастерская', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 35, 25, 26, 3, 'com_content.article.3', 'Иконография', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 35, 27, 28, 3, 'com_content.article.4', 'Техника письма', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 35, 29, 30, 3, 'com_content.article.5', 'Контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 1, 79, 80, 1, 'com_jce', 'jce', '{}'),
(44, 1, 81, 82, 1, 'com_zoo', 'com_zoo', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_associations`
--

CREATE TABLE IF NOT EXISTS `urportal_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_banners`
--

CREATE TABLE IF NOT EXISTS `urportal_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_banner_clients`
--

CREATE TABLE IF NOT EXISTS `urportal_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `urportal_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_categories`
--

CREATE TABLE IF NOT EXISTS `urportal_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `urportal_categories`
--

INSERT INTO `urportal_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'kontakty', 'com_contact', 'Контакты', 'kontakty', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2010-06-28 13:27:57', 837, '2014-01-19 19:47:10', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 35, 1, 13, 14, 1, 'glavnoe-menyu', 'com_content', 'Главное меню', 'glavnoe-menyu', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 837, '2014-01-19 19:41:31', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_contact_details`
--

CREATE TABLE IF NOT EXISTS `urportal_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `urportal_contact_details`
--

INSERT INTO `urportal_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Контакты', 'roman', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 837, 4, 1, '', '', '', '', '', '*', '2014-01-19 19:48:15', 837, '', '2014-03-02 09:46:07', 837, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_content`
--

CREATE TABLE IF NOT EXISTS `urportal_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `urportal_content`
--

INSERT INTO `urportal_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 36, 'Главная', 'glavnaya', '', '<p>Иконописная мастерская выполняет на заказ письмо икон в византийском и древнерусском стиле XIV-XVI веков, а также письмо иконостасов, аналойных икон, изготовление плащаниц, семейных, именных, мерных икон.</p>\r\n<p>{loadposition slideshow}</p>\r\n<p>В работе используются: сусальное золото, минеральные красители, ассист, резьба по левкасу. Выполняется письмо икон яичной темперой в технике плави. Также выполняем заказы икон в масляной живописи по оговоренному образцу.</p>\r\n<p>&nbsp;</p>', '', 1, 0, 0, 8, '2014-01-19 19:43:18', 837, '', '2014-02-27 20:08:40', 837, 0, '0000-00-00 00:00:00', '2014-01-19 19:43:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 0, 4, '', '', 1, 527, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 37, 'Мастерская', 'masterskaya', '', '<p>Обучение наших мастеров из «Плодоносного древа» берет свои истоки с 1989 г. от московской иконописецы Ксении Покровской, которая возрастала на семейной династии иконописцев. Также, изучая школу лучших русских иконописцев XIV-XVI веков, мы реализуем различные приемы старых мастеров в меру своих сил и талантов.</p>\r\n<p><img src="images/images/about-00004.jpg" alt="about-00004" width="280" height="350" /></p>\r\n<p><img src="images/images/about-00001.jpg" alt="about-00001" width="350" height="250" /></p>\r\n<p><img src="images/images/about-00002.jpg" alt="about-00002" width="350" height="250" /></p>\r\n<p><img src="images/images/about-00003.jpg" alt="about-00003" width="350" height="259" /></p>\r\n<p><img src="images/images/about-00005.jpg" alt="about-00005" width="350" height="250" /></p>', '', 1, 0, 0, 8, '2014-01-19 19:43:43', 837, '', '2014-02-25 21:38:09', 837, 0, '0000-00-00 00:00:00', '2014-01-19 19:43:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 0, 3, '', '', 1, 101, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 38, 'Иконография', 'ikonografiya', '', '<p>Иконография</p>\r\n<p>{gallery}com_mtree/images/listings/o{/gallery}</p>', '', 1, 0, 0, 8, '2014-01-19 19:44:01', 837, '', '2014-02-27 20:59:20', 837, 0, '0000-00-00 00:00:00', '2014-01-19 19:44:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 2, '', '', 1, 95, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 39, 'Техника письма', 'tekhnika-pisma', '', '<p>Иконописание византийского стиля более других родов живописи приближается к предназначению соответствующему видам Святой Церкви (архиепископ Анатолий Мартыновский 1793-1872 г. был также иконописцем).</p>\r\n<p>Техника письма икон Византийского стиля заключается в нанесении красочного слоя (на одеждах – роскрыши, ликах – просанкирование) сплошными пятнами, вприплеску, то есть нанесение жидкого красочного слоя яичной темперой на горизонтальную поверхность доски.</p>\r\n<p>Это очень характерная подробность, что в иконописи невозможен мазок, невозможна лессировка, как не бывает полутонов и теней (как в масляной, акриловой и другой живописи): реальность образа возникает степенями бытия, но не складывается из частей, не образуется прикладыванием куска к куску или качества к качеству. Тут глубочайшая противоположность масляной живописи, где изображения образуются и прорабатываются по частям.</p>\r\n<p>В наше время смягчение красочных переходов достигается тонкой белильной штриховкой, начинает присутствовать мазок (так называемая «сухая кисть»). Однако по характеру своему этот прием исключается духом иконописной техники, а необходимость мазка показывает неумелость мастера дать правильную плавку («Философия русского религиозного искусства» Священник Павел (Флоренский) известный богослов и религиозный философ).</p>', '', 1, 0, 0, 8, '2014-01-19 19:44:22', 837, '', '2014-02-23 15:52:58', 837, 0, '0000-00-00 00:00:00', '2014-01-19 19:44:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 1, '', '', 1, 41, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 40, 'Контакты', 'kontakty', '', '<p>Контакты</p>', '', 1, 0, 0, 8, '2014-01-19 19:44:31', 837, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-19 19:44:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `urportal_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_content_rating`
--

CREATE TABLE IF NOT EXISTS `urportal_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `urportal_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_extensions`
--

CREATE TABLE IF NOT EXISTS `urportal_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10029 ;

--
-- Дамп данных таблицы `urportal_extensions`
--

INSERT INTO `urportal_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"0","show_article_options":"0","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"0","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `urportal_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.14","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2013-07-26","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.13.1","description":"Russian language pack (site) for Joomla! 2.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2013-07-26","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.13.1","description":"Russian language pack (administrator) for Joomla! 2.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'TinyMCE ru-RU', 'file', 'tinymce_ru-ru', '', 0, 1, 0, 0, '{"legacy":false,"name":"TinyMCE ru-RU","type":"file","creationDate":"2012-06-19","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.2.1","description":"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"legacy":false,"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.5.13.1","description":"Joomla 2.5 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'mytemplate', 'template', 'mytemplate', '', 0, 1, 1, 0, '{"legacy":false,"name":"mytemplate","type":"template","creationDate":"may 2008","author":"Andrey Dzigunskiy","copyright":"","authorEmail":"dzigunskiy@bk.ru","authorUrl":"http:\\/\\/support.gorsk.net","version":"2.5","description":"my template","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Russian для Mosets Tree Package 3.0.6', 'file', '518b9f9aa3eb03cea46541cc60f33622', '', 0, 1, 0, 0, '{"legacy":false,"name":"Russian \\u0434\\u043b\\u044f Mosets Tree Package 3.0.6","type":"file","creationDate":"28\\/03\\/2013","author":"JLsite","copyright":"Copyright \\u00a9 2013 www.joomlang.ru. \\u0412\\u0441\\u0435 \\u043f\\u0440\\u0430\\u0432\\u0430 \\u0437\\u0430\\u0449\\u0438\\u0449\\u0435\\u043d\\u044b.","authorEmail":"pochta@joomlang.ru","authorUrl":"http:\\/\\/www.joomlang.ru","version":"3.0.6.1","description":"<h1>\\u0420\\u0443\\u0441\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440 Mosets Tree Package<\\/h1>\\r\\n<h2>Version: 3.0.6.1<\\/h2>\\r\\n<hr\\/>\\r\\n<h2>\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434 \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d\\u0430 kinabalu \\u0438 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u0435\\u0439.<\\/h2>\\r\\n<h2>\\u0414\\u043b\\u044f \\u0432\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442\\u0430 \\u0430\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u044f\\u0437\\u044b\\u043a\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0438\\u0442\\u0435 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0438\\u0435 \\u0444\\u0430\\u0439\\u043b\\u044b \\u0432 \\u043f\\u0430\\u043f\\u043a\\u0435 pole<\\/h2>\\r\\n<hr\\/>\\r\\n<h2><a href=\\"http:\\/\\/www.joomlang.ru\\" target=\\"_blank\\">\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a \\u0434\\u043b\\u044f \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d\\u043e\\u0432, \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0438 \\u043c\\u043e\\u0434\\u0443\\u043b\\u0435\\u0439 Joomla<\\/a><br><\\/h2>\\r\\n<hr\\/>\\r\\n<img src=\\"\\/..\\/images\\/jl_logo.png\\" style=\\"float:left; padding:10px 10px 10px 0;\\"\\/>","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Vinaora Nivo Slider', 'module', 'mod_vt_nivo_slider', '', 0, 1, 0, 0, '{"legacy":false,"name":"Vinaora Nivo Slider","type":"module","creationDate":"Feb 2013","author":"VINAORA","copyright":"Copyright (C) 2011-2013 VINAORA. All rights reserved.","authorEmail":"info@vinaora.com","authorUrl":"http:\\/\\/vinaora.com","version":"2.5.25","description":"MOD_VT_NIVO_SLIDER_XML_DESCRIPTION","group":""}', '{"demo":"-1","theme":"default","slide_width":"auto","slide_height":"auto","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"random","slices":"0","boxCols":"0","boxRows":"0","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"true","controlNav":"true","pauseOnHover":"true","manualAdvance":"false","prevText":"Prev","nextText":"Next","ribbon":"1","slide_bgcolor":"#ffffff","slide_bdcolor":"#ffffff","slide_bdwidth":"10","slide_bdrounded":"1","slide_bdshadow":"1","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"all","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","cache":"1","cache_time":"900","cachemode":"static","jquery_source":"local","jquery_version":"latest","controlNavThumbs":"false"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'plg_extension_mosets', 'plugin', 'mosets', 'extension', 0, 1, 1, 0, '{"legacy":false,"name":"plg_extension_mosets","type":"plugin","creationDate":"October 2012","author":"Mosets Consulting","copyright":"Copyright (C) 2012 Mosets Consulting. All rights reserved.","authorEmail":"mtree@mosets.com","authorUrl":"www.mosets.com","version":"1.0.0","description":"PLG_EXTENSION_MOSETS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors_jce","type":"plugin","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.3.2.4","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.3.2.4","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"legacy":false,"name":"JCE","type":"component","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.3.2.4","description":"WF_ADMIN_DESC","group":""}', '{"editor":{"verify_html":"1","schema":"html4","entity_encoding":"raw","keep_nbsp":"1","cleanup_pluginmode":"0","forced_root_block":"p","content_style_reset":"0","content_css":"1","content_css_custom":"","compress_javascript":"0","compress_css":"0","compress_gzip":"0","use_cookies":"1","custom_config":"","callback_file":""}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Simple Image Gallery Pro (by JoomlaWorks)', 'plugin', 'jw_sigpro', 'content', 0, 1, 1, 0, '{"legacy":true,"name":"Simple Image Gallery Pro (by JoomlaWorks)","type":"plugin","creationDate":"March 7th, 2012","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2012 JoomlaWorks Ltd. This code cannot be redistributed without permission from JoomlaWorks Ltd.","authorEmail":"contact@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.5.7","description":"<a href=\\"http:\\/\\/redbitz.com\\" target=\\"_blank\\"><font size=''4px'' color=\\"red\\">Visit REdBitZ.COM<\\/a>  || Allah is one, there is no other God and Prophet Muhammad(S) is the Final Messenger.<\\/font><br\\/><h2>Simple Image Pro Installed Successfully<\\/h2>","group":""}', '{"galleries_rootfolder":"media","popup_engine":"highslide","thb_template":"Classic","thb_width":"200","thb_height":"160","smartResize":"1","jpg_quality":"80","singlethumbmode":"0","sortorder":"0","showcaptions":"0","wordlimit":"","enabledownload":"0","loadmoduleposition":"","flickrApiKey":"","flickrImageCount":"20","cache_expire_time":"120","yqlMaxAge":"60","memoryLimit":"","debugMode":"1"}', '', '', 837, '2014-02-27 21:01:35', 0, 0),
(10015, 'JBZoo App', 'file', 'file_jbuniversal', '', 0, 1, 0, 0, '{"legacy":false,"name":"JBZoo App","type":"file","creationDate":"2013 05","author":"JBZoo.com","copyright":"Copyright (C) JBZoo.com","authorEmail":"admin@bjbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.0 (Free)","description":"JBZoo is universal CCK, application for YooTheme Zoo Joomla component","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'System - JBZoo (events)', 'plugin', 'jbzoo', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - JBZoo (events)","type":"plugin","creationDate":"2013 05","author":"JBZoo.com","copyright":"JBZoo.com","authorEmail":"admin@jbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.0 (Free)","description":"Event plugin for JBZoo by JBZoo.com","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'jbzoo', 'package', 'pkg_jbzoo', '', 0, 1, 1, 0, '{"legacy":false,"name":"JBZoo App","type":"package","creationDate":"2013 05","author":"JBZoo.com","copyright":"Copyright (C) JBZoo","authorEmail":"admin@jbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.0 (Free)","description":"\\n        JBZoo is universal CCK, application for YooTheme Zoo Joomla component. Developed by JBZoo.com\\n    ","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'com_zoo', 'component', 'com_zoo', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_zoo","type":"component","creationDate":"March 2014","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.1.6","description":"ZOO component for Joomla 2.5+ developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'ZOO Category', 'module', 'mod_zoocategory', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZOO Category","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Category module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","application":"","depth":"0","add_count":"0","menu_item":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'ZOO Comment', 'module', 'mod_zoocomment', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZOO Comment","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Comment module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","application":"","subcategories":"0","count":"10","show_avatar":"1","avatar_size":"40","show_author":"1","show_meta":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'ZOO Item', 'module', 'mod_zooitem', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZOO Item","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.1","description":"Item module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","layout":"","media_position":"left","application":"","subcategories":"0","count":"4","order":"_itemname","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'ZOO Quick Icons', 'module', 'mod_zooquickicon', '', 1, 1, 2, 0, '{"legacy":false,"name":"ZOO Quick Icons","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Quick Icons module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10023, 'ZOO Tag', 'module', 'mod_zootag', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZOO Tag","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Tag module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","application":"","subcategories":"0","count":"10","order":"alpha","menu_item":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'Content - ZOO Shortcode', 'plugin', 'zooshortcode', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - ZOO Shortcode","type":"plugin","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Shortcode plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com) Usage: {zooitem OR zoocategory: ID OR alias} Optionally: {zooitem: ID text: MYTEXT}","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'Smart Search - ZOO', 'plugin', 'zoosmartsearch', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"Smart Search - ZOO","type":"plugin","creationDate":"Febuary 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"2.5.0","description":"Smart Search plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'Search - ZOO', 'plugin', 'zoosearch', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"Search - ZOO","type":"plugin","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Search plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"search_fulltext":"0","search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'System - ZOO Event', 'plugin', 'zooevent', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - ZOO Event","type":"plugin","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Event plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'zoo', 'package', 'pkg_zoo', '', 0, 1, 1, 0, '{"legacy":false,"name":"ZOO Package","type":"package","creationDate":"March 2014","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.1.6","description":"ZOO component and extensions for Joomla 2.5+ developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_filters`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `urportal_finder_links`
--

INSERT INTO `urportal_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(2, 'index.php?option=com_zoo&view=item&id=2', 'index.php?option=com_zoo&task=item&item_id=2&Itemid=103', 'Тацій Василь Якович', '', '2014-05-10 16:31:23', '72212fce1fe880fe68b5746066c952e5', 1, 1, 1, '*', '2014-05-08 19:47:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 6, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a32313a22746163d1966a2d766173696c2d79616b6f76696368223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30352d31302031333a33313a3232223b733a31313a226d6f6469666965645f6279223b733a333a22383337223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d32264974656d69643d313033223b733a31323a22656c656d656e745f64617461223b613a323a7b693a303b733a37343a22d0b4d0bed186d0b5d0bdd1820ad0bfd180d0bed184d0b5d181d0bed1800ad0b4d0bed0bad182d0bed18020d18ed180d0b8d0b4d0b8d187d0b5d181d0bad0b8d18520d0bdd0b0d183d0ba223b693a313b733a3438363a22d0b0d0bad0b0d0b4d0b5d0bcd196d0ba20d09dd0b0d186d196d0bed0bdd0b0d0bbd18cd0bdd0bed19720d0b0d0bad0b0d0b4d0b5d0bcd196d19720d0bdd0b0d183d0ba20d0a3d0bad180d0b0d197d0bdd0b82c20d0b0d0bad0b0d0b4d0b5d0bcd196d0ba20d09dd0b0d186d196d0bed0bdd0b0d0bbd18cd0bdd0bed19720d0b0d0bad0b0d0b4d0b5d0bcd196d19720d0bfd180d0b0d0b2d0bed0b2d0b8d18520d0bdd0b0d183d0ba20d0a3d0bad180d0b0d197d0bdd0b82c20d0b4d0bed0bad182d0bed18020d18ed180d0b8d0b4d0b8d187d0bdd0b8d18520d0bdd0b0d183d0ba2c20d0bfd180d0bed184d0b5d181d0bed1802c20d0b7d0b0d181d0bbd183d0b6d0b5d0bdd0b8d0b920d0b4d196d18fd18720d0bdd0b0d183d0bad0b820d19620d182d0b5d185d0bdd196d0bad0b820d0a3d0bad180d0b0d197d0bdd0b82c20d0bbd0b0d183d180d0b5d0b0d18220d094d0b5d180d0b6d0b0d0b2d0bdd0bed19720d0bfd180d0b5d0bcd196d19720d0a3d0bad180d0b0d197d0bdd0b82c20d0b7d0b0d0b2d196d0b4d183d0b2d0b0d18720d0bad0b0d184d0b5d0b4d180d0b820d0bad180d0b8d0bcd196d0bdd0b0d0bbd18cd0bdd0bed0b3d0be20d0bfd180d0b0d0b2d0b020e28496312c20d093d0b5d180d0bed0b920d0a3d0bad180d0b0d197d0bdd0b8223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a333a7b733a343a2254797065223b613a313a7b733a353a227374616666223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a227374616666223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22d09fd180d0be20d0bdd0b0d181223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22d09fd180d0be20d0bdd0b0d181223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a333a22546167223b613a323a7b733a31323a22d0b4d0bed186d0b5d0bdd182223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a22d0b4d0bed186d0b5d0bdd182223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d733a31363a22d0bfd180d0bed184d0b5d181d0bed180223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31363a22d0bfd180d0bed184d0b5d181d0bed180223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d32223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d32264974656d69643d313033223b733a353a227469746c65223b733a33363a22d0a2d0b0d186d196d0b920d092d0b0d181d0b8d0bbd18c20d0afd0bad0bed0b2d0b8d187223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30352d30382031393a34373a3335223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a363b7d),
(3, 'index.php?option=com_zoo&view=item&id=3', 'index.php?option=com_zoo&task=item&item_id=3&Itemid=103', 'Битяк Юрій Прокопович', '', '2014-05-10 14:16:40', 'b080557c28c3ad42a883ad119c40c0e6', 1, 1, 1, '*', '2014-05-10 11:14:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 6, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a32353a2262697479616b2d797572d1966a2d70726f6b6f706f76696368223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30352d31302031313a31353a3239223b733a31313a226d6f6469666965645f6279223b733a333a22383337223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d33264974656d69643d313033223b733a31323a22656c656d656e745f64617461223b613a323a7b693a303b733a34303a22d091d0b8d182d18fd0ba20d0aed180d196d0b920d09fd180d0bed0bad0bed0bfd0bed0b2d0b8d187223b693a313b733a3330333a22d0b0d0bad0b0d0b4d0b5d0bcd196d0ba20d09dd0b0d186d196d0bed0bdd0b0d0bbd18cd0bdd0bed19720d0b0d0bad0b0d0b4d0b5d0bcd196d19720d0bfd180d0b0d0b2d0bed0b2d0b8d18520d0bdd0b0d183d0ba20d0a3d0bad180d0b0d197d0bdd0b82c20d0b4d0bed0bad182d0bed18020d18ed180d0b8d0b4d0b8d187d0bdd0b8d18520d0bdd0b0d183d0ba2c20d0bfd180d0bed184d0b5d181d0bed1802c20d0bbd0b0d183d180d0b5d0b0d18220d094d0b5d180d0b6d0b0d0b2d0bdd0bed19720d0bfd180d0b5d0bcd196d19720d0a3d0bad180d0b0d197d0bdd0b82c20d0b7d0b0d0b2d196d0b4d183d0b2d0b0d18720d0bad0b0d184d0b5d0b4d180d0b820d0b0d0b4d0bcd196d0bdd196d181d182d180d0b0d182d0b8d0b2d0bdd0bed0b3d0be20d0bfd180d0b0d0b2d0b0223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a353a227374616666223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a227374616666223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22d09fd180d0be20d0bdd0b0d181223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22d09fd180d0be20d0bdd0b0d181223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d33223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d33264974656d69643d313033223b733a353a227469746c65223b733a34303a22d091d0b8d182d18fd0ba20d0aed180d196d0b920d09fd180d0bed0bad0bed0bfd0bed0b2d0b8d187223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30352d31302031313a31343a3135223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a363b7d),
(4, 'index.php?option=com_zoo&view=item&id=4', 'index.php?option=com_zoo&task=item&item_id=4', 'Комаров Вячеслав Васильович', '', '2014-05-10 14:17:29', 'c78cdd0b8c039d28a86e93201b44f694', 1, 1, 1, '*', '2014-05-10 11:15:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 6, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2234223b733a353a22616c696173223b733a32393a226b6f6d61726f762d767961636865736c61762d766173696c6f76696368223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30352d31302031313a31373a3239223b733a31313a226d6f6469666965645f6279223b733a333a22383337223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a34343a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d34223b733a31323a22656c656d656e745f64617461223b613a333a7b693a303b733a39333a22d0b4d0bed0bad182d0bed18020d18ed180d0b8d0b4d0b8d187d0b5d181d0bad0b8d18520d0bdd0b0d183d0ba0ad0bad0b0d0bdd0b4d0b8d0b4d0b0d18220d18ed180d0b8d0b4d0b8d187d0b5d181d0bad0b8d18520d0bdd0b0d183d0ba223b693a313b733a35323a22d09ad0bed0bcd0b0d180d0bed0b220d092d18fd187d0b5d181d0bbd0b0d0b220d092d0b0d181d0b8d0bbd18cd0bed0b2d0b8d187223b693a323b733a3239393a22d0b0d0bad0b0d0b4d0b5d0bcd196d0ba20d09dd0b0d186d196d0bed0bdd0b0d0bbd18cd0bdd0bed19720d0b0d0bad0b0d0b4d0b5d0bcd196d19720d0bfd180d0b0d0b2d0bed0b2d0b8d18520d0bdd0b0d183d0ba20d0a3d0bad180d0b0d197d0bdd0b82c20d0bfd180d0bed184d0b5d181d0bed1802c20d0b7d0b0d181d0bbd183d0b6d0b5d0bdd0b8d0b920d18ed180d0b8d181d18220d0a3d0bad180d0b0d197d0bdd0b82c20d0bbd0b0d183d180d0b5d0b0d18220d094d0b5d180d0b6d0b0d0b2d0bdd0bed19720d0bfd180d0b5d0bcd196d19720d0a3d0bad180d0b0d197d0bdd0b82c20d0b7d0b0d0b2d196d0b4d183d0b2d0b0d18720d0bad0b0d184d0b5d0b4d180d0b820d186d0b8d0b2d196d0bbd18cd0bdd0bed0b3d0be20d0bfd180d0bed186d0b5d181d183223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a313a7b733a343a2254797065223b613a313a7b733a353a227374616666223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a227374616666223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d34223b733a353a22726f757465223b733a34343a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d34223b733a353a227469746c65223b733a35323a22d09ad0bed0bcd0b0d180d0bed0b220d092d18fd187d0b5d181d0bbd0b0d0b220d092d0b0d181d0b8d0bbd18cd0bed0b2d0b8d187223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30352d31302031313a31353a3337223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a363b7d);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_terms0`
--

INSERT INTO `urportal_finder_links_terms0` (`link_id`, `term_id`, `weight`) VALUES
(2, 259, 0.39996),
(3, 259, 0.39996),
(4, 259, 0.39996);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_terms1`
--

INSERT INTO `urportal_finder_links_terms1` (`link_id`, `term_id`, `weight`) VALUES
(2, 331, 0.56004),
(3, 331, 0.56004),
(4, 331, 0.56004),
(2, 332, 1.88004),
(3, 332, 1.88004),
(4, 332, 1.88004),
(2, 333, 2.16),
(3, 333, 2.16),
(4, 333, 2.16);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_terms2`
--

INSERT INTO `urportal_finder_links_terms2` (`link_id`, `term_id`, `weight`) VALUES
(3, 260, 0.48),
(4, 260, 0.48),
(2, 260, 0.96),
(2, 261, 1.92),
(4, 261, 1.92),
(2, 262, 2.12004),
(4, 262, 2.12004),
(2, 273, 0.87996),
(4, 273, 1.75992),
(2, 274, 1.83996),
(4, 274, 3.67992),
(2, 288, 0.96),
(2, 289, 1.8),
(2, 290, 2.07996),
(2, 311, 0.32004),
(2, 312, 1.59996),
(2, 313, 1.68),
(2, 314, 0.72),
(3, 314, 0.72),
(4, 314, 0.72),
(2, 315, 1.83996),
(3, 315, 1.83996),
(4, 315, 1.83996),
(2, 316, 2.16),
(3, 316, 2.16),
(4, 316, 2.16),
(2, 317, 1.83996),
(3, 317, 1.83996),
(2, 318, 2.04),
(3, 318, 2.04),
(3, 363, 1.12008),
(4, 363, 1.68012),
(2, 363, 2.8002),
(2, 364, 1.83996),
(2, 365, 2.36004),
(2, 366, 1.76004),
(3, 366, 1.76004),
(2, 367, 2.16),
(3, 367, 2.16),
(2, 368, 1.88004),
(3, 368, 1.88004),
(4, 368, 1.88004),
(2, 369, 2.19996),
(3, 369, 2.19996),
(4, 369, 2.19996),
(2, 370, 1.8),
(4, 370, 1.8),
(2, 371, 2.19996),
(4, 371, 2.19996),
(2, 372, 0.72),
(3, 372, 0.72),
(2, 373, 1.76004),
(3, 373, 1.76004),
(2, 374, 2.12004),
(3, 374, 2.12004),
(3, 440, 0.77343),
(3, 441, 4.35),
(4, 478, 1.83996),
(4, 479, 2.28),
(4, 482, 2.19996),
(4, 483, 0.39996),
(4, 484, 1.71996),
(4, 485, 2.04);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_terms4`
--

INSERT INTO `urportal_finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(3, 426, 0.6666),
(3, 427, 3.1334),
(3, 430, 0.96657),
(3, 431, 3.86657),
(3, 432, 4.93),
(4, 480, 0.80004),
(4, 481, 1.92),
(2, 520, 1.0666);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_terms5`
--

INSERT INTO `urportal_finder_links_terms5` (`link_id`, `term_id`, `weight`) VALUES
(2, 325, 0.56004),
(3, 325, 0.56004),
(4, 325, 0.56004),
(2, 326, 2.04),
(2, 327, 2.28),
(2, 328, 1.04004),
(2, 329, 1.95996),
(2, 330, 2.04),
(2, 357, 0.56661),
(2, 358, 2.38),
(2, 359, 2.77661),
(2, 360, 0.56004),
(2, 361, 1.8),
(2, 362, 2.12004),
(3, 434, 2.19996),
(3, 435, 2.4),
(4, 465, 0.63996),
(4, 466, 2.00004),
(4, 467, 2.19996),
(4, 468, 1.92),
(4, 469, 2.24004),
(4, 470, 1.35343),
(4, 471, 4.44657),
(4, 472, 5.51);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_terms7`
--

INSERT INTO `urportal_finder_links_terms7` (`link_id`, `term_id`, `weight`) VALUES
(3, 270, 0.63996),
(4, 270, 0.63996),
(2, 270, 1.91988),
(2, 271, 1.8),
(2, 272, 2.28),
(2, 292, 0.24),
(3, 292, 0.24),
(2, 293, 1.47996),
(3, 293, 1.47996),
(2, 346, 0.39996),
(3, 346, 0.39996),
(2, 347, 1.47996),
(2, 348, 1.71996),
(2, 349, 0.63996),
(3, 349, 0.63996),
(4, 349, 0.63996),
(2, 350, 1.71996),
(3, 350, 1.71996),
(4, 350, 1.71996),
(2, 351, 2.04),
(3, 351, 2.04),
(4, 351, 2.04),
(2, 352, 0.48),
(3, 352, 0.48),
(4, 352, 0.48),
(2, 353, 1.76004),
(3, 353, 1.76004),
(4, 353, 1.76004),
(2, 354, 2.16),
(3, 354, 2.16),
(4, 354, 2.16),
(2, 355, 1.95996),
(4, 355, 1.95996),
(2, 356, 2.16),
(3, 437, 1.93343),
(3, 438, 1.83996),
(3, 439, 2.24004),
(4, 476, 2.19996),
(4, 477, 0.56004);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_terms8`
--

INSERT INTO `urportal_finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(2, 4, 0.6666),
(3, 4, 0.6666),
(4, 4, 0.6666),
(3, 425, 1.4666),
(4, 453, 0.9334),
(4, 454, 3.2),
(4, 455, 3.9334);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_terms9`
--

INSERT INTO `urportal_finder_links_terms9` (`link_id`, `term_id`, `weight`) VALUES
(2, 309, 0.39996),
(2, 310, 1.71996),
(3, 422, 0.8),
(3, 423, 2.8),
(3, 424, 3.6),
(4, 456, 1.3334),
(4, 457, 1.3334),
(4, 458, 3.4),
(2, 518, 0.6666),
(2, 519, 2.9334);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_termsa`
--

INSERT INTO `urportal_finder_links_termsa` (`link_id`, `term_id`, `weight`) VALUES
(2, 375, 0.68),
(4, 452, 0.17);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_termsb`
--

INSERT INTO `urportal_finder_links_termsb` (`link_id`, `term_id`, `weight`) VALUES
(2, 296, 0.08004),
(2, 297, 1.56),
(2, 298, 1.88004),
(2, 307, 0.68),
(2, 308, 2.43661),
(4, 459, 1.93343),
(4, 460, 1.54657),
(4, 461, 4.73657);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_termsc`
--

INSERT INTO `urportal_finder_links_termsc` (`link_id`, `term_id`, `weight`) VALUES
(2, 1, 0.12),
(2, 257, 0.17),
(2, 294, 1.47996),
(2, 295, 1.8),
(3, 299, 0.63996),
(4, 299, 0.63996),
(2, 299, 1.27992),
(2, 300, 1.71996),
(2, 301, 2.04),
(2, 302, 1.88004),
(3, 302, 1.88004),
(4, 302, 1.88004),
(2, 303, 2.07996),
(3, 303, 2.07996),
(4, 303, 2.07996),
(3, 304, 0.63996),
(4, 304, 0.63996),
(2, 304, 1.27992),
(3, 305, 2.04),
(4, 305, 2.04),
(2, 305, 4.08),
(3, 306, 2.4),
(4, 306, 2.4),
(2, 306, 4.8),
(3, 428, 1.2),
(3, 429, 2.12004);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_termsd`
--

INSERT INTO `urportal_finder_links_termsd` (`link_id`, `term_id`, `weight`) VALUES
(3, 269, 0.64008),
(4, 269, 0.96012),
(2, 269, 1.28016),
(2, 291, 0.24),
(3, 291, 0.24),
(2, 334, 1.71996),
(3, 334, 1.71996),
(2, 335, 2.16),
(3, 336, 1.68),
(4, 336, 1.68),
(2, 336, 3.36),
(2, 337, 2.04),
(2, 338, 1.95996),
(3, 338, 1.95996),
(2, 339, 0.39996),
(2, 340, 1.47996),
(2, 341, 1.8),
(3, 342, 0.96),
(4, 342, 0.96),
(2, 342, 1.92),
(3, 343, 2.04),
(4, 343, 2.04),
(2, 343, 4.08),
(2, 344, 2.24004),
(2, 345, 2.4),
(3, 345, 2.4),
(4, 345, 2.4),
(3, 436, 2.04),
(4, 473, 1.71996),
(4, 474, 2.19996),
(4, 475, 2.04);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_links_termse`
--

INSERT INTO `urportal_finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(2, 319, 0.72),
(3, 319, 0.72),
(4, 319, 0.72),
(2, 320, 1.88004),
(3, 320, 1.88004),
(4, 320, 1.88004),
(2, 321, 2.4),
(2, 322, 0.80004),
(4, 322, 0.80004),
(2, 323, 1.8),
(2, 324, 2.04),
(3, 421, 0.17),
(3, 433, 2.4),
(4, 462, 2.31996),
(4, 463, 1.83996),
(4, 464, 2.16),
(2, 515, 0.6666),
(2, 516, 2.7334),
(2, 517, 3.3334);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `urportal_finder_taxonomy`
--

INSERT INTO `urportal_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(4, 1, 'Category', 1, 1, 0),
(6, 2, 'staff', 1, 1, 0),
(7, 4, 'Преподаватель 1', 1, 1, 0),
(8, 4, 'Про нас', 1, 1, 0),
(9, 1, 'Tag', 1, 1, 0),
(10, 9, 'доцент', 1, 1, 0),
(11, 9, 'професор', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_taxonomy_map`
--

INSERT INTO `urportal_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(2, 6),
(2, 8),
(2, 10),
(2, 11),
(3, 6),
(3, 8),
(4, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_terms`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=522 ;

--
-- Дамп данных таблицы `urportal_finder_terms`
--

INSERT INTO `urportal_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`) VALUES
(1, '1', '1', 0, 0, 0.1, '', 9),
(2, 'android', 'android', 0, 0, 0.4667, 'A5363', 6),
(3, 'android wikipe', 'android wikipe', 0, 1, 1.4667, 'A536321', 6),
(4, 'index', 'index', 0, 0, 0.3333, 'I532', 16),
(5, 'page', 'page', 0, 0, 0.2667, 'P200', 2),
(6, 'prepodavatel', 'prepodavatel', 0, 0, 0.8, 'P613134', 9),
(7, 'prepodavatel 1', 'prepodavatel 1', 0, 1, 1.4667, 'P613134', 2),
(8, 'wikipe', 'wikipe', 0, 0, 0.4, 'W210', 6),
(9, 'а', 'а', 0, 0, 0.0667, 'а000', 6),
(10, 'а материал', 'а материал', 0, 1, 1.3333, 'а000', 6),
(11, 'а материал станет', 'а материал станет', 0, 1, 1.5667, 'а000', 6),
(12, 'андроид', 'андроид', 0, 0, 0.4667, 'а000', 6),
(13, 'андроид позволит', 'андроид позволит', 0, 1, 1.5333, 'а000', 6),
(14, 'андроид позволит тебе', 'андроид позволит тебе', 0, 1, 1.7, 'а000', 6),
(15, 'без', 'без', 0, 0, 0.2, 'б000', 6),
(16, 'без лишних', 'без лишних', 0, 1, 1.3333, 'б000', 6),
(17, 'без лишних элементов', 'без лишних элементов', 0, 1, 1.6667, 'б000', 6),
(18, 'быстрее', 'быстрее', 0, 0, 0.4667, 'б000', 6),
(19, 'быстрее а', 'быстрее а', 0, 1, 1.3, 'б000', 6),
(20, 'быстрее а материал', 'быстрее а материал', 0, 1, 1.6, 'б000', 6),
(21, 'быстрый', 'быстрый', 0, 0, 0.4667, 'б000', 6),
(22, 'быстрый доступ', 'быстрый доступ', 0, 1, 1.4667, 'б000', 6),
(23, 'быстрый доступ к', 'быстрый доступ к', 0, 1, 1.5333, 'б000', 6),
(24, 'википедия', 'википедия', 0, 0, 0.6, 'в000', 6),
(25, 'википедия для', 'википедия для', 0, 1, 1.4333, 'в000', 6),
(26, 'википедия для андроид', 'википедия для андроид', 0, 1, 1.7, 'в000', 6),
(27, 'википедия ты', 'википедия ты', 0, 1, 1.4, 'в000', 6),
(28, 'википедия ты получишь', 'википедия ты получишь', 0, 1, 1.7, 'в000', 6),
(29, 'грузится', 'грузится', 0, 0, 0.5333, 'г000', 6),
(30, 'грузится еще', 'грузится еще', 0, 1, 1.4, 'г000', 6),
(31, 'грузится еще быстрее', 'грузится еще быстрее', 0, 1, 1.6667, 'г000', 6),
(32, 'для', 'для', 0, 0, 0.2, 'д000', 6),
(33, 'для андроид', 'для андроид', 0, 1, 1.3667, 'д000', 6),
(34, 'для андроид позволит', 'для андроид позволит', 0, 1, 1.6667, 'д000', 6),
(35, 'доступ', 'доступ', 0, 0, 0.4, 'д000', 6),
(36, 'доступ к', 'доступ к', 0, 1, 1.2667, 'д000', 6),
(37, 'доступ к материалам', 'доступ к материалам', 0, 1, 1.6333, 'д000', 6),
(38, 'доступнее', 'доступнее', 0, 0, 0.6, 'д000', 6),
(39, 'доступнее и', 'доступнее и', 0, 1, 1.3667, 'д000', 6),
(40, 'доступнее и понятнее', 'доступнее и понятнее', 0, 1, 1.6667, 'д000', 6),
(41, 'еще', 'еще', 0, 0, 0.2, 'е000', 6),
(42, 'еще быстрее', 'еще быстрее', 0, 1, 1.3667, 'е000', 6),
(43, 'еще быстрее а', 'еще быстрее а', 0, 1, 1.4333, 'е000', 6),
(44, 'и', 'и', 0, 0, 0.0667, 'и000', 6),
(45, 'и понятнее', 'и понятнее', 0, 1, 1.3333, 'и000', 6),
(46, 'и понятнее теперь', 'и понятнее теперь', 0, 1, 1.5667, 'и000', 6),
(47, 'изобретения', 'изобретения', 0, 0, 0.7333, 'и000', 6),
(48, 'изобретения интернета', 'изобретения интернета', 0, 1, 1.7, 'и000', 6),
(49, 'изобретения интернета с', 'изобретения интернета с', 0, 1, 1.7667, 'и000', 6),
(50, 'интернет-библиотеке', 'интернет-библиотеке', 0, 0, 1, 'и000', 6),
(51, 'интернет-библиотеке которая', 'интернет-библиотеке которая', 0, 1, 1.9, 'и000', 6),
(52, 'интернет-библиотеке которая только', 'интернет-библиотеке которая только', 0, 1, 2, 'и000', 6),
(53, 'интернета', 'интернета', 0, 0, 0.6, 'и000', 6),
(54, 'интернета с', 'интернета с', 0, 1, 1.3667, 'и000', 6),
(55, 'интернета с помощью', 'интернета с помощью', 0, 1, 1.6333, 'и000', 6),
(56, 'интерфейс', 'интерфейс', 0, 0, 0.6, 'и000', 6),
(57, 'интерфейс без', 'интерфейс без', 0, 1, 1.4333, 'и000', 6),
(58, 'интерфейс без лишних', 'интерфейс без лишних', 0, 1, 1.6667, 'и000', 6),
(59, 'к', 'к', 0, 0, 0.0667, 'к000', 6),
(60, 'к материалам', 'к материалам', 0, 1, 1.4, 'к000', 6),
(61, 'к материалам самой', 'к материалам самой', 0, 1, 1.6, 'к000', 6),
(62, 'которая', 'которая', 0, 0, 0.4667, 'к000', 6),
(63, 'которая только', 'которая только', 0, 1, 1.4667, 'к000', 6),
(64, 'которая только существовала', 'которая только существовала', 0, 1, 1.9, 'к000', 6),
(65, 'лишних', 'лишних', 0, 0, 0.4, 'л000', 6),
(66, 'лишних элементов', 'лишних элементов', 0, 1, 1.5333, 'л000', 6),
(67, 'лишних элементов это', 'лишних элементов это', 0, 1, 1.6667, 'л000', 6),
(68, 'ложение', 'ложение', 0, 0, 0.4667, 'л000', 6),
(69, 'ложение википедия', 'ложение википедия', 0, 1, 1.5667, 'л000', 6),
(70, 'ложение википедия для', 'ложение википедия для', 0, 1, 1.7, 'л000', 6),
(71, 'материал', 'материал', 0, 0, 0.5333, 'м000', 6),
(72, 'материал станет', 'материал станет', 0, 1, 1.5, 'м000', 6),
(73, 'материал станет доступнее', 'материал станет доступнее', 0, 1, 1.8333, 'м000', 6),
(74, 'материалам', 'материалам', 0, 0, 0.6667, 'м000', 6),
(75, 'материалам самой', 'материалам самой', 0, 1, 1.5333, 'м000', 6),
(76, 'материалам самой популярной', 'материалам самой популярной', 0, 1, 1.9, 'м000', 6),
(77, 'момента', 'момента', 0, 0, 0.4667, 'м000', 6),
(78, 'момента изобретения', 'момента изобретения', 0, 1, 1.6333, 'м000', 6),
(79, 'момента изобретения интернета', 'момента изобретения интернета', 0, 1, 1.9667, 'м000', 6),
(80, 'позволит', 'позволит', 0, 0, 0.5333, 'п000', 6),
(81, 'позволит страницам', 'позволит страницам', 0, 1, 1.6, 'п000', 6),
(82, 'позволит страницам грузится', 'позволит страницам грузится', 0, 1, 1.9, 'п000', 6),
(83, 'позволит тебе', 'позволит тебе', 0, 1, 1.4333, 'п000', 6),
(84, 'позволит тебе получить', 'позволит тебе получить', 0, 1, 1.7333, 'п000', 6),
(85, 'получить', 'получить', 0, 0, 0.5333, 'п000', 6),
(86, 'получить быстрый', 'получить быстрый', 0, 1, 1.5333, 'п000', 6),
(87, 'получить быстрый доступ', 'получить быстрый доступ', 0, 1, 1.7667, 'п000', 6),
(88, 'получишь', 'получишь', 0, 0, 0.5333, 'п000', 6),
(89, 'получишь простой', 'получишь простой', 0, 1, 1.5333, 'п000', 6),
(90, 'получишь простой интерфейс', 'получишь простой интерфейс', 0, 1, 1.8667, 'п000', 6),
(91, 'помощью', 'помощью', 0, 0, 0.4667, 'п000', 6),
(92, 'помощью приложения', 'помощью приложения', 0, 1, 1.6, 'п000', 6),
(93, 'помощью приложения википедия', 'помощью приложения википедия', 0, 1, 1.9333, 'п000', 6),
(94, 'понятнее', 'понятнее', 0, 0, 0.5333, 'п000', 6),
(95, 'понятнее теперь', 'понятнее теперь', 0, 1, 1.5, 'п000', 6),
(96, 'понятнее теперь ты', 'понятнее теперь ты', 0, 1, 1.6, 'п000', 6),
(97, 'популярной', 'популярной', 0, 0, 0.6667, 'п000', 6),
(98, 'популярной интернет-библиотеке', 'популярной интернет-библиотеке', 0, 1, 2, 'п000', 6),
(99, 'популярной интернет-библиотеке которая', 'популярной интернет-библиотеке которая', 0, 1, 2, 'п000', 6),
(100, 'преподаватель', 'преподаватель', 0, 0, 0.8667, 'п000', 4),
(101, 'преподаватель 1', 'преподаватель 1', 0, 1, 1.5, 'п000', 4),
(102, 'приложения', 'приложения', 0, 0, 0.6667, 'п000', 6),
(103, 'приложения википедия', 'приложения википедия', 0, 1, 1.6667, 'п000', 6),
(104, 'приложения википедия ты', 'приложения википедия ты', 0, 1, 1.7667, 'п000', 6),
(105, 'простой', 'простой', 0, 0, 0.4667, 'п000', 6),
(106, 'простой интерфейс', 'простой интерфейс', 0, 1, 1.5667, 'п000', 6),
(107, 'простой интерфейс без', 'простой интерфейс без', 0, 1, 1.7, 'п000', 6),
(108, 'с', 'с', 0, 0, 0.0667, 'с000', 6),
(109, 'с момента', 'с момента', 0, 1, 1.3, 'с000', 6),
(110, 'с момента изобретения', 'с момента изобретения', 0, 1, 1.7, 'с000', 6),
(111, 'с помощью', 'с помощью', 0, 1, 1.3, 'с000', 6),
(112, 'с помощью приложения', 'с помощью приложения', 0, 1, 1.6667, 'с000', 6),
(113, 'самой', 'самой', 0, 0, 0.3333, 'с000', 6),
(114, 'самой популярной', 'самой популярной', 0, 1, 1.5333, 'с000', 6),
(115, 'самой популярной интернет-библиотеке', 'самой популярной интернет-библиотеке', 0, 1, 2, 'с000', 6),
(116, 'свой', 'свой', 0, 0, 0.2667, 'с000', 6),
(117, 'свой android', 'свой android', 0, 1, 1.4, 'с5363', 6),
(118, 'свой android wikipe', 'свой android wikipe', 0, 1, 1.6333, 'с536321', 6),
(119, 'сможешь', 'сможешь', 0, 0, 0.4667, 'с000', 6),
(120, 'сможешь снабдить', 'сможешь снабдить', 0, 1, 1.5333, 'с000', 6),
(121, 'сможешь снабдить свой', 'сможешь снабдить свой', 0, 1, 1.7, 'с000', 6),
(122, 'снабдить', 'снабдить', 0, 0, 0.5333, 'с000', 6),
(123, 'снабдить свой', 'снабдить свой', 0, 1, 1.4333, 'с000', 6),
(124, 'снабдить свой android', 'снабдить свой android', 0, 1, 1.7, 'с5363', 6),
(125, 'станет', 'станет', 0, 0, 0.4, 'с000', 6),
(126, 'станет доступнее', 'станет доступнее', 0, 1, 1.5333, 'с000', 6),
(127, 'станет доступнее и', 'станет доступнее и', 0, 1, 1.6, 'с000', 6),
(128, 'страницам', 'страницам', 0, 0, 0.6, 'с000', 6),
(129, 'страницам грузится', 'страницам грузится', 0, 1, 1.6, 'с000', 6),
(130, 'страницам грузится еще', 'страницам грузится еще', 0, 1, 1.7333, 'с000', 6),
(131, 'существовала', 'существовала', 0, 0, 0.8, 'с000', 6),
(132, 'существовала с', 'существовала с', 0, 1, 1.4667, 'с000', 6),
(133, 'существовала с момента', 'существовала с момента', 0, 1, 1.7333, 'с000', 6),
(134, 'тебе', 'тебе', 0, 0, 0.2667, 'т000', 6),
(135, 'тебе получить', 'тебе получить', 0, 1, 1.4333, 'т000', 6),
(136, 'тебе получить быстрый', 'тебе получить быстрый', 0, 1, 1.7, 'т000', 6),
(137, 'теперь', 'теперь', 0, 0, 0.4, 'т000', 6),
(138, 'теперь ты', 'теперь ты', 0, 1, 1.3, 'т000', 6),
(139, 'теперь ты сможешь', 'теперь ты сможешь', 0, 1, 1.5667, 'т000', 6),
(140, 'только', 'только', 0, 0, 0.4, 'т000', 6),
(141, 'только существовала', 'только существовала', 0, 1, 1.6333, 'т000', 6),
(142, 'только существовала с', 'только существовала с', 0, 1, 1.7, 'т000', 6),
(143, 'ты', 'ты', 0, 0, 0.1333, 'т000', 6),
(144, 'ты получишь', 'ты получишь', 0, 1, 1.3667, 'т000', 6),
(145, 'ты получишь простой', 'ты получишь простой', 0, 1, 1.6333, 'т000', 6),
(146, 'ты сможешь', 'ты сможешь', 0, 1, 1.3333, 'т000', 6),
(147, 'ты сможешь снабдить', 'ты сможешь снабдить', 0, 1, 1.6333, 'т000', 6),
(148, 'элементов', 'элементов', 0, 0, 0.6, 'э000', 6),
(149, 'элементов это', 'элементов это', 0, 1, 1.4333, 'э000', 6),
(150, 'элементов это позволит', 'элементов это позволит', 0, 1, 1.7333, 'э000', 6),
(151, 'это', 'это', 0, 0, 0.2, 'э000', 6),
(152, 'это позволит', 'это позволит', 0, 1, 1.4, 'э000', 6),
(153, 'это позволит страницам', 'это позволит страницам', 0, 1, 1.7333, 'э000', 6),
(256, 'преподаватели', 'преподаватели', 0, 0, 0.8667, 'п000', 1),
(257, '2', '2', 0, 0, 0.1, '', 9),
(258, 'prepodavatel 2', 'prepodavatel 2', 0, 1, 1.4667, 'P613134', 7),
(259, 'staff', 'staff', 0, 0, 0.3333, 'S310', 14),
(260, 'доктор', 'доктор', 0, 0, 0.4, 'д000', 14),
(261, 'доктор юридических', 'доктор юридических', 0, 1, 1.6, 'д000', 12),
(262, 'доктор юридических наук', 'доктор юридических наук', 0, 1, 1.7667, 'д000', 12),
(263, 'иван', 'иван', 0, 0, 0.2667, 'и000', 4),
(264, 'иван иванович', 'иван иванович', 0, 1, 1.4333, 'и000', 4),
(265, 'иванов', 'иванов', 0, 0, 0.4, 'и000', 4),
(266, 'иванов иван', 'иванов иван', 0, 1, 1.3667, 'и000', 4),
(267, 'иванов иван иванович', 'иванов иван иванович', 0, 1, 1.6667, 'и000', 4),
(268, 'иванович', 'иванович', 0, 0, 0.5333, 'и000', 4),
(269, 'наук', 'наук', 0, 0, 0.2667, 'н000', 14),
(270, 'професор', 'професор', 0, 0, 0.5333, 'п000', 14),
(271, 'професор доктор', 'професор доктор', 0, 1, 1.5, 'п000', 9),
(272, 'професор доктор юридических', 'професор доктор юридических', 0, 1, 1.9, 'п000', 9),
(273, 'юридических', 'юридических', 0, 0, 0.7333, 'ю000', 12),
(274, 'юридических наук', 'юридических наук', 0, 1, 1.5333, 'ю000', 12),
(288, 'доцент', 'доцент', 0, 0, 0.4, 'д000', 7),
(289, 'доцент професор', 'доцент професор', 0, 1, 1.5, 'д000', 7),
(290, 'доцент професор доктор', 'доцент професор доктор', 0, 1, 1.7333, 'д000', 7),
(291, 'нас', 'нас', 0, 0, 0.2, 'н000', 8),
(292, 'про', 'про', 0, 0, 0.2, 'п000', 8),
(293, 'про нас', 'про нас', 0, 1, 1.2333, 'п000', 8),
(294, '1 герой', '1 герой', 0, 1, 1.2333, 'г000', 5),
(295, '1 герой україни', '1 герой україни', 0, 1, 1.5, 'г000', 5),
(296, 'і', 'і', 0, 0, 0.0667, 'і000', 5),
(297, 'і техніки', 'і техніки', 0, 1, 1.3, 'і000', 5),
(298, 'і техніки україни', 'і техніки україни', 0, 1, 1.5667, 'і000', 5),
(299, 'академії', 'академії', 0, 0, 0.5333, 'а000', 10),
(300, 'академії наук', 'академії наук', 0, 1, 1.4333, 'а000', 5),
(301, 'академії наук україни', 'академії наук україни', 0, 1, 1.7, 'а000', 5),
(302, 'академії правових', 'академії правових', 0, 1, 1.5667, 'а000', 10),
(303, 'академії правових наук', 'академії правових наук', 0, 1, 1.7333, 'а000', 10),
(304, 'академік', 'академік', 0, 0, 0.5333, 'а000', 10),
(305, 'академік національної', 'академік національної', 0, 1, 1.7, 'а000', 10),
(306, 'академік національної академії', 'академік національної академії', 0, 1, 2, 'а000', 10),
(307, 'василь', 'василь', 0, 0, 0.4, 'в000', 5),
(308, 'василь якович', 'василь якович', 0, 1, 1.4333, 'в000', 5),
(309, 'герой', 'герой', 0, 0, 0.3333, 'г000', 5),
(310, 'герой україни', 'герой україни', 0, 1, 1.4333, 'г000', 5),
(311, 'діяч', 'діяч', 0, 0, 0.2667, 'д000', 5),
(312, 'діяч науки', 'діяч науки', 0, 1, 1.3333, 'д000', 5),
(313, 'діяч науки і', 'діяч науки і', 0, 1, 1.4, 'д000', 5),
(314, 'державної', 'державної', 0, 0, 0.6, 'д000', 10),
(315, 'державної премії', 'державної премії', 0, 1, 1.5333, 'д000', 10),
(316, 'державної премії україни', 'державної премії україни', 0, 1, 1.8, 'д000', 10),
(317, 'доктор юридичних', 'доктор юридичних', 0, 1, 1.5333, 'д000', 7),
(318, 'доктор юридичних наук', 'доктор юридичних наук', 0, 1, 1.7, 'д000', 7),
(319, 'завідувач', 'завідувач', 0, 0, 0.6, 'з000', 10),
(320, 'завідувач кафедри', 'завідувач кафедри', 0, 1, 1.5667, 'з000', 10),
(321, 'завідувач кафедри кримінального', 'завідувач кафедри кримінального', 0, 1, 2, 'з000', 5),
(322, 'заслужений', 'заслужений', 0, 0, 0.6667, 'з000', 8),
(323, 'заслужений діяч', 'заслужений діяч', 0, 1, 1.5, 'з000', 5),
(324, 'заслужений діяч науки', 'заслужений діяч науки', 0, 1, 1.7, 'з000', 5),
(325, 'кафедри', 'кафедри', 0, 0, 0.4667, 'к000', 10),
(326, 'кафедри кримінального', 'кафедри кримінального', 0, 1, 1.7, 'к000', 5),
(327, 'кафедри кримінального права', 'кафедри кримінального права', 0, 1, 1.9, 'к000', 5),
(328, 'кримінального', 'кримінального', 0, 0, 0.8667, 'к000', 5),
(329, 'кримінального права', 'кримінального права', 0, 1, 1.6333, 'к000', 5),
(330, 'кримінального права 1', 'кримінального права 1', 0, 1, 1.7, 'к000', 5),
(331, 'лауреат', 'лауреат', 0, 0, 0.4667, 'л000', 10),
(332, 'лауреат державної', 'лауреат державної', 0, 1, 1.5667, 'л000', 10),
(333, 'лауреат державної премії', 'лауреат державної премії', 0, 1, 1.8, 'л000', 10),
(334, 'наук професор', 'наук професор', 0, 1, 1.4333, 'н000', 7),
(335, 'наук професор заслужений', 'наук професор заслужений', 0, 1, 1.8, 'н000', 5),
(336, 'наук україни', 'наук україни', 0, 1, 1.4, 'н000', 10),
(337, 'наук україни академік', 'наук україни академік', 0, 1, 1.7, 'н000', 5),
(338, 'наук україни доктор', 'наук україни доктор', 0, 1, 1.6333, 'н000', 7),
(339, 'науки', 'науки', 0, 0, 0.3333, 'н000', 5),
(340, 'науки і', 'науки і', 0, 1, 1.2333, 'н000', 5),
(341, 'науки і техніки', 'науки і техніки', 0, 1, 1.5, 'н000', 5),
(342, 'національної', 'національної', 0, 0, 0.8, 'н000', 10),
(343, 'національної академії', 'національної академії', 0, 1, 1.7, 'н000', 10),
(344, 'національної академії наук', 'національної академії наук', 0, 1, 1.8667, 'н000', 5),
(345, 'національної академії правових', 'національної академії правових', 0, 1, 2, 'н000', 10),
(346, 'права', 'права', 0, 0, 0.3333, 'п000', 7),
(347, 'права 1', 'права 1', 0, 1, 1.2333, 'п000', 5),
(348, 'права 1 герой', 'права 1 герой', 0, 1, 1.4333, 'п000', 5),
(349, 'правових', 'правових', 0, 0, 0.5333, 'п000', 10),
(350, 'правових наук', 'правових наук', 0, 1, 1.4333, 'п000', 10),
(351, 'правових наук україни', 'правових наук україни', 0, 1, 1.7, 'п000', 10),
(352, 'премії', 'премії', 0, 0, 0.4, 'п000', 10),
(353, 'премії україни', 'премії україни', 0, 1, 1.4667, 'п000', 10),
(354, 'премії україни завідувач', 'премії україни завідувач', 0, 1, 1.8, 'п000', 10),
(355, 'професор заслужений', 'професор заслужений', 0, 1, 1.6333, 'п000', 8),
(356, 'професор заслужений діяч', 'професор заслужений діяч', 0, 1, 1.8, 'п000', 5),
(357, 'тацій', 'тацій', 0, 0, 0.3333, 'т000', 5),
(358, 'тацій василь', 'тацій василь', 0, 1, 1.4, 'т000', 5),
(359, 'тацій василь якович', 'тацій василь якович', 0, 1, 1.6333, 'т000', 5),
(360, 'техніки', 'техніки', 0, 0, 0.4667, 'т000', 5),
(361, 'техніки україни', 'техніки україни', 0, 1, 1.5, 'т000', 5),
(362, 'техніки україни лауреат', 'техніки україни лауреат', 0, 1, 1.7667, 'т000', 5),
(363, 'україни', 'україни', 0, 0, 0.4667, 'у000', 10),
(364, 'україни академік', 'україни академік', 0, 1, 1.5333, 'у000', 5),
(365, 'україни академік національної', 'україни академік національної', 0, 1, 1.9667, 'у000', 5),
(366, 'україни доктор', 'україни доктор', 0, 1, 1.4667, 'у000', 7),
(367, 'україни доктор юридичних', 'україни доктор юридичних', 0, 1, 1.8, 'у000', 7),
(368, 'україни завідувач', 'україни завідувач', 0, 1, 1.5667, 'у000', 10),
(369, 'україни завідувач кафедри', 'україни завідувач кафедри', 0, 1, 1.8333, 'у000', 10),
(370, 'україни лауреат', 'україни лауреат', 0, 1, 1.5, 'у000', 8),
(371, 'україни лауреат державної', 'україни лауреат державної', 0, 1, 1.8333, 'у000', 8),
(372, 'юридичних', 'юридичних', 0, 0, 0.6, 'ю000', 7),
(373, 'юридичних наук', 'юридичних наук', 0, 1, 1.4667, 'ю000', 7),
(374, 'юридичних наук професор', 'юридичних наук професор', 0, 1, 1.7667, 'ю000', 7),
(375, 'якович', 'якович', 0, 0, 0.4, 'я000', 5),
(421, '3', '3', 0, 0, 0.1, '', 2),
(422, 'bityak', 'bityak', 0, 0, 0.4, 'B320', 2),
(423, 'bityak yurіj', 'bityak yurіj', 0, 1, 1.4, 'B3262', 2),
(424, 'bityak yurіj prokopovich', 'bityak yurіj prokopovich', 0, 1, 1.8, 'B326216212', 2),
(425, 'prokopovich', 'prokopovich', 0, 0, 0.7333, 'P6212', 2),
(426, 'yurіj', 'yurіj', 0, 0, 0.3333, 'Y620', 2),
(427, 'yurіj prokopovich', 'yurіj prokopovich', 0, 1, 1.5667, 'Y6216212', 2),
(428, 'адміністративного', 'адміністративного', 0, 0, 1, 'а000', 2),
(429, 'адміністративного права', 'адміністративного права', 0, 1, 1.7667, 'а000', 2),
(430, 'битяк', 'битяк', 0, 0, 0.3333, 'б000', 2),
(431, 'битяк юрій', 'битяк юрій', 0, 1, 1.3333, 'б000', 2),
(432, 'битяк юрій прокопович', 'битяк юрій прокопович', 0, 1, 1.7, 'б000', 2),
(433, 'завідувач кафедри адміністративного', 'завідувач кафедри адміністративного', 0, 1, 2, 'з000', 2),
(434, 'кафедри адміністративного', 'кафедри адміністративного', 0, 1, 1.8333, 'к000', 2),
(435, 'кафедри адміністративного права', 'кафедри адміністративного права', 0, 1, 2, 'к000', 2),
(436, 'наук професор лауреат', 'наук професор лауреат', 0, 1, 1.7, 'н000', 2),
(437, 'прокопович', 'прокопович', 0, 0, 0.6667, 'п000', 2),
(438, 'професор лауреат', 'професор лауреат', 0, 1, 1.5333, 'п000', 2),
(439, 'професор лауреат державної', 'професор лауреат державної', 0, 1, 1.8667, 'п000', 2),
(440, 'юрій', 'юрій', 0, 0, 0.2667, 'ю000', 2),
(441, 'юрій прокопович', 'юрій прокопович', 0, 1, 1.5, 'ю000', 2),
(452, '4', '4', 0, 0, 0.1, '', 3),
(453, 'komarov', 'komarov', 0, 0, 0.4667, 'K561', 3),
(454, 'komarov vyacheslav', 'komarov vyacheslav', 0, 1, 1.6, 'K561241', 3),
(455, 'komarov vyacheslav vasilovich', 'komarov vyacheslav vasilovich', 0, 1, 1.9667, 'K5612412412', 3),
(456, 'vasilovich', 'vasilovich', 0, 0, 0.6667, 'V2412', 3),
(457, 'vyacheslav', 'vyacheslav', 0, 0, 0.6667, 'V241', 3),
(458, 'vyacheslav vasilovich', 'vyacheslav vasilovich', 0, 1, 1.7, 'V2412412', 3),
(459, 'васильович', 'васильович', 0, 0, 0.6667, 'в000', 3),
(460, 'вячеслав', 'вячеслав', 0, 0, 0.5333, 'в000', 3),
(461, 'вячеслав васильович', 'вячеслав васильович', 0, 1, 1.6333, 'в000', 3),
(462, 'завідувач кафедри цивільного', 'завідувач кафедри цивільного', 0, 1, 1.9333, 'з000', 3),
(463, 'заслужений юрист', 'заслужений юрист', 0, 1, 1.5333, 'з000', 3),
(464, 'заслужений юрист україни', 'заслужений юрист україни', 0, 1, 1.8, 'з000', 3),
(465, 'кандидат', 'кандидат', 0, 0, 0.5333, 'к000', 3),
(466, 'кандидат юридических', 'кандидат юридических', 0, 1, 1.6667, 'к000', 3),
(467, 'кандидат юридических наук', 'кандидат юридических наук', 0, 1, 1.8333, 'к000', 3),
(468, 'кафедри цивільного', 'кафедри цивільного', 0, 1, 1.6, 'к000', 3),
(469, 'кафедри цивільного процесу', 'кафедри цивільного процесу', 0, 1, 1.8667, 'к000', 3),
(470, 'комаров', 'комаров', 0, 0, 0.4667, 'к000', 3),
(471, 'комаров вячеслав', 'комаров вячеслав', 0, 1, 1.5333, 'к000', 3),
(472, 'комаров вячеслав васильович', 'комаров вячеслав васильович', 0, 1, 1.9, 'к000', 3),
(473, 'наук кандидат', 'наук кандидат', 0, 1, 1.4333, 'н000', 3),
(474, 'наук кандидат юридических', 'наук кандидат юридических', 0, 1, 1.8333, 'н000', 3),
(475, 'наук україни професор', 'наук україни професор', 0, 1, 1.7, 'н000', 3),
(476, 'професор заслужений юрист', 'професор заслужений юрист', 0, 1, 1.8333, 'п000', 3),
(477, 'процесу', 'процесу', 0, 0, 0.4667, 'п000', 3),
(478, 'україни професор', 'україни професор', 0, 1, 1.5333, 'у000', 3),
(479, 'україни професор заслужений', 'україни професор заслужений', 0, 1, 1.9, 'у000', 3),
(480, 'цивільного', 'цивільного', 0, 0, 0.6667, 'ц000', 3),
(481, 'цивільного процесу', 'цивільного процесу', 0, 1, 1.6, 'ц000', 3),
(482, 'юридических наук кандидат', 'юридических наук кандидат', 0, 1, 1.8333, 'ю000', 3),
(483, 'юрист', 'юрист', 0, 0, 0.3333, 'ю000', 3),
(484, 'юрист україни', 'юрист україни', 0, 1, 1.4333, 'ю000', 3),
(485, 'юрист україни лауреат', 'юрист україни лауреат', 0, 1, 1.7, 'ю000', 3),
(515, 'tacіj', 'tacіj', 0, 0, 0.3333, 'T200', 2),
(516, 'tacіj vasil', 'tacіj vasil', 0, 1, 1.3667, 'T2124', 2),
(517, 'tacіj vasil yakovich', 'tacіj vasil yakovich', 0, 1, 1.6667, 'T2124212', 2),
(518, 'vasil', 'vasil', 0, 0, 0.3333, 'V240', 2),
(519, 'vasil yakovich', 'vasil yakovich', 0, 1, 1.4667, 'V24212', 2),
(520, 'yakovich', 'yakovich', 0, 0, 0.5333, 'Y212', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_finder_terms_common`
--

INSERT INTO `urportal_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_finder_types`
--

CREATE TABLE IF NOT EXISTS `urportal_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `urportal_finder_types`
--

INSERT INTO `urportal_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Web Link', ''),
(6, 'ZOO Item', '');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_languages`
--

CREATE TABLE IF NOT EXISTS `urportal_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `urportal_languages`
--

INSERT INTO `urportal_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_menu`
--

CREATE TABLE IF NOT EXISTS `urportal_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=127 ;

--
-- Дамп данных таблицы `urportal_menu`
--

INSERT INTO `urportal_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 89, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 31, 36, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 32, 33, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 34, 35, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 37, 42, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 38, 39, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 40, 41, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 43, 48, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 44, 45, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 46, 47, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 63, 64, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 53, 54, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 55, 60, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 56, 57, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 58, 59, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 51, 52, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 61, 62, 0, '*', 1),
(101, 'mainmenu', 'Головна', 'golovna', '', 'golovna', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 1, '*', 0),
(102, 'mainmenu', 'Наукове    життя', 'naukove-zhittya', '', 'naukove-zhittya', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(103, 'mainmenu', 'Про нас', 'pro-nas', '', 'pro-nas', 'index.php?option=com_zoo&view=category&layout=category', 'component', 1, 1, 1, 10018, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"category":"2","application":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(104, 'mainmenu', 'Захисти', 'zakhisti', '', 'zakhisti', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(105, 'mainmenu', 'Контакты', 'kontakty', '', 'kontakty', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"plain","show_contact_category":"hide","show_contact_list":"0","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"1","show_email_copy":"0","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 74, 0, '*', 0),
(120, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10013, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 75, 84, 0, '', 1),
(121, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 120, 2, 10013, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 76, 77, 0, '', 1),
(122, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 120, 2, 10013, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 78, 79, 0, '', 1),
(123, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 120, 2, 10013, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 80, 81, 0, '', 1),
(124, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 120, 2, 10013, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 82, 83, 0, '', 1),
(125, 'mainmenu', 'Події', 'podiji', '', 'podiji', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(126, 'main', 'com_zoo', 'com-zoo', '', 'com-zoo', 'index.php?option=com_zoo', 'component', 0, 1, 1, 10018, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_zoo/assets/images/zoo_16.png', 0, '', 87, 88, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_menu_types`
--

CREATE TABLE IF NOT EXISTS `urportal_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `urportal_menu_types`
--

INSERT INTO `urportal_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_messages`
--

CREATE TABLE IF NOT EXISTS `urportal_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `urportal_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_modules`
--

CREATE TABLE IF NOT EXISTS `urportal_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Дамп данных таблицы `urportal_modules`
--

INSERT INTO `urportal_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Верхнее меню', '', '', 1, 'mainmenu', 837, '2014-01-19 20:36:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"0","showHome":"1","homeText":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(88, 'Нижнее меню', '', '', 1, 'footer', 837, '2014-02-09 19:25:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(89, 'Vinaora Nivo Slider', '', '', 1, 'slide', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_vt_nivo_slider', 1, 1, '{"demo":"-1","theme":"light","slide_width":"auto","slide_height":"auto","item_dir":"\\/images\\/slideshow","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"sliceDownLeft","slices":"0","boxCols":"0","boxRows":"0","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"true","controlNav":"true","pauseOnHover":"true","manualAdvance":"false","prevText":"Prev","nextText":"Next","ribbon":"1","slide_bgcolor":"#ffffff","slide_bdcolor":"#ffffff","slide_bdwidth":"10","slide_bdrounded":"1","slide_bdshadow":"1","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"topleft","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","jquery_source":"local","jquery_version":"latest","controlNavThumbs":"false"}', 0, '*'),
(90, 'Изображение в шапке', '', '<p><img src="images/slideshow/007.jpg" alt="007" width="1000" height="260" /></p>', 1, 'slide', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"header-slide","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'Сладшоу на главной', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_vt_nivo_slider', 1, 0, '{"demo":"-1","theme":"light","slide_width":"300","slide_height":"auto","item_dir":"\\/images\\/main_slideshow","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"sliceDownLeft","slices":"0","boxCols":"0","boxRows":"0","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"false","controlNav":"false","pauseOnHover":"true","manualAdvance":"false","prevText":"Prev","nextText":"Next","ribbon":"1","slide_bgcolor":"#ffffff","slide_bdcolor":"#ffffff","slide_bdwidth":"10","slide_bdrounded":"1","slide_bdshadow":"1","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"topleft","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","moduleclass_sfx":" main_slideshow","cache":"1","cache_time":"900","cachemode":"static","jquery_source":"local","jquery_version":"latest","controlNavThumbs":"false"}', 0, '*'),
(92, 'ZOO Category', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_zoocategory', 1, 1, '', 0, '*'),
(93, 'ZOO Comment', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_zoocomment', 1, 1, '', 0, '*'),
(94, 'ZOO Item', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_zooitem', 1, 1, '', 0, '*'),
(95, 'ZOO Quick Icons', '', '', 2, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zooquickicon', 1, 1, '', 1, '*'),
(96, 'ZOO Tag', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_zootag', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_modules_menu`
--

CREATE TABLE IF NOT EXISTS `urportal_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_modules_menu`
--

INSERT INTO `urportal_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, -101),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 101),
(90, 101),
(91, 0),
(95, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `urportal_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_overrider`
--

CREATE TABLE IF NOT EXISTS `urportal_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_redirect_links`
--

CREATE TABLE IF NOT EXISTS `urportal_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `urportal_redirect_links`
--

INSERT INTO `urportal_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://ikona/index.php?Itemid=106', '', 'http://ikona/', '', 3, 0, '2014-01-21 20:38:39', '0000-00-00 00:00:00'),
(2, 'http://ikona/index.php?Itemid=107', '', 'http://ikona/', '', 4, 0, '2014-01-21 20:38:42', '0000-00-00 00:00:00'),
(3, 'http://ikona/index.php/ikonostasy/<?php echo $this->baseurl ?>/templates/mytemplate/js/highslide/graphics/outlines/rounded-white.png', '', 'http://ikona/index.php/ikonostasy/1-kharkov-khram-pri-bolnitse-5-tskb-sv-zhivonosnyj-istochnik', '', 3, 0, '2014-02-01 10:55:16', '0000-00-00 00:00:00'),
(4, 'http://ikona/index.php/ikonostasy/<?php echo $this->baseurl ?>/templates/mytemplate/js/highslide/graphics/zoomout.cur', '', 'http://ikona/index.php/ikonostasy/1-kharkov-khram-pri-bolnitse-5-tskb-sv-zhivonosnyj-istochnik', '', 2, 0, '2014-02-01 10:55:16', '0000-00-00 00:00:00'),
(5, 'http://ikona/index.php/ikonostasy/highslide/graphics/zoomout.cur', '', 'http://ikona/index.php/ikonostasy/1-kharkov-khram-pri-bolnitse-5-tskb-sv-zhivonosnyj-istochnik', '', 1, 0, '2014-02-01 10:56:20', '0000-00-00 00:00:00'),
(6, 'http://ikona/index.php/ikonostasy/highslide/graphics/outlines/rounded-white.png', '', 'http://ikona/index.php/ikonostasy/1-kharkov-khram-pri-bolnitse-5-tskb-sv-zhivonosnyj-istochnik', '', 1, 0, '2014-02-01 10:56:20', '0000-00-00 00:00:00'),
(7, 'http://ikona/index.php?option=com_mtree?setOrderingLink', '', 'http://ikona/administrator/index.php?option=com_mtree&task=listcats', '', 1, 0, '2014-02-15 11:30:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_schemas`
--

CREATE TABLE IF NOT EXISTS `urportal_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_schemas`
--

INSERT INTO `urportal_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.14');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_session`
--

CREATE TABLE IF NOT EXISTS `urportal_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_session`
--

INSERT INTO `urportal_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('dssvqrrcsf8n42uh6f54rgo0h7', 0, 1, '1399729174', '__default|a:8:{s:15:"session.counter";i:31;s:19:"session.timer.start";i:1399720039;s:18:"session.timer.last";i:1399729164;s:17:"session.timer.now";i:1399729173;s:22:"session.client.browser";s:128:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 YaBrowser/14.2.1700.12599 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":26:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;s:10:"superadmin";N;}s:13:"session.token";s:32:"762e72198df06d47002d836e63cf84d9";}', 0, '', ''),
('pba4l6c4rgc83ffp24u30t6ke0', 1, 0, '1399729167', '__default|a:8:{s:15:"session.counter";i:96;s:19:"session.timer.start";i:1399720149;s:18:"session.timer.last";i:1399729162;s:17:"session.timer.now";i:1399729164;s:22:"session.client.browser";s:128:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 YaBrowser/14.2.1700.12599 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":3:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:18:"com_zooapplication";i:2;}}s:4:"user";O:5:"JUser":26:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"837";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:16:"dzigunskiy@bk.ru";s:8:"password";s:65:"395e584a9f13d03913eedab4814e9dd0:NV811wpLB8fkqE1CBw9e17RLD7MNpTbr";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-01-12 19:57:33";s:13:"lastvisitDate";s:19:"2014-05-09 17:57:27";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;s:10:"superadmin";b:1;}s:13:"session.token";s:32:"c9ae03c74e2e96a6de929ee6aecc11e2";}__wf|a:1:{s:13:"session.token";s:32:"2d67d247914a4f9d886ecfaf2dbbdc4b";}', 837, 'admin', '');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_template_styles`
--

CREATE TABLE IF NOT EXISTS `urportal_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `urportal_template_styles`
--

INSERT INTO `urportal_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'mytemplate', 0, '1', 'mytemplate - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_updates`
--

CREATE TABLE IF NOT EXISTS `urportal_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=797 ;

--
-- Дамп данных таблицы `urportal_updates`
--

INSERT INTO `urportal_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.17', '', 'http://update.joomla.org/core/extension.xml', ''),
(2, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(3, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(4, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(5, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(6, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(7, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(8, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(9, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(10, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(11, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(12, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(13, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(14, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(15, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(16, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(17, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(18, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2-5-17.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(19, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(20, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(21, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(22, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(23, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(24, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(25, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(26, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(27, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(28, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(29, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(30, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(31, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(32, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(33, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(34, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(35, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(36, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(37, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(38, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(39, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(40, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(41, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(42, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(43, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(44, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(45, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(46, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(47, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(48, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(49, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(50, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(51, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(52, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(53, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(54, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(55, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(56, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(57, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(58, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(59, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(60, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(61, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(62, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(63, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(64, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(65, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(66, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(67, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(68, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(69, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(70, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(71, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(72, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(73, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(74, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(75, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(76, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(77, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(78, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(79, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(80, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(81, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(82, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(83, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(84, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(85, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(86, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(87, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(88, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(89, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(90, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(91, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(92, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(93, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(94, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(95, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(96, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(97, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(98, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(99, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(100, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(101, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(102, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(103, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(104, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(105, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(106, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(107, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(108, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(109, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(110, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(111, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(112, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(113, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(114, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(115, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(116, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(117, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(118, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(119, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(120, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(121, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(122, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(123, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(124, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(125, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(126, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(127, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(128, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(129, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(130, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(131, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(132, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(133, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(134, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(135, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(136, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(137, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(138, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(139, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(140, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(141, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(142, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(143, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(144, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(145, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(146, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(147, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(148, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(149, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(150, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(151, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(152, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(153, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(154, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(155, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(156, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(157, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(158, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(159, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(160, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(161, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(162, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(163, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(164, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(165, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(166, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(167, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(168, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(169, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(170, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(171, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(172, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(173, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(174, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(175, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(176, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(177, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(178, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(179, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(180, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(181, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(182, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(183, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(184, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(185, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(186, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(187, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(188, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(189, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(190, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(191, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(192, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(193, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(194, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(195, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(196, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(197, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(198, 4, 0, 0, 'Vinaora Nivo Slider', '', 'mod_vt_nivo_slider', 'module', '', 1, '2.5.30', '', 'http://update.vinaora.com/joomla/mod_vt_nivo_slider.xml', 'http://vinaora.com/'),
(199, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(200, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(201, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(202, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(203, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(204, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(205, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(206, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(207, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(208, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(209, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(210, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(211, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(212, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(213, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(214, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(215, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(216, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(217, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(218, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(219, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(220, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(221, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(222, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(223, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(224, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(225, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(226, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(227, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(228, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(229, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(230, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(231, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(232, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(233, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(234, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(235, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(236, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(237, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(238, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(239, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(240, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(241, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(242, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(243, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(244, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(245, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(246, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(247, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(248, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(249, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(250, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(251, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(252, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(253, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(254, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(255, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(256, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(257, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(258, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(259, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(260, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(261, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(262, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(263, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(264, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(265, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(266, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(267, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(268, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(269, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(270, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(271, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(272, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(273, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(274, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(275, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(276, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(277, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(278, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(279, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(280, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(281, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(282, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(283, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(284, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(285, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(286, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(287, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(288, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(289, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(290, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(291, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(292, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(293, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(294, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(295, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(296, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(297, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(298, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(299, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(300, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(301, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(302, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(303, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(304, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(305, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(306, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(307, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(308, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(309, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(310, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(311, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(312, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(313, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(314, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(315, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(316, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(317, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(318, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(319, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(320, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(321, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(322, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(323, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(324, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(325, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(326, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(327, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(328, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(329, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(330, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(331, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(332, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(333, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(334, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(335, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(336, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(337, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(338, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(339, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(340, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(341, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(342, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(343, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(344, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(345, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(346, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(347, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(348, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(349, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', '');
INSERT INTO `urportal_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(350, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(351, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(352, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(353, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(354, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(355, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(356, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(357, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(358, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(359, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(360, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(361, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(362, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(363, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(364, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(365, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(366, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(367, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(368, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(369, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(370, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(371, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(372, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(373, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(374, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(375, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(376, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(377, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(378, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(379, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(380, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(381, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(382, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(383, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(384, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(385, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(386, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(387, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(388, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(389, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(390, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(391, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(392, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(393, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(394, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(395, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(396, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(397, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(398, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(399, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(400, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(401, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(402, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(403, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(404, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(405, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(406, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(407, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(408, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(409, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(410, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(411, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(412, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(413, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(414, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(415, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(416, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(417, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(418, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(419, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(420, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(421, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(422, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(423, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(424, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(425, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(426, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(427, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(428, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(429, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(430, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(431, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(432, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(433, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(434, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(435, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(436, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(437, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(438, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(439, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(440, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(441, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(442, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(443, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(444, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(445, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(446, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(447, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(448, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(449, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(450, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(451, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(452, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(453, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(454, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(455, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(456, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(457, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(458, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(459, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(460, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(461, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(462, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(463, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(464, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(465, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(466, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(467, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(468, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(469, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(470, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(471, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(472, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(473, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(474, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(475, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(476, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(477, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(478, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(479, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(480, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(481, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(482, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(483, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(484, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(485, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(486, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(487, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(488, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(489, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(490, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(491, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(492, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(493, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(494, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(495, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(496, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(497, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(498, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(499, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(500, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(501, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(502, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(503, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(504, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(505, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(506, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(507, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(508, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(509, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(510, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(511, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(512, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(513, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(514, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(515, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(516, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(517, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(518, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(519, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(520, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(521, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(522, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(523, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(524, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(525, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(526, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(527, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(528, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.20', '', 'http://update.joomla.org/core/extension.xml', ''),
(529, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(530, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(531, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(532, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(533, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(534, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(535, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(536, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(537, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(538, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(539, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(540, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(541, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(542, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(543, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(544, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(545, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(546, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(547, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(548, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(549, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(550, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(551, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(552, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(553, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(554, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(555, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(556, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(557, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(558, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(559, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(560, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(561, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(562, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(563, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(564, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(565, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(566, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(567, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(568, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(569, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(570, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(571, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(572, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(573, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(574, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(575, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(576, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(577, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(578, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(579, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(580, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(581, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(582, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(583, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(584, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(585, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(586, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(587, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(588, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(589, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(590, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(591, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(592, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(593, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(594, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(595, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.20', '', 'http://update.joomla.org/core/extension.xml', ''),
(596, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(597, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(598, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(599, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(600, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(601, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(602, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(603, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(604, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(605, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(606, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(607, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(608, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(609, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(610, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(611, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(612, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(613, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(614, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(615, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(616, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(617, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(618, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(619, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(620, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(621, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(622, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(623, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(624, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(625, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(626, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(627, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(628, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(629, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(630, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(631, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(632, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(633, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(634, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(635, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(636, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(637, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(638, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(639, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(640, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(641, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(642, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(643, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(644, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(645, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(646, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(647, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(648, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(649, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(650, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(651, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(652, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(653, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(654, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(655, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(656, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(657, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(658, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(659, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(660, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(661, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(662, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.20', '', 'http://update.joomla.org/core/extension.xml', ''),
(663, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(664, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(665, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(666, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(667, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(668, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(669, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(670, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(671, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(672, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(673, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(674, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(675, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(676, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(677, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(678, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(679, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(680, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(681, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(682, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(683, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(684, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(685, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(686, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(687, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(688, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(689, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(690, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(691, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(692, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(693, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(694, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(695, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', '');
INSERT INTO `urportal_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(696, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(697, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(698, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(699, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(700, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(701, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(702, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(703, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(704, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(705, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(706, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(707, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(708, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(709, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(710, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(711, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(712, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(713, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(714, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(715, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(716, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(717, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(718, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(719, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(720, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(721, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(722, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(723, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(724, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(725, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(726, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(727, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(728, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(729, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.20', '', 'http://update.joomla.org/core/extension.xml', ''),
(730, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(731, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(732, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(733, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(734, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(735, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(736, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(737, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(738, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(739, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(740, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(741, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(742, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(743, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(744, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(745, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(746, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(747, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(748, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(749, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(750, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(751, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(752, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(753, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(754, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(755, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(756, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(757, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(758, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(759, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(760, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(761, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(762, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(763, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.20', '', 'http://update.joomla.org/core/extension.xml', ''),
(764, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(765, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(766, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(767, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(768, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(769, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(770, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(771, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(772, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(773, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(774, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(775, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(776, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(777, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(778, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(779, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(780, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(781, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(782, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(783, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(784, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(785, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(786, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(787, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(788, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(789, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(790, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(791, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(792, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(793, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(794, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(795, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(796, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_update_categories`
--

CREATE TABLE IF NOT EXISTS `urportal_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_update_sites`
--

CREATE TABLE IF NOT EXISTS `urportal_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `urportal_update_sites`
--

INSERT INTO `urportal_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1399728147),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1399728147),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1399728147),
(4, 'Vinaora Update Server', 'extension', 'http://update.vinaora.com/joomla/mod_vt_nivo_slider.xml', 0, 1399408617),
(6, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1', 0, 1393167808);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `urportal_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `urportal_update_sites_extensions`
--

INSERT INTO `urportal_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10003),
(4, 10007),
(6, 10013);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_usergroups`
--

CREATE TABLE IF NOT EXISTS `urportal_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `urportal_usergroups`
--

INSERT INTO `urportal_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_users`
--

CREATE TABLE IF NOT EXISTS `urportal_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=838 ;

--
-- Дамп данных таблицы `urportal_users`
--

INSERT INTO `urportal_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(837, 'Super User', 'admin', 'dzigunskiy@bk.ru', '395e584a9f13d03913eedab4814e9dd0:NV811wpLB8fkqE1CBw9e17RLD7MNpTbr', 'deprecated', 0, 1, '2014-01-12 19:57:33', '2014-05-10 11:09:16', '0', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_user_notes`
--

CREATE TABLE IF NOT EXISTS `urportal_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_user_profiles`
--

CREATE TABLE IF NOT EXISTS `urportal_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `urportal_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_user_usergroup_map`
--

INSERT INTO `urportal_user_usergroup_map` (`user_id`, `group_id`) VALUES
(837, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_viewlevels`
--

CREATE TABLE IF NOT EXISTS `urportal_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `urportal_viewlevels`
--

INSERT INTO `urportal_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_weblinks`
--

CREATE TABLE IF NOT EXISTS `urportal_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `urportal_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `users` text NOT NULL,
  `types` text,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) DEFAULT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `urportal_wf_profiles`
--

INSERT INTO `urportal_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'clipboard,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,sub,sup,textcase,charmap,hr;fullscreen,preview,source,print,spacer,table;visualaid,visualchars,nonbreaking,anchor,unlink,link,imgmanager,article,spellchecker', 'clipboard,cleanup,textcase,charmap,fullscreen,preview,source,print,table,visualchars,nonbreaking,anchor,link,imgmanager,article,spellchecker,browser,contextmenu,inlinepopups,media', 1, 1, 0, '0000-00-00 00:00:00', '{"editor":{"width":"","height":"","toolbar_theme":"classic","toolbar_align":"left","toolbar_location":"top","statusbar_location":"bottom","path":"1","resizing":"1","resize_horizontal":"1","resizing_use_cookie":"1","toggle":"1","toggle_label":"[Toggle Editor]","toggle_state":"1","relative_urls":"1","verify_html":"","schema":"","forced_root_block":"","profile_content_css":"2","profile_content_css_custom":"","theme_advanced_styles":"","theme_advanced_blockformats":["p","div","h1","h2","h3","h4","h5","h6","address","code","pre","samp","span","section","article","hgroup","aside","figure","dt","dd"],"theme_advanced_fonts_add":"","theme_advanced_fonts_remove":"","theme_advanced_font_sizes":"","custom_colors":"","dir":"","filesystem":{"name":"joomla","joomla":{"allow_root":"0","restrict_dir":"administrator,cache,components,includes,language,libraries,logs,media,modules,plugins,templates,xmlrpc"}},"max_size":"","upload_conflict":"overwrite","upload_runtimes":["html5","flash","silverlight","html4"],"browser_position":"bottom","folder_tree":"1","list_limit":"all","validate_mimetype":"1","websafe_mode":"utf-8","websafe_allow_spaces":"0","upload_add_random":"0","invalid_elements":"","invalid_attributes":"dynsrc,lowsrc","invalid_attribute_values":"","extended_elements":"","allow_javascript":"0","allow_css":"0","allow_php":"0","cdata":"1"},"clipboard":{"paste_use_dialog":"0","paste_dialog_width":"450","paste_dialog_height":"400","paste_force_cleanup":"0","paste_strip_class_attributes":"0","paste_remove_spans":"0","paste_remove_styles":"0","paste_remove_attributes":"","paste_retain_style_properties":"","paste_remove_empty_paragraphs":"1","paste_remove_styles_if_webkit":"0","paste_process_footnotes":"convert","paste_html":"1","paste_text":"1","buttons":["cut","copy","paste"]},"source":{"highlight":"1","numbers":"1","wrap":"1","format":"1","tag_closing":"1","selection_match":"1","theme":"textmate"},"table":{"width":"","height":"","border":"0","cols":"2","rows":"2","cellpadding":"","cellspacing":"","align":"","classes":"","pad_empty_cells":"1","buttons":["table_insert","delete_table","row_props","cell_props","row_before","row_after","delete_row","col_before","col_after","delete_col","split_cells","merge_cells"]},"link":{"target":"","id":"","style":"","classes":"","dir":"","hreflang":"","lang":"","charset":"","type":"","rel":"","rev":"","tabindex":"","accesskey":"","file_browser":"1","tabs_advanced":"1","attributes_anchor":"1","attributes_target":"1","links":{"joomlalinks":{"enable":"1","content":"1","article_alias":"1","static":"1","contacts":"1","weblinks":"1","weblinks_alias":"1","menu":"1"}},"popups":{"default":"","jcemediabox":{"enable":"1"},"window":{"enable":"1"}},"search":{"link":{"enable":"1","plugins":["categories","contacts","content","newsfeeds","weblinks"]}}},"imgmanager":{"dir":"","max_size":"","extensions":"image=jpeg,jpg,png,gif","filesystem":{"name":""},"alt":"","margin_top":"","margin_right":"","margin_bottom":"","margin_left":"","border":"0","border_width":"1","border_style":"solid","border_color":"#000000","align":"","always_include_dimensions":"1","style":"","classes":"","title":"","id":"","direction":"","usemap":"","longdesc":"","tabs_rollover":"1","tabs_advanced":"1","attributes_dimensions":"1","attributes_align":"1","attributes_margin":"1","attributes_border":"1","upload":"1","folder_new":"1","folder_delete":"1","folder_rename":"1","folder_move":"1","file_delete":"1","file_rename":"1","file_move":"1","dragdrop_upload":"1"},"article":{"buttons":["readmore","pagebreak"]},"spellchecker":{"engine":"browser","browser_state":"0","googlespell_languages":["English=en"],"languages":"English=en","pspell_mode":"PSPELL_FAST","pspell_spelling":"","pspell_jargon":"","pspell_encoding":"","pspell_dictionary":"components\\/com_jce\\/editor\\/tiny_mce\\/plugins\\/spellchecker\\/dictionary.pws","pspellshell_aspell":"\\/usr\\/bin\\/aspell","pspellshell_tmp":"\\/tmp"},"browser":{"dir":"","max_size":"8000","extensions":"office=doc,docx,ppt,xls;image=gif,jpeg,jpg,png;acrobat=pdf;archive=zip,tar,gz,rar;flash=swf;quicktime=mov,mp4,qt;windowsmedia=wmv,asx,asf,avi;audio=wav,mp3,aiff;openoffice=odt,odg,odp,ods,odf","filesystem":{"name":""},"upload":"1","folder_new":"1","folder_delete":"1","folder_rename":"1","folder_move":"1","file_delete":"1","file_rename":"1","file_move":"1"},"media":{"strict":"1","iframes":"0","audio":"1","video":"1","object":"1","embed":"1","version_flash":"10,1,53,64","version_windowsmedia":"10,00,00,3646","version_quicktime":"7,3,0,0","version_java":"1,5,0,0","version_shockwave":"10,2,0,023"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, NULL, 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;paste,searchreplace,indent,outdent,numlist,bullist,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'contextmenu,inlinepopups,help,paste,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,xhtmlxtras,imgmanager,link,spellchecker,article', 0, 2, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_application`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `application_group` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `urportal_zoo_application`
--

INSERT INTO `urportal_zoo_application` (`id`, `name`, `alias`, `application_group`, `description`, `params`) VALUES
(2, 'Преподаватели', 'prepodavatel-1', 'jbuniversal', '', ' {\n	"group": "jbuniversal",\n	"template": "catalog",\n	"global.config.yoo_support": "0",\n	"global.config.rborder": "0",\n	"global.config.column_heightfix": "1",\n	"global.config.wrap_item_style": "div",\n	"global.config.category_image_height": "150",\n	"global.config.category_image_width": "150",\n	"global.config.show_feed_link": "0",\n	"global.config.feed_title": "",\n	"global.config.alternate_feed_link": "",\n	"global.config.category_teaser_image_height": "50",\n	"global.config.category_teaser_image_width": "50",\n	"global.config.items_per_page": "20",\n	"global.config.item_order":  {\n		"0": "_itemname",\n		"1": ""\n	},\n	"global.config.alpha_index": "0",\n	"global.config.alpha_chars": "0",\n	"global.config.layout_frontpage": "__auto__",\n	"global.config.layout_category": "__auto__",\n	"global.config.layout_subcategory": "__auto__",\n	"global.config.layout_subcategory_columns": "__auto__",\n	"global.config.layout_subcategories": "__auto__",\n	"global.config.layout_items": "__auto__",\n	"global.config.layout_item_columns": "__auto__",\n	"global.config.layout_alphaindex": "__auto__",\n	"global.config.layout_pagination": "__auto__",\n	"global.config.layout_tag": "__auto__",\n	"global.config.layout_comments": "__auto__",\n	"global.config.layout_comment": "__auto__",\n	"global.config.layout_respond": "__auto__",\n	"global.config.layout_mysubmissions": "__auto__",\n	"global.config.layout_administration": "__auto__",\n	"global.config.layout_submission": "__auto__",\n	"global.config.lastmodified": "1399659409",\n	"global.template.show_alpha_index": "0",\n	"global.template.category_show": "1",\n	"global.template.category_subtitle": "1",\n	"global.template.category_teaser_text": "1",\n	"global.template.category_image": "1",\n	"global.template.category_image_align": "left",\n	"global.template.category_text": "1",\n	"global.template.subcategory_show": "1",\n	"global.template.subcategory_teaser_text": "1",\n	"global.template.subcategory_teaser_image": "1",\n	"global.template.subcategory_teaser_image_align": "left",\n	"global.template.subcategory_empty": "1",\n	"global.template.subcategory_cols": "5",\n	"global.template.subcategory_order": "0",\n	"global.template.subcategory_items_count_show": "1",\n	"global.template.subcategory_items_count": "5",\n	"global.template.item_cols": "5",\n	"global.template.item_order": "0",\n	"global.template.item_pagination": "1",\n	"global.template.lastmodified": "1399659409",\n	"global.template.item_full_image_align": "left",\n	"global.template.item_teaser_image_align": "left",\n	"global.template.item_related_image_align": "left",\n	"global.template.item_subcategory_item_image_align": "left",\n	"global.comments.enable_comments": "0",\n	"global.comments.require_name_and_mail": "1",\n	"global.comments.registered_users_only": "0",\n	"global.comments.approved": "0",\n	"global.comments.time_between_user_posts": "120",\n	"global.comments.email_notification": "",\n	"global.comments.email_reply_notification": "0",\n	"global.comments.avatar": "1",\n	"global.comments.order": "ASC",\n	"global.comments.max_depth": "5",\n	"global.comments.facebook_enable": "0",\n	"global.comments.facebook_app_id": "",\n	"global.comments.facebook_app_secret": "",\n	"global.comments.twitter_enable": "0",\n	"global.comments.twitter_consumer_key": "",\n	"global.comments.twitter_consumer_secret": "",\n	"global.comments.akismet_enable": "0",\n	"global.comments.akismet_api_key": "",\n	"global.comments.mollom_enable": "0",\n	"global.comments.mollom_public_key": "",\n	"global.comments.mollom_private_key": "",\n	"global.comments.captcha_guest_only": "1",\n	"global.comments.blacklist": ""\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_category`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISHED_INDEX` (`published`),
  KEY `APPLICATIONID_ID_INDEX` (`application_id`,`published`,`id`),
  KEY `APPLICATIONID_ID_INDEX2` (`application_id`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `urportal_zoo_category`
--

INSERT INTO `urportal_zoo_category` (`id`, `application_id`, `name`, `alias`, `description`, `parent`, `ordering`, `published`, `params`) VALUES
(2, 2, 'Про нас', 'prepodavatel-1', '', 0, 1, 1, ' {\n	"content.category_title": "",\n	"content.category_subtitle": "",\n	"content.category_teaser_text": "",\n	"content.category_image": "",\n	"content.category_image_width": "",\n	"content.category_image_height": "",\n	"content.category_teaser_image": "",\n	"content.category_teaser_image_width": "",\n	"content.category_teaser_image_height": "",\n	"template.show_alpha_index": "0",\n	"template.category_show": "1",\n	"template.category_subtitle": "1",\n	"template.category_teaser_text": "1",\n	"template.category_image": "1",\n	"template.category_text": "1",\n	"template.subcategory_show": "1",\n	"template.subcategory_teaser_text": "1",\n	"template.subcategory_teaser_image": "1",\n	"template.subcategory_empty": "1",\n	"template.item_pagination": "1",\n	"template.lastmodified": "1399579797",\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": ""\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_category_item`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_category_item` (
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`item_id`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `CATEGORYID_INDEX` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_zoo_category_item`
--

INSERT INTO `urportal_zoo_category_item` (`category_id`, `item_id`) VALUES
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_comment`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `content` text NOT NULL,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `STATE_INDEX` (`state`),
  KEY `CREATED_INDEX` (`created`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `AUTHOR_INDEX` (`author`),
  KEY `ITEMID_STATE_INDEX` (`item_id`,`state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `urportal_zoo_comment`
--

INSERT INTO `urportal_zoo_comment` (`id`, `parent_id`, `item_id`, `user_id`, `user_type`, `author`, `email`, `url`, `ip`, `created`, `content`, `state`) VALUES
(1, 0, 2, '', '', 'ntcn', 'dzigunskiy@bk.ru', '', '127.0.0.1', '2014-05-08 20:17:56', 'kommentarie', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_item`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `priority` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `searchable` int(11) NOT NULL,
  `elements` longtext NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISH_INDEX` (`publish_up`,`publish_down`),
  KEY `STATE_INDEX` (`state`),
  KEY `ACCESS_INDEX` (`access`),
  KEY `CREATED_BY_INDEX` (`created_by`),
  KEY `NAME_INDEX` (`name`),
  KEY `APPLICATIONID_INDEX` (`application_id`),
  KEY `TYPE_INDEX` (`type`),
  KEY `MULTI_INDEX` (`application_id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `MULTI_INDEX2` (`id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `ID_APPLICATION_INDEX` (`id`,`application_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `urportal_zoo_item`
--

INSERT INTO `urportal_zoo_item` (`id`, `application_id`, `type`, `name`, `alias`, `created`, `modified`, `modified_by`, `publish_up`, `publish_down`, `priority`, `hits`, `state`, `access`, `created_by`, `created_by_alias`, `searchable`, `elements`, `params`) VALUES
(4, 2, 'staff', 'Комаров Вячеслав Васильович', 'komarov-vyacheslav-vasilovich', '2014-05-10 11:15:37', '2014-05-10 11:17:29', 837, '2014-05-10 11:15:37', '0000-00-00 00:00:00', 0, 0, 1, 1, 837, '', 1, ' {\n	"09b56d37-68e8-4933-8fb4-85f9fb12d138":  {\n		"check": "1"\n	},\n	"56fa7eac-ab13-45d1-8217-34a0755ed8f9":  {\n		"0":  {\n			"value": "\\u041a\\u043e\\u043c\\u0430\\u0440\\u043e\\u0432 \\u0412\\u044f\\u0447\\u0435\\u0441\\u043b\\u0430\\u0432 \\u0412\\u0430\\u0441\\u0438\\u043b\\u044c\\u043e\\u0432\\u0438\\u0447"\n		}\n	},\n	"0d8c5ca2-b6e0-4d71-9975-ea490a2d874e":  {\n		"file": "images\\/prepodavateli\\/123.jpg",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"width": 150,\n		"height": 225\n	},\n	"0621187d-f66a-45a9-99f0-fde5727aa131":  {\n		"option":  {\n			"0": "doktor-yuridicheskikh-nauk",\n			"1": "kandidat-yuridicheskikh-nauk"\n		},\n		"select": "1"\n	},\n	"77384fc6-b0c7-4c3f-9542-671581b4a7fc":  {\n		"0":  {\n			"value": "<p><span style=\\"color: #2a2a2a; font-family: ''Trebuchet MS''; font-size: 14px; line-height: 20px; text-indent: 30px; background-color: #fefefe;\\">\\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0456\\u043a \\u041d\\u0430\\u0446\\u0456\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0457 \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0456\\u0457 \\u043f\\u0440\\u0430\\u0432\\u043e\\u0432\\u0438\\u0445 \\u043d\\u0430\\u0443\\u043a \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438, \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u043e\\u0440, \\u0437\\u0430\\u0441\\u043b\\u0443\\u0436\\u0435\\u043d\\u0438\\u0439 \\u044e\\u0440\\u0438\\u0441\\u0442 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438, \\u043b\\u0430\\u0443\\u0440\\u0435\\u0430\\u0442 \\u0414\\u0435\\u0440\\u0436\\u0430\\u0432\\u043d\\u043e\\u0457 \\u043f\\u0440\\u0435\\u043c\\u0456\\u0457 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438, \\u0437\\u0430\\u0432\\u0456\\u0434\\u0443\\u0432\\u0430\\u0447 \\u043a\\u0430\\u0444\\u0435\\u0434\\u0440\\u0438 \\u0446\\u0438\\u0432\\u0456\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0443<\\/span><\\/p>"\n		}\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": ""\n}'),
(2, 2, 'staff', 'Тацій Василь Якович', 'tacіj-vasil-yakovich', '2014-05-08 19:47:35', '2014-05-10 13:31:22', 837, '2014-05-08 19:47:35', '0000-00-00 00:00:00', 0, 40, 1, 1, 837, '', 1, ' {\n	"0d8c5ca2-b6e0-4d71-9975-ea490a2d874e":  {\n		"file": "images\\/prepodavateli\\/taciy1.jpg",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"width": 150,\n		"height": 233\n	},\n	"09b56d37-68e8-4933-8fb4-85f9fb12d138":  {\n		"option":  {\n			"0": "docent",\n			"1": "profesor",\n			"2": "doktor-yuridicheskih-nauk"\n		},\n		"check": "1"\n	},\n	"77384fc6-b0c7-4c3f-9542-671581b4a7fc":  {\n		"0":  {\n			"value": "<p><span style=\\"color: #2a2a2a; font-family: ''Trebuchet MS''; font-size: 14px; line-height: 20px; text-align: justify; text-indent: 30px; background-color: #fefefe;\\">\\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0456\\u043a \\u041d\\u0430\\u0446\\u0456\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0457 \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0456\\u0457 \\u043d\\u0430\\u0443\\u043a \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438, \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0456\\u043a \\u041d\\u0430\\u0446\\u0456\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0457 \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0456\\u0457 \\u043f\\u0440\\u0430\\u0432\\u043e\\u0432\\u0438\\u0445 \\u043d\\u0430\\u0443\\u043a \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438, \\u0434\\u043e\\u043a\\u0442\\u043e\\u0440 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0438\\u0445 \\u043d\\u0430\\u0443\\u043a, \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u043e\\u0440, \\u0437\\u0430\\u0441\\u043b\\u0443\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0434\\u0456\\u044f\\u0447 \\u043d\\u0430\\u0443\\u043a\\u0438 \\u0456 \\u0442\\u0435\\u0445\\u043d\\u0456\\u043a\\u0438 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438, \\u043b\\u0430\\u0443\\u0440\\u0435\\u0430\\u0442 \\u0414\\u0435\\u0440\\u0436\\u0430\\u0432\\u043d\\u043e\\u0457 \\u043f\\u0440\\u0435\\u043c\\u0456\\u0457 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438, \\u0437\\u0430\\u0432\\u0456\\u0434\\u0443\\u0432\\u0430\\u0447 \\u043a\\u0430\\u0444\\u0435\\u0434\\u0440\\u0438 \\u043a\\u0440\\u0438\\u043c\\u0456\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u0430\\u0432\\u0430 \\u21161, \\u0413\\u0435\\u0440\\u043e\\u0439 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438<\\/span><\\/p>"\n		}\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "2"\n}'),
(3, 2, 'staff', 'Битяк Юрій Прокопович', 'bityak-yurіj-prokopovich', '2014-05-10 11:14:15', '2014-05-10 11:15:29', 837, '2014-05-10 11:14:15', '0000-00-00 00:00:00', 0, 1, 1, 1, 837, '', 1, ' {\n	"09b56d37-68e8-4933-8fb4-85f9fb12d138":  {\n		"check": "1"\n	},\n	"56fa7eac-ab13-45d1-8217-34a0755ed8f9":  {\n		"0":  {\n			"value": "\\u0411\\u0438\\u0442\\u044f\\u043a \\u042e\\u0440\\u0456\\u0439 \\u041f\\u0440\\u043e\\u043a\\u043e\\u043f\\u043e\\u0432\\u0438\\u0447"\n		}\n	},\n	"0d8c5ca2-b6e0-4d71-9975-ea490a2d874e":  {\n		"file": "images\\/prepodavateli\\/bytyak.jpg",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"width": 150,\n		"height": 225\n	},\n	"0621187d-f66a-45a9-99f0-fde5727aa131":  {\n		"select": "1"\n	},\n	"77384fc6-b0c7-4c3f-9542-671581b4a7fc":  {\n		"0":  {\n			"value": "<p><span style=\\"color: #2a2a2a; font-family: ''Trebuchet MS''; font-size: 14px; line-height: 20px; text-indent: 30px; background-color: #fefefe;\\">\\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0456\\u043a \\u041d\\u0430\\u0446\\u0456\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0457 \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0456\\u0457 \\u043f\\u0440\\u0430\\u0432\\u043e\\u0432\\u0438\\u0445 \\u043d\\u0430\\u0443\\u043a \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438, \\u0434\\u043e\\u043a\\u0442\\u043e\\u0440 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0438\\u0445 \\u043d\\u0430\\u0443\\u043a, \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u043e\\u0440, \\u043b\\u0430\\u0443\\u0440\\u0435\\u0430\\u0442 \\u0414\\u0435\\u0440\\u0436\\u0430\\u0432\\u043d\\u043e\\u0457 \\u043f\\u0440\\u0435\\u043c\\u0456\\u0457 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438, \\u0437\\u0430\\u0432\\u0456\\u0434\\u0443\\u0432\\u0430\\u0447 \\u043a\\u0430\\u0444\\u0435\\u0434\\u0440\\u0438 \\u0430\\u0434\\u043c\\u0456\\u043d\\u0456\\u0441\\u0442\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u0430\\u0432\\u0430<\\/span><\\/p>"\n		}\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "2"\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_rating`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` tinyint(4) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_search_index`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_search_index` (
  `item_id` int(11) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`item_id`,`element_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_zoo_search_index`
--

INSERT INTO `urportal_zoo_search_index` (`item_id`, `element_id`, `value`) VALUES
(3, '56fa7eac-ab13-45d1-8217-34a0755ed8f9', 'Битяк Юрій Прокопович'),
(4, '0621187d-f66a-45a9-99f0-fde5727aa131', 'доктор юридических наук\nкандидат юридических наук'),
(4, '77384fc6-b0c7-4c3f-9542-671581b4a7fc', 'академік Національної академії правових наук України, професор, заслужений юрист України, лауреат Державної премії України, завідувач кафедри цивільного процесу'),
(3, '77384fc6-b0c7-4c3f-9542-671581b4a7fc', 'академік Національної академії правових наук України, доктор юридичних наук, професор, лауреат Державної премії України, завідувач кафедри адміністративного права'),
(2, '09b56d37-68e8-4933-8fb4-85f9fb12d138', 'доцент\nпрофесор\nдоктор юридических наук'),
(2, '77384fc6-b0c7-4c3f-9542-671581b4a7fc', 'академік Національної академії наук України, академік Національної академії правових наук України, доктор юридичних наук, професор, заслужений діяч науки і техніки України, лауреат Державної премії України, завідувач кафедри кримінального права №1, Герой України'),
(4, '56fa7eac-ab13-45d1-8217-34a0755ed8f9', 'Комаров Вячеслав Васильович');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_submission`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_tag`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_tag` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`item_id`,`name`),
  UNIQUE KEY `NAME_ITEMID_INDEX` (`name`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_zoo_tag`
--

INSERT INTO `urportal_zoo_tag` (`item_id`, `name`) VALUES
(2, 'доцент'),
(2, 'професор');

-- --------------------------------------------------------

--
-- Структура таблицы `urportal_zoo_version`
--

CREATE TABLE IF NOT EXISTS `urportal_zoo_version` (
  `version` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `urportal_zoo_version`
--

INSERT INTO `urportal_zoo_version` (`version`) VALUES
('3.1.6');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
