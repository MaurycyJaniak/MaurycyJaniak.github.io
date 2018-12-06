-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 06 Gru 2018, 17:08
-- Wersja serwera: 10.1.31-MariaDB
-- Wersja PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `id7913415_dustfall`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_acl_groups`
--

CREATE TABLE `forum_acl_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_acl_groups`
--

INSERT INTO `forum_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 91, 0, 1),
(1, 0, 100, 0, 1),
(1, 0, 118, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(7, 0, 0, 23, 0),
(4, 5, 0, 14, 0),
(5, 5, 0, 14, 0),
(5, 3, 0, 14, 0),
(5, 4, 0, 14, 0),
(2, 5, 0, 21, 0),
(2, 3, 0, 21, 0),
(2, 4, 0, 21, 0),
(1, 5, 0, 17, 0),
(1, 3, 0, 17, 0),
(1, 4, 0, 17, 0),
(6, 5, 0, 19, 0),
(6, 3, 0, 19, 0),
(6, 4, 0, 19, 0),
(7, 5, 0, 21, 0),
(7, 3, 0, 21, 0),
(7, 4, 0, 21, 0),
(5, 6, 0, 14, 0),
(2, 6, 0, 21, 0),
(1, 6, 0, 17, 0),
(6, 6, 0, 19, 0),
(7, 6, 0, 21, 0),
(4, 10, 0, 14, 0),
(5, 10, 0, 14, 0),
(2, 10, 0, 21, 0),
(1, 10, 0, 17, 0),
(6, 10, 0, 19, 0),
(7, 10, 0, 21, 0),
(4, 11, 0, 14, 0),
(5, 11, 0, 14, 0),
(2, 11, 0, 21, 0),
(1, 11, 0, 17, 0),
(6, 11, 0, 19, 0),
(7, 11, 0, 21, 0),
(4, 9, 0, 14, 0),
(5, 9, 0, 14, 0),
(2, 9, 0, 21, 0),
(1, 9, 0, 17, 0),
(6, 9, 0, 19, 0),
(7, 9, 0, 21, 0),
(4, 12, 0, 14, 0),
(5, 12, 0, 14, 0),
(2, 12, 0, 21, 0),
(1, 12, 0, 17, 0),
(6, 12, 0, 19, 0),
(7, 12, 0, 21, 0),
(4, 13, 0, 14, 0),
(5, 13, 0, 14, 0),
(2, 13, 0, 21, 0),
(1, 13, 0, 17, 0),
(6, 13, 0, 19, 0),
(7, 13, 0, 21, 0),
(4, 14, 0, 14, 0),
(5, 14, 0, 14, 0),
(2, 14, 0, 21, 0),
(1, 14, 0, 17, 0),
(6, 14, 0, 19, 0),
(7, 14, 0, 21, 0),
(4, 15, 0, 14, 0),
(5, 15, 0, 14, 0),
(2, 15, 0, 21, 0),
(1, 15, 0, 17, 0),
(6, 15, 0, 19, 0),
(7, 15, 0, 21, 0),
(4, 16, 0, 14, 0),
(5, 16, 0, 14, 0),
(2, 16, 0, 21, 0),
(1, 16, 0, 17, 0),
(6, 16, 0, 19, 0),
(7, 16, 0, 21, 0),
(4, 17, 0, 14, 0),
(5, 17, 0, 14, 0),
(2, 17, 0, 21, 0),
(1, 17, 0, 17, 0),
(6, 17, 0, 19, 0),
(7, 17, 0, 21, 0),
(4, 18, 0, 14, 0),
(5, 18, 0, 14, 0),
(2, 18, 0, 21, 0),
(1, 18, 0, 17, 0),
(6, 18, 0, 19, 0),
(7, 18, 0, 21, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_acl_options`
--

CREATE TABLE `forum_acl_options` (
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_local` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_acl_options`
--

INSERT INTO `forum_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_announce_global', 0, 1, 0),
(4, 'f_attach', 0, 1, 0),
(5, 'f_bbcode', 0, 1, 0),
(6, 'f_bump', 0, 1, 0),
(7, 'f_delete', 0, 1, 0),
(8, 'f_download', 0, 1, 0),
(9, 'f_edit', 0, 1, 0),
(10, 'f_email', 0, 1, 0),
(11, 'f_flash', 0, 1, 0),
(12, 'f_icons', 0, 1, 0),
(13, 'f_ignoreflood', 0, 1, 0),
(14, 'f_img', 0, 1, 0),
(15, 'f_list', 0, 1, 0),
(16, 'f_list_topics', 0, 1, 0),
(17, 'f_noapprove', 0, 1, 0),
(18, 'f_poll', 0, 1, 0),
(19, 'f_post', 0, 1, 0),
(20, 'f_postcount', 0, 1, 0),
(21, 'f_print', 0, 1, 0),
(22, 'f_read', 0, 1, 0),
(23, 'f_reply', 0, 1, 0),
(24, 'f_report', 0, 1, 0),
(25, 'f_search', 0, 1, 0),
(26, 'f_sigs', 0, 1, 0),
(27, 'f_smilies', 0, 1, 0),
(28, 'f_sticky', 0, 1, 0),
(29, 'f_subscribe', 0, 1, 0),
(30, 'f_user_lock', 0, 1, 0),
(31, 'f_vote', 0, 1, 0),
(32, 'f_votechg', 0, 1, 0),
(33, 'f_softdelete', 0, 1, 0),
(34, 'm_', 1, 1, 0),
(35, 'm_approve', 1, 1, 0),
(36, 'm_chgposter', 1, 1, 0),
(37, 'm_delete', 1, 1, 0),
(38, 'm_edit', 1, 1, 0),
(39, 'm_info', 1, 1, 0),
(40, 'm_lock', 1, 1, 0),
(41, 'm_merge', 1, 1, 0),
(42, 'm_move', 1, 1, 0),
(43, 'm_report', 1, 1, 0),
(44, 'm_split', 1, 1, 0),
(45, 'm_softdelete', 1, 1, 0),
(46, 'm_ban', 1, 0, 0),
(47, 'm_pm_report', 1, 0, 0),
(48, 'm_warn', 1, 0, 0),
(49, 'a_', 1, 0, 0),
(50, 'a_aauth', 1, 0, 0),
(51, 'a_attach', 1, 0, 0),
(52, 'a_authgroups', 1, 0, 0),
(53, 'a_authusers', 1, 0, 0),
(54, 'a_backup', 1, 0, 0),
(55, 'a_ban', 1, 0, 0),
(56, 'a_bbcode', 1, 0, 0),
(57, 'a_board', 1, 0, 0),
(58, 'a_bots', 1, 0, 0),
(59, 'a_clearlogs', 1, 0, 0),
(60, 'a_email', 1, 0, 0),
(61, 'a_extensions', 1, 0, 0),
(62, 'a_fauth', 1, 0, 0),
(63, 'a_forum', 1, 0, 0),
(64, 'a_forumadd', 1, 0, 0),
(65, 'a_forumdel', 1, 0, 0),
(66, 'a_group', 1, 0, 0),
(67, 'a_groupadd', 1, 0, 0),
(68, 'a_groupdel', 1, 0, 0),
(69, 'a_icons', 1, 0, 0),
(70, 'a_jabber', 1, 0, 0),
(71, 'a_language', 1, 0, 0),
(72, 'a_mauth', 1, 0, 0),
(73, 'a_modules', 1, 0, 0),
(74, 'a_names', 1, 0, 0),
(75, 'a_phpinfo', 1, 0, 0),
(76, 'a_profile', 1, 0, 0),
(77, 'a_prune', 1, 0, 0),
(78, 'a_ranks', 1, 0, 0),
(79, 'a_reasons', 1, 0, 0),
(80, 'a_roles', 1, 0, 0),
(81, 'a_search', 1, 0, 0),
(82, 'a_server', 1, 0, 0),
(83, 'a_styles', 1, 0, 0),
(84, 'a_switchperm', 1, 0, 0),
(85, 'a_uauth', 1, 0, 0),
(86, 'a_user', 1, 0, 0),
(87, 'a_userdel', 1, 0, 0),
(88, 'a_viewauth', 1, 0, 0),
(89, 'a_viewlogs', 1, 0, 0),
(90, 'a_words', 1, 0, 0),
(91, 'u_', 1, 0, 0),
(92, 'u_attach', 1, 0, 0),
(93, 'u_chgavatar', 1, 0, 0),
(94, 'u_chgcensors', 1, 0, 0),
(95, 'u_chgemail', 1, 0, 0),
(96, 'u_chggrp', 1, 0, 0),
(97, 'u_chgname', 1, 0, 0),
(98, 'u_chgpasswd', 1, 0, 0),
(99, 'u_chgprofileinfo', 1, 0, 0),
(100, 'u_download', 1, 0, 0),
(101, 'u_hideonline', 1, 0, 0),
(102, 'u_ignoreflood', 1, 0, 0),
(103, 'u_masspm', 1, 0, 0),
(104, 'u_masspm_group', 1, 0, 0),
(105, 'u_pm_attach', 1, 0, 0),
(106, 'u_pm_bbcode', 1, 0, 0),
(107, 'u_pm_delete', 1, 0, 0),
(108, 'u_pm_download', 1, 0, 0),
(109, 'u_pm_edit', 1, 0, 0),
(110, 'u_pm_emailpm', 1, 0, 0),
(111, 'u_pm_flash', 1, 0, 0),
(112, 'u_pm_forward', 1, 0, 0),
(113, 'u_pm_img', 1, 0, 0),
(114, 'u_pm_printpm', 1, 0, 0),
(115, 'u_pm_smilies', 1, 0, 0),
(116, 'u_readpm', 1, 0, 0),
(117, 'u_savedrafts', 1, 0, 0),
(118, 'u_search', 1, 0, 0),
(119, 'u_sendemail', 1, 0, 0),
(120, 'u_sendim', 1, 0, 0),
(121, 'u_sendpm', 1, 0, 0),
(122, 'u_sig', 1, 0, 0),
(123, 'u_viewonline', 1, 0, 0),
(124, 'u_viewprofile', 1, 0, 0),
(125, 'a_sm_manage_blocks', 1, 0, 0),
(126, 'a_sm_settings', 1, 0, 0),
(127, 'u_sm_filemanager', 1, 0, 0),
(128, 'a_sm_filemanager', 1, 0, 0),
(129, 'a_sm_manage_menus', 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_acl_roles`
--

CREATE TABLE `forum_acl_roles` (
  `role_id` mediumint(8) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_acl_roles`
--

INSERT INTO `forum_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_acl_roles_data`
--

CREATE TABLE `forum_acl_roles_data` (
  `role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_acl_roles_data`
--

INSERT INTO `forum_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 49, 1),
(1, 51, 1),
(1, 52, 1),
(1, 53, 1),
(1, 55, 1),
(1, 56, 1),
(1, 57, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 67, 1),
(1, 68, 1),
(1, 69, 1),
(1, 72, 1),
(1, 74, 1),
(1, 76, 1),
(1, 77, 1),
(1, 78, 1),
(1, 79, 1),
(1, 85, 1),
(1, 86, 1),
(1, 87, 1),
(1, 88, 1),
(1, 89, 1),
(1, 90, 1),
(1, 125, 1),
(1, 126, 1),
(1, 128, 1),
(1, 129, 1),
(2, 49, 1),
(2, 52, 1),
(2, 53, 1),
(2, 62, 1),
(2, 63, 1),
(2, 64, 1),
(2, 65, 1),
(2, 72, 1),
(2, 77, 1),
(2, 85, 1),
(2, 88, 1),
(2, 89, 1),
(3, 49, 1),
(3, 52, 1),
(3, 53, 1),
(3, 55, 1),
(3, 66, 1),
(3, 67, 1),
(3, 68, 1),
(3, 78, 1),
(3, 85, 1),
(3, 86, 1),
(3, 88, 1),
(3, 89, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(4, 85, 1),
(4, 86, 1),
(4, 87, 1),
(4, 88, 1),
(4, 89, 1),
(4, 90, 1),
(4, 125, 1),
(4, 128, 1),
(4, 129, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(5, 118, 1),
(5, 119, 1),
(5, 120, 1),
(5, 121, 1),
(5, 122, 1),
(5, 123, 1),
(5, 124, 1),
(5, 127, 1),
(6, 91, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 95, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 103, 1),
(6, 104, 1),
(6, 105, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 1),
(6, 113, 1),
(6, 114, 1),
(6, 115, 1),
(6, 116, 1),
(6, 117, 1),
(6, 118, 1),
(6, 119, 1),
(6, 120, 1),
(6, 121, 1),
(6, 122, 1),
(6, 124, 1),
(6, 127, 1),
(7, 91, 1),
(7, 93, 1),
(7, 94, 1),
(7, 95, 1),
(7, 98, 1),
(7, 99, 1),
(7, 100, 1),
(7, 101, 1),
(7, 106, 1),
(7, 107, 1),
(7, 108, 1),
(7, 109, 1),
(7, 112, 1),
(7, 113, 1),
(7, 114, 1),
(7, 115, 1),
(7, 116, 1),
(7, 121, 1),
(7, 122, 1),
(7, 124, 1),
(8, 91, 1),
(8, 93, 1),
(8, 94, 1),
(8, 95, 1),
(8, 98, 1),
(8, 100, 1),
(8, 101, 1),
(8, 103, 0),
(8, 104, 0),
(8, 116, 0),
(8, 121, 0),
(8, 122, 1),
(8, 124, 1),
(9, 91, 1),
(9, 93, 0),
(9, 94, 1),
(9, 95, 1),
(9, 98, 1),
(9, 99, 1),
(9, 100, 1),
(9, 101, 1),
(9, 106, 1),
(9, 107, 1),
(9, 108, 1),
(9, 109, 1),
(9, 112, 1),
(9, 113, 1),
(9, 114, 1),
(9, 115, 1),
(9, 116, 1),
(9, 121, 1),
(9, 122, 1),
(9, 124, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 42, 1),
(10, 43, 1),
(10, 44, 1),
(10, 45, 1),
(10, 46, 1),
(10, 47, 1),
(10, 48, 1),
(11, 34, 1),
(11, 35, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 42, 1),
(11, 43, 1),
(11, 44, 1),
(11, 45, 1),
(11, 47, 1),
(11, 48, 1),
(12, 34, 1),
(12, 37, 1),
(12, 38, 1),
(12, 39, 1),
(12, 43, 1),
(12, 45, 1),
(12, 47, 1),
(13, 34, 1),
(13, 35, 1),
(13, 38, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(14, 31, 1),
(14, 32, 1),
(14, 33, 1),
(15, 1, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 12, 1),
(15, 14, 1),
(15, 15, 1),
(15, 16, 1),
(15, 17, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 29, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(16, 1, 0),
(17, 1, 1),
(17, 8, 1),
(17, 15, 1),
(17, 16, 1),
(17, 21, 1),
(17, 22, 1),
(17, 25, 1),
(17, 29, 1),
(18, 1, 1),
(18, 5, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 14, 1),
(18, 15, 1),
(18, 16, 1),
(18, 17, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 29, 1),
(18, 31, 1),
(18, 33, 1),
(19, 1, 1),
(19, 8, 1),
(19, 15, 1),
(19, 16, 1),
(19, 21, 1),
(19, 22, 1),
(20, 1, 1),
(20, 4, 1),
(20, 5, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 14, 1),
(20, 15, 1),
(20, 16, 1),
(20, 17, 0),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 29, 1),
(20, 31, 1),
(20, 33, 1),
(21, 1, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 12, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 29, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(22, 1, 1),
(22, 5, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 29, 1),
(22, 31, 1),
(22, 33, 1),
(23, 99, 0),
(23, 103, 0),
(23, 104, 0),
(23, 121, 0),
(24, 17, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_acl_users`
--

CREATE TABLE `forum_acl_users` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_acl_users`
--

INSERT INTO `forum_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_attachments`
--

CREATE TABLE `forum_attachments` (
  `attach_id` int(10) UNSIGNED NOT NULL,
  `post_msg_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `in_message` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `filetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_banlist`
--

CREATE TABLE `forum_banlist` (
  `ban_id` int(10) UNSIGNED NOT NULL,
  `ban_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_end` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_bbcodes`
--

CREATE TABLE `forum_bbcodes` (
  `bbcode_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_bookmarks`
--

CREATE TABLE `forum_bookmarks` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_bots`
--

CREATE TABLE `forum_bots` (
  `bot_id` int(10) UNSIGNED NOT NULL,
  `bot_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_bots`
--

INSERT INTO `forum_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
(7, 1, 'Exabot [Bot]', 9, 'Exabot', ''),
(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Online link [Validator]', 29, 'online link validator', ''),
(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', ''),
(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', ''),
(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', ''),
(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', ''),
(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', ''),
(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', ''),
(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', ''),
(37, 1, 'Voyager [Bot]', 39, 'voyager/', ''),
(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', ''),
(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', ''),
(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', ''),
(41, 1, 'YaCy [Bot]', 43, 'yacybot', ''),
(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', ''),
(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', ''),
(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', ''),
(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_config`
--

CREATE TABLE `forum_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_config`
--

INSERT INTO `forum_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '1', 0),
('allow_avatar_gravatar', '0', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_avatar_upload', '1', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_board_notifications', '1', 0),
('allow_bookmarks', '1', 0),
('allow_cdn', '0', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_live_searches', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '1', 0),
('allow_nocensors', '1', 0),
('allow_password_reset', '1', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('allow_viglink_phpbb', '1', 0),
('allowed_schemes_links', 'http,https,ftp', 0),
('assets_version', '3', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_oauth_bitly_key', '', 0),
('auth_oauth_bitly_secret', '', 0),
('auth_oauth_facebook_key', '', 0),
('auth_oauth_facebook_secret', '', 0),
('auth_oauth_google_key', '', 0),
('auth_oauth_google_secret', '', 0),
('auth_oauth_twitter_key', '', 0),
('auth_oauth_twitter_secret', '', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '61440', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '450', 0),
('avatar_max_width', '450', 0),
('avatar_min_height', '50', 0),
('avatar_min_width', '40', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', '70ac5d76e60a8d48cba4bb0d2dbd89dc', 0),
('board_contact', 'janiakmaurycy@gmail.com', 0),
('board_contact_name', '', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_email', 'janiakmaurycy@gmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_index_text', '', 0),
('board_startdate', '1543334927', 0),
('board_timezone', 'UTC', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('cache_last_gc', '1544113916', 1),
('captcha_gd', '1', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_plugin', 'core.captcha.plugins.gd', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('confirm_refresh', '1', 0),
('contact_admin_form_enable', '1', 0),
('cookie_domain', 'dustfall.000webhostapp.com', 0),
('cookie_name', 'phpbb3_kndmk', 0),
('cookie_path', '/', 0),
('cookie_secure', '', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('cron_lock', '0', 1),
('database_gc', '604800', 0),
('database_last_gc', '1544086459', 1),
('dbms_version', '10.1.31-MariaDB', 0),
('default_dateformat', 'D M d, Y g:i a', 0),
('default_lang', 'en', 0),
('default_style', '2', 0),
('delete_time', '0', 0),
('display_last_edited', '1', 0),
('display_last_subject', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_force_sender', '0', 0),
('email_max_chunk_size', '50', 0),
('email_package_size', '20', 0),
('enable_accurate_pm_button', '1', 0),
('enable_confirm', '1', 0),
('enable_mod_rewrite', '0', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('extension_force_unstable', '0', 0),
('feed_enable', '1', 0),
('feed_forum', '1', 0),
('feed_http_auth', '0', 0),
('feed_item_statistics', '1', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall', '1', 0),
('feed_overall_forums', '0', 0),
('feed_topic', '1', 0),
('feed_topics_active', '0', 0),
('feed_topics_new', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('fulltext_postgres_max_word_len', '254', 0),
('fulltext_postgres_min_word_len', '4', 0),
('fulltext_postgres_ts_name', 'simple', 0),
('fulltext_sphinx_indexer_mem_limit', '512', 0),
('fulltext_sphinx_stopwords', '0', 0),
('gzip_compress', '0', 0),
('help_send_statistics', '', 0),
('help_send_statistics_time', '1543335058', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('ip_login_limit_max', '50', 0),
('ip_login_limit_time', '21600', 0),
('ip_login_limit_use_forwarded', '0', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_package_size', '20', 0),
('jab_password', '', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('last_queue_run', '0', 1),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('legend_sort_groupname', '0', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '1', 0),
('load_cpf_pm', '1', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '1', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_notifications', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_unreads_search', '1', 0),
('load_user_activity', '1', 0),
('load_user_activity_limit', '5000', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_pass_chars', '100', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('new_member_group_default', '0', 0),
('new_member_post_limit', '3', 0),
('newest_user_colour', 'AA0000', 1),
('newest_user_id', '2', 1),
('newest_username', 'Khaos', 1),
('num_files', '0', 1),
('num_posts', '2', 1),
('num_topics', '1', 1),
('num_users', '1', 1),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('phpbb_viglink_api_key', 'e4fd14f5d7f2bb6d80b8f8da1354718c', 0),
('plupload_last_gc', '0', 1),
('plupload_salt', '12899d46bf43046d169cb718b9f5f148', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('questionnaire_unique_id', 'ytfs1u0x6gz4atr9', 0),
('queue_interval', '60', 0),
('rand_seed', '46fc0712205035bde5442d4d0229bf89', 1),
('rand_seed_last_update', '1543334930', 1),
('ranks_path', 'images/ranks', 0),
('read_notification_expire_days', '30', 0),
('read_notification_gc', '86400', 0),
('read_notification_last_gc', '1544086482', 1),
('record_online_date', '1543345884', 1),
('record_online_users', '2', 1),
('referer_validation', '0', 0),
('remote_upload_verify', '0', 0),
('require_activation', '0', 0),
('script_path', '/forum', 0),
('search_anonymous_interval', '0', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_indexing_state', '', 1),
('search_interval', '0', 0),
('search_last_gc', '1544114014', 1),
('search_store_results', '1800', 0),
('search_type', '\\phpbb\\search\\fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'dustfall.000webhostapp.com', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1544114019', 1),
('session_length', '3600', 0),
('site_desc', 'Dustfall forum', 0),
('site_home_text', '', 0),
('site_home_url', '', 0),
('sitemaker_blocks_cleanup_gc', '604800', 0),
('sitemaker_blocks_cleanup_last_gc', '1544114038', 1),
('sitemaker_default_layout', '', 0),
('sitemaker_last_changed', '0', 0),
('sitemaker_startpage_controller', '', 0),
('sitemaker_startpage_method', '', 0),
('sitemaker_startpage_params', '', 0),
('sitename', 'Dustfall', 0),
('sm_filemanager', '0', 0),
('sm_forum_icon', 'fa fa-comments-o', 0),
('sm_hide_birthday', '1', 0),
('sm_hide_login', '1', 0),
('sm_hide_online', '1', 0),
('sm_navbar_menu', '0', 0),
('sm_show_forum_nav', '1', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', '', 0),
('smtp_port', '', 0),
('smtp_username', '', 0),
('teampage_forums', '1', 0),
('teampage_memberships', '1', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_dir_size', '0', 1),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('use_system_cron', '0', 0),
('version', '3.2.4', 0),
('viglink_api_siteid', '30c515e680e5fc663d396c1391a949af', 0),
('viglink_ask_admin', '1543335057', 0),
('viglink_ask_admin_last', '0', 0),
('viglink_convert_account_url', '', 0),
('viglink_enabled', '', 0),
('viglink_last_gc', '1543341226', 1),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('warnings_last_gc', '1544114032', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_config_text`
--

CREATE TABLE `forum_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_config_text`
--

INSERT INTO `forum_config_text` (`config_name`, `config_value`) VALUES
('contact_admin_info', ''),
('contact_admin_info_bitfield', ''),
('contact_admin_info_flags', '7'),
('contact_admin_info_uid', ''),
('sm_layout_prefs', '{\"2\":{\"layout\":\".\\/..\\/ext\\/blitze\\/sitemaker\\/styles\\/all\\/template\\/layouts\\/portal\\/\",\"view\":\"\"}}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_confirm`
--

CREATE TABLE `forum_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_confirm`
--

INSERT INTO `forum_confirm` (`confirm_id`, `session_id`, `confirm_type`, `code`, `seed`, `attempts`) VALUES
('0dcf332f500e46c7985d1c7f03006d10', 'ce432c5376c358068bf4362987f31bd1', 3, 'JZHRU7R', 450, 0),
('1f9e34a4feffa4362d806d0997123e18', 'ce432c5376c358068bf4362987f31bd1', 3, 'JA2S', 19183, 0),
('3753cf67974fc71144f2b407305e2d99', 'ce432c5376c358068bf4362987f31bd1', 3, '1ZKLR', 55242, 0),
('3adda8fc05ece1fa25a663d87afb698f', 'ce432c5376c358068bf4362987f31bd1', 3, 'E9RELUR', 59593, 0),
('4c7ffe4d525d3c4f7c4d579de447be60', 'ce432c5376c358068bf4362987f31bd1', 3, 'PLUSHZ', 2131, 0),
('842f1cd023a51f10746010102358f295', 'ce432c5376c358068bf4362987f31bd1', 3, 'VMTP1', 741, 0),
('88ea01dd11e294a04440464c7e8536de', 'ce432c5376c358068bf4362987f31bd1', 3, '8NLQJ', 436788, 0),
('a7579f706a022d14d0ffa8cba3e6811c', 'ce432c5376c358068bf4362987f31bd1', 3, 'K9KY5', 1645, 0),
('c046dc20aa5a28332904bca5e34c3405', 'ce432c5376c358068bf4362987f31bd1', 3, '2MDI', 16399, 0),
('e118936e7a6bb7d4a41b35d487736300', 'ce432c5376c358068bf4362987f31bd1', 3, '3QID', 941155, 0),
('fd19575a603fcf4d3e59377843ef8f17', 'ce432c5376c358068bf4362987f31bd1', 3, 'CZ5JS', 19996, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_disallow`
--

CREATE TABLE `forum_disallow` (
  `disallow_id` mediumint(8) UNSIGNED NOT NULL,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_drafts`
--

CREATE TABLE `forum_drafts` (
  `draft_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `save_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_ext`
--

CREATE TABLE `forum_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_ext`
--

INSERT INTO `forum_ext` (`ext_name`, `ext_active`, `ext_state`) VALUES
('blitze/sitemaker', 1, 'b:0;'),
('phpbb/viglink', 0, 'b:0;');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_extensions`
--

CREATE TABLE `forum_extensions` (
  `extension_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_extensions`
--

INSERT INTO `forum_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'swf'),
(51, 6, 'mp3'),
(52, 6, 'mpeg'),
(53, 6, 'mpg'),
(54, 6, 'ogg'),
(55, 6, 'ogm');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_extension_groups`
--

CREATE TABLE `forum_extension_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_extension_groups`
--

INSERT INTO `forum_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
(6, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_forums`
--

CREATE TABLE `forum_forums` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL,
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `prune_next` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `forum_options` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `enable_shadow_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `prune_shadow_days` mediumint(8) UNSIGNED NOT NULL DEFAULT '7',
  `prune_shadow_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `prune_shadow_next` int(11) NOT NULL DEFAULT '0',
  `hidden_forum` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_forums`
--

INSERT INTO `forum_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`, `display_subforum_list`, `forum_options`, `forum_posts_approved`, `forum_posts_unapproved`, `forum_posts_softdeleted`, `forum_topics_approved`, `forum_topics_unapproved`, `forum_topics_softdeleted`, `enable_shadow_prune`, `prune_shadow_days`, `prune_shadow_freq`, `prune_shadow_next`, `hidden_forum`) VALUES
(3, 5, 2, 7, 'a:1:{i:5;a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;i:0;}}', 'Akademia Mageholde', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 3, 2, 'Re: Wznowienie Pracy Akademii', 1543425407, 'Khaos', 'AA0000', 48, 0, 1, 1, 0, 0, 7, 7, 1, 1, 0, 2, 0, 0, 1, 0, 0, 0, 7, 1, 0, 0),
(4, 3, 5, 6, 'a:2:{i:5;a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;i:0;}i:3;a:2:{i:0;s:18:\"Akademia Mageholde\";i:1;i:1;}}', 'Instutut Kartografii i Geografii', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(5, 0, 1, 8, '', 'Wolna Republika Mageholde', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, '', 0, '', '', 32, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(6, 3, 3, 4, 'a:2:{i:5;a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;i:0;}i:3;a:2:{i:0;s:18:\"Akademia Mageholde\";i:1;i:1;}}', 'Rektorat', '<t>Biuro Rektora Akademii Mageholde</t>', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(9, 0, 9, 20, '', 'Cesarstwo', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, '', 0, '', '', 32, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(10, 9, 12, 15, 'a:1:{i:9;a:2:{i:0;s:9:\"Cesarstwo\";i:1;i:0;}}', 'Loére', '<t>Region Cesarstwa</t>', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, '', 0, '', '', 32, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(11, 9, 16, 19, 'a:1:{i:9;a:2:{i:0;s:9:\"Cesarstwo\";i:1;i:0;}}', 'Marchia Bray', '<t>Marchia Cesarstwa</t>', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, '', 0, '', '', 32, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(12, 9, 10, 11, 'a:1:{i:9;a:2:{i:0;s:9:\"Cesarstwo\";i:1;i:0;}}', 'Aldberg', '<t>Cesarskie Miasto Aldberg</t>', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(13, 10, 13, 14, 'a:2:{i:9;a:2:{i:0;s:9:\"Cesarstwo\";i:1;i:0;}i:10;a:2:{i:0;s:6:\"Loére\";i:1;i:0;}}', 'Loére', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(14, 11, 17, 18, 'a:2:{i:9;a:2:{i:0;s:9:\"Cesarstwo\";i:1;i:0;}i:11;a:2:{i:0;s:12:\"Marchia Bray\";i:1;i:0;}}', 'Marchia Bray', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(15, 0, 21, 24, '', 'Moczary', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, '', 0, '', '', 32, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(16, 15, 22, 23, 'a:1:{i:15;a:2:{i:0;s:7:\"Moczary\";i:1;i:0;}}', 'Gdunsk', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(17, 0, 25, 28, '', 'Wschodnie Stepy', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, '', 0, '', '', 32, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(18, 17, 26, 27, 'a:1:{i:17;a:2:{i:0;s:15:\"Wschodnie Stepy\";i:1;i:0;}}', 'Wschodnie Stepy', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_forums_access`
--

CREATE TABLE `forum_forums_access` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_forums_track`
--

CREATE TABLE `forum_forums_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_forums_watch`
--

CREATE TABLE `forum_forums_watch` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_groups`
--

CREATE TABLE `forum_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_groups`
--

INSERT INTO `forum_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_legend`, `group_max_recipients`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_icons`
--

CREATE TABLE `forum_icons` (
  `icons_id` mediumint(8) UNSIGNED NOT NULL,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_alt` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_icons`
--

INSERT INTO `forum_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_alt`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, '', 1, 1),
(2, 'smile/redface.gif', 16, 16, '', 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, '', 10, 1),
(4, 'misc/heart.gif', 16, 16, '', 4, 1),
(5, 'misc/star.gif', 16, 16, '', 2, 1),
(6, 'misc/radioactive.gif', 16, 16, '', 3, 1),
(7, 'misc/thinking.gif', 16, 16, '', 5, 1),
(8, 'smile/info.gif', 16, 16, '', 8, 1),
(9, 'smile/question.gif', 16, 16, '', 6, 1),
(10, 'smile/alert.gif', 16, 16, '', 7, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_lang`
--

CREATE TABLE `forum_lang` (
  `lang_id` tinyint(4) NOT NULL,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_lang`
--

INSERT INTO `forum_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_log`
--

CREATE TABLE `forum_log` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reportee_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_log`
--

INSERT INTO `forum_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `post_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 0, 1, 0, 0, 0, 0, '217.73.245.35', 1543335019, 'LOG_MODULE_ADD', 'a:1:{i:0;s:20:\"ACP_VIGLINK_SETTINGS\";}'),
(2, 0, 1, 0, 0, 0, 0, '', 1543335021, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:13:\"phpbb/viglink\";}'),
(3, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543335023, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:\"3.2.4\";}'),
(4, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543335145, 'LOG_FORUM_DEL_FORUMS', 'a:1:{i:0;s:19:\"Your first category\";}'),
(5, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543336093, 'LOG_FORUM_ADD', 'a:1:{i:0;s:18:\"Akademia Mageholde\";}'),
(6, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543341222, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(7, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543341823, 'LOG_FORUM_ADD', 'a:1:{i:0;s:32:\"Instutut Kartografii i Geografii\";}'),
(8, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543341823, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:18:\"Akademia Mageholde\";i:1;s:32:\"Instutut Kartografii i Geografii\";}'),
(9, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543342311, 'LOG_FORUM_ADD', 'a:1:{i:0;s:25:\"Wolna Republika Mageholde\";}'),
(10, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543342353, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(11, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543342403, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;s:31:\"<span class=\"sep\">Guests</span>\";}'),
(12, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543342516, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;s:134:\"<span class=\"sep\">Registered users</span>, <span class=\"sep\">Global moderators</span>, <span class=\"sep\">Newly registered users</span>\";}'),
(13, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543342534, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;s:18:\"Akademia Mageholde\";}'),
(14, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543342547, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:18:\"Akademia Mageholde\";}'),
(15, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343077, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(16, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343080, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(17, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343082, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(18, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343082, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(19, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343084, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(20, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343086, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(21, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343087, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(22, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343090, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:32:\"Instutut Kartografii i Geografii\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(23, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343090, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(24, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343274, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:41:\"<span class=\"sep\">Registered users</span>\";}'),
(25, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343274, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:41:\"<span class=\"sep\">Registered users</span>\";}'),
(26, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343293, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:31:\"<span class=\"sep\">Guests</span>\";}'),
(27, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343314, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:29:\"<span class=\"sep\">Bots</span>\";}'),
(28, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343336, 'LOG_ACL_ADD_GROUP_LOCAL_F_', 'a:2:{i:0;s:79:\"Akademia Mageholde, Instutut Kartografii i Geografii, Wolna Republika Mageholde\";i:1;s:47:\"<span class=\"sep\">Newly registered users</span>\";}'),
(29, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343465, 'LOG_FORUM_ADD', 'a:1:{i:0;s:8:\"Rektorat\";}'),
(30, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343465, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:18:\"Akademia Mageholde\";i:1;s:8:\"Rektorat\";}'),
(31, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543343650, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:8:\"Rektorat\";i:1;s:32:\"Instutut Kartografii i Geografii\";}'),
(32, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543345050, 'LOG_EXT_DISABLE', 'a:1:{i:0;s:13:\"phpbb/viglink\";}'),
(33, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543345796, 'LOG_STYLE_ADD', 'a:1:{i:0;s:6:\"PBWoW3\";}'),
(34, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543345902, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(35, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543345928, 'LOG_STYLE_EDIT_DETAILS', 'a:1:{i:0;s:9:\"prosilver\";}'),
(36, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543346794, 'LOG_FORUM_ADD', 'a:1:{i:0;s:15:\"Strona Główna\";}'),
(37, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543346831, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:15:\"Strona Główna\";i:1;s:39:\"<span class=\"sep\">Administrators</span>\";}'),
(38, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543346910, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:15:\"Strona Główna\";i:1;s:25:\"Wolna Republika Mageholde\";}'),
(39, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543346946, 'LOG_FORUM_ADD', 'a:1:{i:0;s:15:\"Strona Główna\";}'),
(40, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543346947, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:15:\"Strona Główna\";i:1;s:15:\"Strona Główna\";}'),
(41, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543346957, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:15:\"Strona Główna\";i:1;s:25:\"Wolna Republika Mageholde\";}'),
(42, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543346962, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:15:\"Strona Główna\";i:1;s:15:\"Strona Główna\";}'),
(43, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543346976, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:15:\"Strona Główna\";}'),
(44, 1, 2, 3, 2, 0, 0, '217.73.245.35', 1543425554, 'LOG_TOPIC_TYPE_CHANGED', 'a:1:{i:0;s:25:\"Wznowienie Pracy Akademii\";}'),
(45, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543430119, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(46, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543430263, 'LOG_CONFIG_AVATAR', ''),
(47, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543430354, 'LOG_FORUM_ADD', 'a:1:{i:0;s:9:\"Cesarstwo\";}'),
(48, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543430354, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;s:9:\"Cesarstwo\";}'),
(49, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543432162, 'LOG_FORUM_ADD', 'a:1:{i:0;s:6:\"Loére\";}'),
(50, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543432162, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:9:\"Cesarstwo\";i:1;s:6:\"Loére\";}'),
(51, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543432341, 'LOG_FORUM_ADD', 'a:1:{i:0;s:12:\"Marchia Bray\";}'),
(52, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543432341, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:9:\"Cesarstwo\";i:1;s:12:\"Marchia Bray\";}'),
(53, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543432426, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:9:\"Cesarstwo\";}'),
(54, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543432426, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;s:9:\"Cesarstwo\";}'),
(55, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543433293, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:9:\"Cesarstwo\";}'),
(56, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543433293, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:25:\"Wolna Republika Mageholde\";i:1;s:9:\"Cesarstwo\";}'),
(57, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543433391, 'LOG_CONFIG_FEATURES', ''),
(58, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543434651, 'LOG_FORUM_ADD', 'a:1:{i:0;s:7:\"Aldberg\";}'),
(59, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543434651, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:9:\"Cesarstwo\";i:1;s:7:\"Aldberg\";}'),
(60, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543434689, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:7:\"Aldberg\";i:1;s:12:\"Marchia Bray\";}'),
(61, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543434693, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:7:\"Aldberg\";i:1;s:6:\"Loére\";}'),
(62, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543435698, 'LOG_MODULE_ADD', 'a:1:{i:0;s:21:\"UCP_SITEMAKER_CONTENT\";}'),
(63, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543435698, 'LOG_MODULE_ADD', 'a:1:{i:0;s:21:\"MCP_SITEMAKER_CONTENT\";}'),
(64, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543435701, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:\"ACP_SITEMAKER\";}'),
(65, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543435701, 'LOG_MODULE_ADD', 'a:1:{i:0;s:8:\"ACP_MENU\";}'),
(66, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543435707, 'LOG_MODULE_ADD', 'a:1:{i:0;s:15:\"ACP_SM_SETTINGS\";}'),
(67, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543435716, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:16:\"blitze/sitemaker\";}'),
(68, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543435722, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:16:\"blitze/sitemaker\";}'),
(69, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543436559, 'LOG_FORUM_DEL_FORUMS', 'a:1:{i:0;s:15:\"Strona Główna\";}'),
(70, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543436602, 'LOG_FORUM_ADD', 'a:1:{i:0;s:6:\"Loére\";}'),
(71, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543436602, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:6:\"Loére\";i:1;s:6:\"Loére\";}'),
(72, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543436640, 'LOG_FORUM_ADD', 'a:1:{i:0;s:12:\"Marchia Bray\";}'),
(73, 0, 2, 0, 0, 0, 0, '217.73.245.35', 1543436641, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:12:\"Marchia Bray\";i:1;s:12:\"Marchia Bray\";}'),
(74, 0, 2, 0, 0, 0, 0, '217.73.251.24', 1543516351, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(75, 3, 2, 0, 0, 0, 2, '217.73.251.24', 1543516997, 'LOG_USER_UPDATE_NAME', 'a:2:{i:0;s:7:\"Maurice\";i:1;s:5:\"Khaos\";}'),
(76, 0, 2, 0, 0, 0, 0, '217.73.246.38', 1543659244, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(77, 0, 2, 0, 0, 0, 0, '217.73.246.38', 1543659365, 'LOG_FORUM_ADD', 'a:1:{i:0;s:7:\"Moczary\";}'),
(78, 0, 2, 0, 0, 0, 0, '217.73.246.38', 1543659365, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:9:\"Cesarstwo\";i:1;s:7:\"Moczary\";}'),
(79, 0, 2, 0, 0, 0, 0, '217.73.246.38', 1543659402, 'LOG_FORUM_ADD', 'a:1:{i:0;s:6:\"Gdunsk\";}'),
(80, 0, 2, 0, 0, 0, 0, '217.73.246.38', 1543659402, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:7:\"Moczary\";i:1;s:6:\"Gdunsk\";}'),
(81, 0, 2, 0, 0, 0, 0, '217.73.246.38', 1543659477, 'LOG_FORUM_ADD', 'a:1:{i:0;s:15:\"Wschodnie Stepy\";}'),
(82, 0, 2, 0, 0, 0, 0, '217.73.246.38', 1543659477, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:9:\"Cesarstwo\";i:1;s:15:\"Wschodnie Stepy\";}'),
(83, 0, 2, 0, 0, 0, 0, '217.73.246.38', 1543659564, 'LOG_FORUM_ADD', 'a:1:{i:0;s:15:\"Wschodnie Stepy\";}'),
(84, 0, 2, 0, 0, 0, 0, '217.73.246.38', 1543659564, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:15:\"Wschodnie Stepy\";i:1;s:15:\"Wschodnie Stepy\";}'),
(85, 0, 2, 0, 0, 0, 0, '217.73.252.143', 1543763848, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(86, 0, 2, 0, 0, 0, 0, '217.73.245.160', 1544114771, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(87, 0, 2, 0, 0, 0, 0, '217.73.245.160', 1544114831, 'LOG_CONFIG_SETTINGS', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_login_attempts`
--

CREATE TABLE `forum_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_migrations`
--

CREATE TABLE `forum_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `migration_end_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_migrations`
--

INSERT INTO `forum_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\blitze\\sitemaker\\migrations\\converter\\c1_remove_modules', 'a:0:{}', 1, 1, '', 1543435696, 1543435696),
('\\blitze\\sitemaker\\migrations\\converter\\c2_update_data', 'a:0:{}', 1, 1, '', 0, 0),
('\\blitze\\sitemaker\\migrations\\converter\\c3_update_tables', 'a:0:{}', 1, 1, '', 0, 0),
('\\blitze\\sitemaker\\migrations\\converter\\c4_convert_primetime_data', 'a:2:{i:0;s:51:\"\\blitze\\sitemaker\\migrations\\v20x\\m1_initial_schema\";i:1;s:49:\"\\blitze\\sitemaker\\migrations\\v20x\\m2_initial_data\";}', 1, 1, '', 0, 0),
('\\blitze\\sitemaker\\migrations\\v20x\\m10_remove_dashboard', 'a:1:{i:0;s:51:\"\\blitze\\sitemaker\\migrations\\v20x\\m4_initial_module\";}', 1, 1, '', 1543435698, 1543435701),
('\\blitze\\sitemaker\\migrations\\v20x\\m11_remove_item_status_column', 'a:1:{i:0;s:61:\"\\blitze\\sitemaker\\migrations\\v20x\\m9_update_menu_items_fields\";}', 1, 1, '', 1543435715, 1543435715),
('\\blitze\\sitemaker\\migrations\\v20x\\m12_add_hidden_forum_column', 'a:1:{i:0;s:51:\"\\blitze\\sitemaker\\migrations\\v20x\\m1_initial_schema\";}', 1, 1, '', 1543435715, 1543435716),
('\\blitze\\sitemaker\\migrations\\v20x\\m13_add_menu_permission', 'a:1:{i:0;s:54:\"\\blitze\\sitemaker\\migrations\\v20x\\m10_remove_dashboard\";}', 1, 1, '', 1543435712, 1543435713),
('\\blitze\\sitemaker\\migrations\\v20x\\m14_update_settings_data', 'a:1:{i:0;s:57:\"\\blitze\\sitemaker\\migrations\\v20x\\m7_update_settings_data\";}', 1, 1, '', 1543435711, 1543435712),
('\\blitze\\sitemaker\\migrations\\v20x\\m1_initial_schema', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";i:1;s:55:\"\\blitze\\sitemaker\\migrations\\converter\\c3_update_tables\";i:2;s:55:\"\\blitze\\sitemaker\\migrations\\v20x\\m3_initial_permission\";}', 1, 1, '', 1543435701, 1543435704),
('\\blitze\\sitemaker\\migrations\\v20x\\m2_initial_data', 'a:2:{i:0;s:53:\"\\blitze\\sitemaker\\migrations\\converter\\c2_update_data\";i:1;s:51:\"\\blitze\\sitemaker\\migrations\\v20x\\m1_initial_schema\";}', 1, 1, '', 1543435709, 1543435710),
('\\blitze\\sitemaker\\migrations\\v20x\\m3_initial_permission', 'a:0:{}', 1, 1, '', 1543435696, 1543435697),
('\\blitze\\sitemaker\\migrations\\v20x\\m4_initial_module', 'a:2:{i:0;s:56:\"\\blitze\\sitemaker\\migrations\\converter\\c1_remove_modules\";i:1;s:55:\"\\blitze\\sitemaker\\migrations\\v20x\\m3_initial_permission\";}', 1, 1, '', 1543435698, 1543435698),
('\\blitze\\sitemaker\\migrations\\v20x\\m5_add_cblocks_schema', 'a:1:{i:0;s:51:\"\\blitze\\sitemaker\\migrations\\v20x\\m1_initial_schema\";}', 1, 1, '', 1543435713, 1543435714),
('\\blitze\\sitemaker\\migrations\\v20x\\m6_add_block_settings_field', 'a:1:{i:0;s:64:\"\\blitze\\sitemaker\\migrations\\converter\\c4_convert_primetime_data\";}', 1, 1, '', 1543435711, 1543435711),
('\\blitze\\sitemaker\\migrations\\v20x\\m7_update_settings_data', 'a:2:{i:0;s:51:\"\\blitze\\sitemaker\\migrations\\v20x\\m1_initial_schema\";i:1;s:61:\"\\blitze\\sitemaker\\migrations\\v20x\\m6_add_block_settings_field\";}', 1, 1, '', 0, 0),
('\\blitze\\sitemaker\\migrations\\v20x\\m8_remove_config_table', 'a:2:{i:0;s:51:\"\\blitze\\sitemaker\\migrations\\v20x\\m1_initial_schema\";i:1;s:57:\"\\blitze\\sitemaker\\migrations\\v20x\\m7_update_settings_data\";}', 1, 1, '', 0, 0),
('\\blitze\\sitemaker\\migrations\\v20x\\m9_update_menu_items_fields', 'a:1:{i:0;s:64:\"\\blitze\\sitemaker\\migrations\\converter\\c4_convert_primetime_data\";}', 1, 1, '', 1543435714, 1543435715),
('\\blitze\\sitemaker\\migrations\\v30x\\m15_reparse_cblocks_data', 'a:1:{i:0;s:55:\"\\blitze\\sitemaker\\migrations\\v20x\\m5_add_cblocks_schema\";}', 1, 1, '', 1543435716, 1543435716),
('\\blitze\\sitemaker\\migrations\\v30x\\m16_add_block_view_field', 'a:1:{i:0;s:51:\"\\blitze\\sitemaker\\migrations\\v20x\\m1_initial_schema\";}', 1, 1, '', 1543435704, 1543435704),
('\\blitze\\sitemaker\\migrations\\v30x\\m17_add_settings_module', 'a:2:{i:0;s:54:\"\\blitze\\sitemaker\\migrations\\v20x\\m10_remove_dashboard\";i:1;s:58:\"\\blitze\\sitemaker\\migrations\\v30x\\m16_add_block_view_field\";}', 1, 1, '', 1543435704, 1543435707),
('\\blitze\\sitemaker\\migrations\\v31x\\m310_filemanager', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";i:1;s:57:\"\\blitze\\sitemaker\\migrations\\v30x\\m17_add_settings_module\";}', 1, 1, '', 1543435707, 1543435709),
('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1543334997, 1543334997),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1\";}', 1, 1, '', 1543334998, 1543334998),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module\";i:3;s:39:\"\\phpbb\\db\\migration\\data\\v310\\allow_cdn\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";i:5;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";i:6;s:40:\"\\phpbb\\db\\migration\\data\\v310\\boardindex\";i:7;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";i:8;s:45:\"\\phpbb\\db\\migration\\data\\v310\\forgot_password\";i:9;s:41:\"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite\";i:10;s:49:\"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop\";i:11;s:40:\"\\phpbb\\db\\migration\\data\\v310\\namespaces\";i:12;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";i:13;s:60:\"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert\";i:14;s:38:\"\\phpbb\\db\\migration\\data\\v310\\plupload\";i:15;s:51:\"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth\";i:16;s:52:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules\";i:17;s:38:\"\\phpbb\\db\\migration\\data\\v310\\teampage\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\avatar_types\";i:2;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1543334999, 1543334999),
('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";i:2;s:52:\"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop\";i:3;s:63:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";i:5;s:54:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";i:1;s:52:\"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module\";i:2;s:59:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";i:1;s:50:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\board_contact_name\";i:3;s:44:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update2\";i:4;s:50:\"\\phpbb\\db\\migration\\data\\v310\\live_searches_config\";i:5;s:49:\"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta3\";i:1;s:69:\"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable\";i:2;s:58:\"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:\"\\phpbb\\db\\migration\\data\\v310\\extensions\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p2\";i:2;s:41:\"\\phpbb\\db\\migration\\data\\v310\\timezone_p2\";i:3;s:52:\"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display\";i:4;s:46:\"\\phpbb\\db\\migration\\data\\v310\\migrations_table\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";i:1;s:40:\"\\phpbb\\db\\migration\\data\\v310\\bot_update\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";i:1;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1543335000, 1543335000),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1543335001, 1543335001),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";}', 1, 1, '', 1543335001, 1543335001),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq\";}', 1, 1, '', 1543335001, 1543335001),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";}', 1, 1, '', 1543335001, 1543335001),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1543335001, 1543335001),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";}', 1, 1, '', 1543335001, 1543335001),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";}', 1, 1, '', 1543335001, 1543335001),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup\";}', 1, 1, '', 1543335002, 1543335002),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta4\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:3;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype\";i:7;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter\";i:8;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc1\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes\";i:3;s:41:\"\\phpbb\\db\\migration\\data\\v310\\search_type\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";i:1;s:57:\"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";i:1;s:66:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc5\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p1\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335003, 1543335003),
('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\m_pm_report', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}', 1, 1, '', 1543335004, 1543335004),
('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\update_hashes', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v31x\\style_update\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v3110', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3110rc1\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v3110rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v3111', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v3111rc1', 'a:8:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options\";i:4;s:65:\"\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options\";i:5;s:43:\"\\phpbb\\db\\migration\\data\\v31x\\update_hashes\";i:6;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:7;s:53:\"\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v3112', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v312rc1\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v313', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc2\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc1', 'a:5:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic\";i:2;s:71:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha\";i:3;s:59:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url\";i:4;s:60:\"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc1\";}', 1, 1, '', 1543335005, 1543335005),
('\\phpbb\\db\\migration\\data\\v31x\\v314', 'a:2:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc2\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v313\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc1\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v315', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v315rc1\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v315rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v314\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v316', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v316rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v315\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v317', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v317pl1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v317rc1', 'a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v31x\\m_pm_report\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v318', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v318rc1\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v318rc1', 'a:2:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v319', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v319rc1\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v31x\\v319rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc1\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\announce_global_permission', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\cookie_notice', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc2\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v320\\oauth_states\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\dev', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\font_awesome_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\icons_alt', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\log_post_id', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\notifications_board', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\oauth_states', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\text_reparser', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\v320', 'a:2:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\cookie_notice\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\v320a1', 'a:9:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";i:2;s:56:\"\\phpbb\\db\\migration\\data\\v320\\announce_global_permission\";i:3;s:53:\"\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v320\\font_awesome_update\";i:5;s:39:\"\\phpbb\\db\\migration\\data\\v320\\icons_alt\";i:6;s:41:\"\\phpbb\\db\\migration\\data\\v320\\log_post_id\";i:7;s:51:\"\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media\";i:8;s:49:\"\\phpbb\\db\\migration\\data\\v320\\notifications_board\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\v320a2', 'a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\text_reparser\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a1\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\v320b1', 'a:4:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\v320b2', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\v320rc1', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b2\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v320\\v320rc2', 'a:3:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:44:\"\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v32x\\email_force_sender', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";}', 1, 1, '', 1543335006, 1543335006),
('\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes', 'a:0:{}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\remove_imagick', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates', 'a:1:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index', 'a:1:{i:0;s:74:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index', 'a:1:{i:0;s:72:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\v321', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v321rc1\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\v321rc1', 'a:4:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";i:1;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\v322', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3112\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v322rc1\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\v322rc1', 'a:6:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles\";i:2;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v32x\\email_force_sender\";i:4;s:58:\"\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\v323', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc2\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\v323rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\v323rc2', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc1\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\db\\migration\\data\\v32x\\v324', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v32x\\remove_imagick\";}', 1, 1, '', 1543335007, 1543335007);
INSERT INTO `forum_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\phpbb\\db\\migration\\data\\v32x\\v324rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type\";}', 1, 1, '', 1543335007, 1543335007),
('\\phpbb\\viglink\\migrations\\viglink_ask_admin', 'a:1:{i:0;s:41:\"\\phpbb\\viglink\\migrations\\viglink_data_v2\";}', 1, 1, '', 1543335020, 1543335020),
('\\phpbb\\viglink\\migrations\\viglink_ask_admin_wait', 'a:1:{i:0;s:43:\"\\phpbb\\viglink\\migrations\\viglink_ask_admin\";}', 1, 1, '', 1543335020, 1543335020),
('\\phpbb\\viglink\\migrations\\viglink_cron', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 0, 0),
('\\phpbb\\viglink\\migrations\\viglink_data', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1543335018, 1543335019),
('\\phpbb\\viglink\\migrations\\viglink_data_v2', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 1543335020, 1543335020);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_moderator_cache`
--

CREATE TABLE `forum_moderator_cache` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_modules`
--

CREATE TABLE `forum_modules` (
  `module_id` mediumint(8) UNSIGNED NOT NULL,
  `module_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_modules`
--

INSERT INTO `forum_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 68, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 45, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 46, 53, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 54, 67, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 69, 88, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 70, 75, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 76, 87, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 89, 116, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 90, 103, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 104, 115, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 117, 174, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 118, 153, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 154, 163, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 164, 173, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 175, 224, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 178, 187, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 188, 199, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 200, 209, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 210, 223, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 225, 240, 'ACP_CAT_CUSTOMISE', '', ''),
(22, 1, 1, '', 'acp', 21, 230, 235, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 226, 229, 'ACP_EXTENSION_MANAGEMENT', '', ''),
(24, 1, 1, '', 'acp', 21, 236, 239, 'ACP_LANGUAGE', '', ''),
(25, 1, 1, '', 'acp', 0, 241, 260, 'ACP_CAT_MAINTENANCE', '', ''),
(26, 1, 1, '', 'acp', 25, 242, 251, 'ACP_FORUM_LOGS', '', ''),
(27, 1, 1, '', 'acp', 25, 252, 259, 'ACP_CAT_DATABASE', '', ''),
(28, 1, 1, '', 'acp', 0, 261, 284, 'ACP_CAT_SYSTEM', '', ''),
(29, 1, 1, '', 'acp', 28, 262, 265, 'ACP_AUTOMATION', '', ''),
(30, 1, 1, '', 'acp', 28, 266, 275, 'ACP_GENERAL_TASKS', '', ''),
(31, 1, 1, '', 'acp', 28, 276, 283, 'ACP_MODULE_MANAGEMENT', '', ''),
(32, 1, 1, '', 'acp', 0, 285, 292, 'ACP_CAT_DOT_MODS', '', ''),
(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(35, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(36, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(37, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(38, 1, 1, 'acp_attachments', 'acp', 11, 113, 114, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach'),
(39, 1, 1, 'acp_ban', 'acp', 15, 165, 166, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(40, 1, 1, 'acp_ban', 'acp', 15, 167, 168, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(41, 1, 1, 'acp_ban', 'acp', 15, 169, 170, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(42, 1, 1, 'acp_bbcodes', 'acp', 10, 91, 92, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(47, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(49, 1, 1, 'acp_board', 'acp', 10, 95, 96, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(53, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(54, 1, 1, 'acp_board', 'acp', 4, 49, 50, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(55, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(56, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(57, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(58, 1, 1, 'acp_board', 'acp', 5, 61, 62, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(59, 1, 1, 'acp_bots', 'acp', 30, 267, 268, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board'),
(63, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(64, 1, 1, 'acp_database', 'acp', 27, 255, 256, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(65, 1, 1, 'acp_disallow', 'acp', 15, 171, 172, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(66, 1, 1, 'acp_email', 'acp', 30, 269, 270, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(67, 1, 1, 'acp_extensions', 'acp', 23, 227, 228, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions'),
(68, 1, 1, 'acp_forums', 'acp', 7, 71, 72, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(69, 1, 1, 'acp_groups', 'acp', 14, 155, 156, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(70, 1, 1, 'acp_groups', 'acp', 14, 157, 158, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group'),
(71, 1, 1, 'acp_help_phpbb', 'acp', 5, 63, 64, 'ACP_HELP_PHPBB', 'help_phpbb', 'acl_a_server'),
(72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(73, 1, 1, 'acp_icons', 'acp', 10, 99, 100, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(74, 1, 1, 'acp_inactive', 'acp', 13, 119, 120, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(75, 1, 1, 'acp_jabber', 'acp', 4, 51, 52, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(76, 1, 1, 'acp_language', 'acp', 24, 237, 238, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(77, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(78, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(79, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(80, 1, 1, 'acp_logs', 'acp', 26, 249, 250, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(81, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(82, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'ACP', 'acp', 'acl_a_modules'),
(83, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'UCP', 'ucp', 'acl_a_modules'),
(84, 1, 1, 'acp_modules', 'acp', 31, 281, 282, 'MCP', 'mcp', 'acl_a_modules'),
(85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(87, 1, 1, 'acp_permission_roles', 'acp', 19, 205, 206, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(88, 1, 1, 'acp_permission_roles', 'acp', 19, 207, 208, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(89, 1, 1, 'acp_permissions', 'acp', 16, 176, 177, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(90, 1, 0, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(92, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(93, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(94, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(95, 1, 1, 'acp_permissions', 'acp', 13, 123, 124, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(96, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(97, 1, 1, 'acp_permissions', 'acp', 13, 125, 126, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(98, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(99, 1, 1, 'acp_permissions', 'acp', 14, 159, 160, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(100, 1, 1, 'acp_permissions', 'acp', 18, 197, 198, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(101, 1, 1, 'acp_permissions', 'acp', 14, 161, 162, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(102, 1, 1, 'acp_permissions', 'acp', 17, 183, 184, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(103, 1, 1, 'acp_permissions', 'acp', 17, 185, 186, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(107, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(108, 1, 1, 'acp_permissions', 'acp', 20, 221, 222, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(109, 1, 1, 'acp_php_info', 'acp', 30, 271, 272, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(110, 1, 1, 'acp_profile', 'acp', 13, 127, 128, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(111, 1, 1, 'acp_prune', 'acp', 7, 73, 74, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(112, 1, 1, 'acp_prune', 'acp', 13, 129, 130, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(113, 1, 1, 'acp_ranks', 'acp', 13, 131, 132, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(114, 1, 1, 'acp_reasons', 'acp', 30, 273, 274, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(115, 1, 1, 'acp_search', 'acp', 5, 65, 66, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(116, 1, 1, 'acp_search', 'acp', 27, 257, 258, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(117, 1, 1, 'acp_styles', 'acp', 22, 231, 232, 'ACP_STYLES', 'style', 'acl_a_styles'),
(118, 1, 1, 'acp_styles', 'acp', 22, 233, 234, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles'),
(119, 1, 1, 'acp_update', 'acp', 29, 263, 264, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(120, 1, 1, 'acp_users', 'acp', 13, 121, 122, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(121, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(122, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(123, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(124, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(125, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(126, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(127, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(128, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(129, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(130, 1, 0, 'acp_users', 'acp', 13, 151, 152, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(131, 1, 1, 'acp_words', 'acp', 10, 101, 102, 'ACP_WORDS', 'words', 'acl_a_words'),
(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(138, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(139, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(140, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(141, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(142, 1, 1, 'acp_permissions', 'acp', 8, 85, 86, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', ''),
(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', ''),
(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', ''),
(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', ''),
(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', ''),
(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', ''),
(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', ''),
(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', ''),
(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'acl_m_pm_report'),
(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'acl_m_pm_report'),
(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'acl_m_pm_report'),
(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve'),
(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve'),
(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', ''),
(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', ''),
(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', ''),
(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth'),
(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', 'cfg_allow_board_notifications'),
(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', ''),
(198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', ''),
(199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', ''),
(200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo'),
(201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
(202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar'),
(203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', ''),
(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', ''),
(207, 1, 1, '\\phpbb\\viglink\\acp\\viglink_module', 'acp', 3, 43, 44, 'ACP_VIGLINK_SETTINGS', 'settings', 'ext_phpbb/viglink && acl_a_board'),
(208, 1, 1, '', 'ucp', 0, 61, 62, 'UCP_SITEMAKER_CONTENT', '', ''),
(209, 1, 1, '', 'mcp', 0, 69, 70, 'MCP_SITEMAKER_CONTENT', '', ''),
(210, 1, 1, '', 'acp', 32, 286, 291, 'ACP_SITEMAKER', '', ''),
(211, 1, 1, '\\blitze\\sitemaker\\acp\\menu_module', 'acp', 210, 287, 288, 'ACP_MENU', 'menu', 'ext_blitze/sitemaker && acl_a_sm_manage_menus'),
(212, 1, 1, '\\blitze\\sitemaker\\acp\\settings_module', 'acp', 210, 289, 290, 'ACP_SM_SETTINGS', 'settings', 'ext_blitze/sitemaker && acl_a_sm_settings');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_notifications`
--

CREATE TABLE `forum_notifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `notification_type_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `notification_time` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_notification_types`
--

CREATE TABLE `forum_notification_types` (
  `notification_type_id` smallint(4) UNSIGNED NOT NULL,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_notification_types`
--

INSERT INTO `forum_notification_types` (`notification_type_id`, `notification_type_name`, `notification_type_enabled`) VALUES
(1, 'notification.type.topic', 1),
(2, 'notification.type.approve_topic', 1),
(3, 'notification.type.quote', 1),
(4, 'notification.type.bookmark', 1),
(5, 'notification.type.post', 1),
(6, 'notification.type.approve_post', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_oauth_accounts`
--

CREATE TABLE `forum_oauth_accounts` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_oauth_states`
--

CREATE TABLE `forum_oauth_states` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_state` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_oauth_tokens`
--

CREATE TABLE `forum_oauth_tokens` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_poll_options`
--

CREATE TABLE `forum_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_poll_votes`
--

CREATE TABLE `forum_poll_votes` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_posts`
--

CREATE TABLE `forum_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_delete_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_posts`
--

INSERT INTO `forum_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`, `post_visibility`, `post_delete_time`, `post_delete_reason`, `post_delete_user`) VALUES
(2, 2, 3, 2, 5, '217.73.245.35', 1543424625, 0, 1, 1, 1, 1, '', 'Wznowienie Pracy Akademii', '<r>Uwaga, uwaga - nawoływał miejscowy krzykacz, z trudnością akcentując sylaby za co winić można było nie tyle jego orientalne, jak na miejsce w którym się znajdował pochodzenie, co zawartość jego piersiówki, którą od 2 dni sukcesywnie opróżniał w karczmie na ulicy Tyrra Skaddy, której nazwy jednak pod wpływem nadmiaru pszenicznego trunku nie mógł sobie przypomnieć. <br/>\n- Ogłasza się ponowne otwarcie akademii. - Kontynuował energicznie mężczyzna czytając z wręczonego mu przez rektora akademii dekretu:\n<QUOTE><s>[quote]</s>Aplikantów prosi się o udanie do sali wizytowej, aby oficjalnie przywitać ich w murach naszej placówki. Następnie przydzieleni zostaną opiekunowie, których zadaniem będzie czuwanie nad poziomem edukacji i bezpieczeństwem w obrębie murów akademii. Nakazuje się posłuszeństwo wobec władz miejskich oraz obyczajne i godne reprezentowanie akademii<br/>\n-----------------------------------------------------------------------------------------------------------------------------------------                                                            Podpisano Rektor Llunius Tarasto, landgraf Ferrato, mistyk zakonu Lisa<e>[/quote]</e></QUOTE></r>', 'da665d416b4bdfad05917ed3ca453bbe', 0, '', 'h4p', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(3, 2, 3, 2, 0, '217.73.245.35', 1543425407, 0, 1, 1, 1, 1, '', 'Re: Wznowienie Pracy Akademii', '<r>Zadania dla akademików:\n<LIST><s>[list]</s><LI>-Stworzenie bestiariusza i atlasu (aby móc rozróżnić ghula od pijaka i nie zostać zjedzonym przez swoje rośliny ogrodowe)<br/>\n-Stworzenie map świata i określenie krain, ich geografii, geologii, flory, fauny<br/>\n-Stworzenie manifestów dyplomatycznych i otwarcie placówek naukowych w innych państwach</LI><e>[/list]</e></LIST>\n\nNo to do roboty</r>', '160735ec24eca5542eff036ca88d6696', 0, '', '3i05ho', 1, 0, '', 0, 0, 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_privmsgs`
--

CREATE TABLE `forum_privmsgs` (
  `msg_id` int(10) UNSIGNED NOT NULL,
  `root_level` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_privmsgs_folder`
--

CREATE TABLE `forum_privmsgs_folder` (
  `folder_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_privmsgs_rules`
--

CREATE TABLE `forum_privmsgs_rules` (
  `rule_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_privmsgs_to`
--

CREATE TABLE `forum_privmsgs_to` (
  `msg_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_profile_fields`
--

CREATE TABLE `forum_profile_fields` (
  `field_id` mediumint(8) UNSIGNED NOT NULL,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_ml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_is_contact` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_profile_fields`
--

INSERT INTO `forum_profile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_hide`, `field_no_view`, `field_active`, `field_order`, `field_show_profile`, `field_show_on_vt`, `field_show_novalue`, `field_show_on_pm`, `field_show_on_ml`, `field_is_contact`, `field_contact_desc`, `field_contact_url`) VALUES
(1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, '', ''),
(2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, 'VISIT_WEBSITE', '%s'),
(3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, '', ''),
(4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, '', ''),
(5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, '', ''),
(6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/'),
(7, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, 'SEND_YIM_MESSAGE', 'ymsgr:sendim?%s'),
(8, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/'),
(9, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s'),
(10, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo'),
(11, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s'),
(12, 'phpbb_googleplus', 'profilefields.type.googleplus', 'phpbb_googleplus', '20', '3', '255', '', '', '[\\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, 'VIEW_GOOGLEPLUS_PROFILE', 'http://plus.google.com/%s');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_profile_fields_data`
--

CREATE TABLE `forum_profile_fields_data` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_profile_fields_data`
--

INSERT INTO `forum_profile_fields_data` (`user_id`, `pf_phpbb_interests`, `pf_phpbb_occupation`, `pf_phpbb_location`, `pf_phpbb_youtube`, `pf_phpbb_twitter`, `pf_phpbb_googleplus`, `pf_phpbb_skype`, `pf_phpbb_facebook`, `pf_phpbb_icq`, `pf_phpbb_website`, `pf_phpbb_yahoo`, `pf_phpbb_aol`) VALUES
(2, '', '', 'Chaos', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_profile_fields_lang`
--

CREATE TABLE `forum_profile_fields_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_profile_lang`
--

CREATE TABLE `forum_profile_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_profile_lang`
--

INSERT INTO `forum_profile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
(1, 1, 'LOCATION', '', ''),
(2, 1, 'WEBSITE', '', ''),
(3, 1, 'INTERESTS', '', ''),
(4, 1, 'OCCUPATION', '', ''),
(5, 1, 'AOL', '', ''),
(6, 1, 'ICQ', '', ''),
(7, 1, 'YAHOO', '', ''),
(8, 1, 'FACEBOOK', '', ''),
(9, 1, 'TWITTER', '', ''),
(10, 1, 'SKYPE', '', ''),
(11, 1, 'YOUTUBE', '', ''),
(12, 1, 'GOOGLEPLUS', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_ranks`
--

CREATE TABLE `forum_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_ranks`
--

INSERT INTO `forum_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_reports`
--

CREATE TABLE `forum_reports` (
  `report_id` int(10) UNSIGNED NOT NULL,
  `reason_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reported_post_enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_reports_reasons`
--

CREATE TABLE `forum_reports_reasons` (
  `reason_id` smallint(4) UNSIGNED NOT NULL,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_reports_reasons`
--

INSERT INTO `forum_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 'The post contains links to illegal or pirated software.', 1),
(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2),
(3, 'off_topic', 'The reported post is off topic.', 3),
(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_search_results`
--

CREATE TABLE `forum_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_search_results`
--

INSERT INTO `forum_search_results` (`search_key`, `search_time`, `search_keywords`, `search_authors`) VALUES
('18b4c23b345dee760c285aea7b28e267', 1544114048, '', ' 2 ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_search_wordlist`
--

CREATE TABLE `forum_search_wordlist` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `word_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_search_wordlist`
--

INSERT INTO `forum_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'this', 0, 1),
(2, 'is', 0, 1),
(3, 'an', 0, 1),
(4, 'example', 0, 1),
(5, 'post', 0, 1),
(6, 'in', 0, 1),
(7, 'your', 0, 1),
(8, 'phpbb3', 0, 2),
(9, 'installation', 0, 1),
(10, 'everything', 0, 1),
(11, 'seems', 0, 1),
(12, 'to', 0, 2),
(13, 'be', 0, 1),
(14, 'working', 0, 1),
(15, 'you', 0, 1),
(16, 'may', 0, 1),
(17, 'delete', 0, 1),
(18, 'if', 0, 1),
(19, 'like', 0, 1),
(20, 'and', 0, 1),
(21, 'continue', 0, 1),
(22, 'set', 0, 1),
(23, 'up', 0, 1),
(24, 'board', 0, 1),
(25, 'during', 0, 1),
(26, 'the', 0, 1),
(27, 'process', 0, 1),
(28, 'first', 0, 1),
(29, 'category', 0, 1),
(30, 'forum', 0, 1),
(31, 'are', 0, 1),
(32, 'assigned', 0, 1),
(33, 'appropriate', 0, 1),
(34, 'of', 0, 1),
(35, 'permissions', 0, 1),
(36, 'for', 0, 1),
(37, 'predefined', 0, 1),
(38, 'usergroups', 0, 1),
(39, 'administrators', 0, 1),
(40, 'bots', 0, 1),
(41, 'global', 0, 1),
(42, 'moderators', 0, 1),
(43, 'guests', 0, 1),
(44, 'registered', 0, 1),
(45, 'users', 0, 1),
(46, 'coppa', 0, 1),
(47, 'also', 0, 1),
(48, 'choose', 0, 1),
(49, 'do', 0, 1),
(50, 'not', 0, 1),
(51, 'forget', 0, 1),
(52, 'assign', 0, 1),
(53, 'all', 0, 1),
(54, 'these', 0, 1),
(55, 'new', 0, 1),
(56, 'categories', 0, 1),
(57, 'forums', 0, 1),
(58, 'create', 0, 1),
(59, 'it', 0, 1),
(60, 'recommended', 0, 1),
(61, 'rename', 0, 1),
(62, 'copy', 0, 1),
(63, 'from', 0, 1),
(64, 'while', 0, 1),
(65, 'creating', 0, 1),
(66, 'have', 0, 1),
(67, 'fun', 0, 1),
(68, 'welcome', 0, 1),
(69, 'uwaga', 0, 1),
(70, 'krzyczał', 0, 0),
(71, 'klucznik', 0, 0),
(72, 'trudnością', 0, 1),
(73, 'akcentując', 0, 1),
(74, 'sylaby', 0, 1),
(75, 'było', 0, 1),
(76, 'prawdopodobnie', 0, 0),
(77, 'winą', 0, 0),
(78, 'nie', 0, 2),
(79, 'tyle', 0, 1),
(80, 'jego', 0, 1),
(81, 'orientalnego', 0, 0),
(82, 'jak', 0, 1),
(83, 'miejsce', 0, 1),
(84, 'którym', 0, 1),
(85, 'się', 0, 1),
(86, 'znajdował', 0, 1),
(87, 'pochodzenia', 0, 0),
(88, 'niechęci', 0, 0),
(89, 'nauki', 0, 0),
(90, 'języków', 0, 0),
(91, 'zawartości', 0, 0),
(92, 'mieszka', 0, 0),
(93, 'który', 0, 0),
(94, 'dni', 0, 1),
(95, 'sukcesywnie', 0, 1),
(96, 'opróżniał', 0, 1),
(97, 'karczmie', 0, 1),
(98, 'ulicy', 0, 1),
(99, 'tyrra', 0, 1),
(100, 'skaddy', 0, 1),
(101, 'zaraz', 0, 0),
(102, 'rynkiem', 0, 0),
(103, 'miejskim', 0, 0),
(104, 'której', 0, 1),
(105, 'nazwy', 0, 1),
(106, 'jednak', 0, 1),
(107, 'pod', 0, 1),
(108, 'wpływem', 0, 1),
(109, 'nadmiaru', 0, 1),
(110, 'pszenicznego', 0, 1),
(111, 'trunku', 0, 1),
(112, 'mógł', 0, 1),
(113, 'sobie', 0, 1),
(114, 'przypomnieć', 0, 1),
(115, 'ogłasza', 0, 1),
(116, 'ponowne', 0, 1),
(117, 'otwarcie', 0, 2),
(118, 'akademii', 0, 3),
(119, 'kontynuował', 0, 1),
(120, 'energicznie', 0, 1),
(121, 'mężczyzna', 0, 1),
(122, 'czytając', 0, 1),
(123, 'wręczonego', 0, 1),
(124, 'przez', 0, 2),
(125, 'rektora', 0, 1),
(126, 'dekretu', 0, 1),
(127, 'quote', 0, 1),
(128, 'aplikantów', 0, 1),
(129, 'prosi', 0, 1),
(130, 'udanie', 0, 1),
(131, 'sali', 0, 1),
(132, 'wizytowej', 0, 1),
(133, 'aby', 0, 2),
(134, 'już', 0, 0),
(135, 'oficjalnie', 0, 1),
(136, 'przywitać', 0, 1),
(137, 'ich', 0, 2),
(138, 'murach', 0, 1),
(139, 'naszej', 0, 1),
(140, 'placówki', 0, 1),
(141, 'następnie', 0, 1),
(142, 'przydzieleni', 0, 1),
(143, 'zostaną', 0, 1),
(144, 'opiekunowie', 0, 1),
(145, 'których', 0, 1),
(146, 'zadaniem', 0, 1),
(147, 'będzie', 0, 1),
(148, 'czuwanie', 0, 1),
(149, 'nad', 0, 1),
(150, 'poziomem', 0, 1),
(151, 'edukacji', 0, 1),
(152, 'podpisano', 0, 1),
(153, 'rektor', 0, 1),
(154, 'llunius', 0, 1),
(155, 'tarasto', 0, 1),
(156, 'landgraf', 0, 1),
(157, 'ferrato', 0, 1),
(158, 'komtur', 0, 0),
(159, 'zakonu', 0, 1),
(160, 'gwiazdy', 0, 0),
(161, 'polarnej', 0, 0),
(162, 'wznowienie', 0, 2),
(163, 'pracy', 0, 2),
(164, 'zadania', 0, 1),
(165, 'dla', 0, 1),
(166, 'akademików', 0, 1),
(167, 'list', 0, 1),
(168, 'stworzenie', 0, 1),
(169, 'bestiariusza', 0, 1),
(170, 'atlasu', 0, 1),
(171, 'móc', 0, 1),
(172, 'rozróżnić', 0, 1),
(173, 'ghula', 0, 1),
(174, 'pijaka', 0, 1),
(175, 'zostać', 0, 1),
(176, 'zjedzonym', 0, 1),
(177, 'swoje', 0, 1),
(178, 'rośliny', 0, 1),
(179, 'ogrodowe', 0, 1),
(180, 'map', 0, 1),
(181, 'świata', 0, 1),
(182, 'określenie', 0, 1),
(183, 'krain', 0, 1),
(184, 'geografii', 0, 1),
(185, 'geologii', 0, 1),
(186, 'flory', 0, 1),
(187, 'fauny', 0, 1),
(188, 'manifestów', 0, 1),
(189, 'dyplomatycznych', 0, 1),
(190, 'placówek', 0, 1),
(191, 'naukowych', 0, 1),
(192, 'innych', 0, 1),
(193, 'państwach', 0, 1),
(194, 'roboty', 0, 1),
(195, 'nawoływał', 0, 1),
(196, 'miejscowy', 0, 1),
(197, 'krzykacz', 0, 1),
(198, 'winić', 0, 1),
(199, 'można', 0, 1),
(200, 'orientalne', 0, 1),
(201, 'pochodzenie', 0, 1),
(202, 'zawartość', 0, 1),
(203, 'piersiówki', 0, 1),
(204, 'którą', 0, 1),
(205, 'bezpieczeństwem', 0, 1),
(206, 'obrębie', 0, 1),
(207, 'murów', 0, 1),
(208, 'nakazuje', 0, 1),
(209, 'posłuszeństwo', 0, 1),
(210, 'wobec', 0, 1),
(211, 'komorników', 0, 0),
(212, 'miejskich', 0, 1),
(213, 'oraz', 0, 1),
(214, 'obyczajne', 0, 1),
(215, 'godne', 0, 1),
(216, 'reprezentowanie', 0, 1),
(217, 'mistyk', 0, 1),
(218, 'władz', 0, 1),
(219, 'lisa', 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_search_wordmatch`
--

CREATE TABLE `forum_search_wordmatch` (
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `word_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title_match` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_search_wordmatch`
--

INSERT INTO `forum_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 8, 1),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 12, 1),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 0),
(1, 59, 0),
(1, 60, 0),
(1, 61, 0),
(1, 62, 0),
(1, 63, 0),
(1, 64, 0),
(1, 65, 0),
(1, 66, 0),
(1, 67, 0),
(1, 68, 1),
(2, 69, 0),
(2, 72, 0),
(2, 73, 0),
(2, 74, 0),
(2, 75, 0),
(2, 78, 0),
(3, 78, 0),
(2, 79, 0),
(2, 80, 0),
(2, 82, 0),
(2, 83, 0),
(2, 84, 0),
(2, 85, 0),
(2, 86, 0),
(2, 94, 0),
(2, 95, 0),
(2, 96, 0),
(2, 97, 0),
(2, 98, 0),
(2, 99, 0),
(2, 100, 0),
(2, 104, 0),
(2, 105, 0),
(2, 106, 0),
(2, 107, 0),
(2, 108, 0),
(2, 109, 0),
(2, 110, 0),
(2, 111, 0),
(2, 112, 0),
(2, 113, 0),
(2, 114, 0),
(2, 115, 0),
(2, 116, 0),
(2, 117, 0),
(3, 117, 0),
(2, 118, 0),
(2, 118, 1),
(3, 118, 1),
(2, 119, 0),
(2, 120, 0),
(2, 121, 0),
(2, 122, 0),
(2, 123, 0),
(2, 124, 0),
(3, 124, 0),
(2, 125, 0),
(2, 126, 0),
(2, 127, 0),
(2, 128, 0),
(2, 129, 0),
(2, 130, 0),
(2, 131, 0),
(2, 132, 0),
(2, 133, 0),
(3, 133, 0),
(2, 135, 0),
(2, 136, 0),
(2, 137, 0),
(3, 137, 0),
(2, 138, 0),
(2, 139, 0),
(2, 140, 0),
(2, 141, 0),
(2, 142, 0),
(2, 143, 0),
(2, 144, 0),
(2, 145, 0),
(2, 146, 0),
(2, 147, 0),
(2, 148, 0),
(2, 149, 0),
(2, 150, 0),
(2, 151, 0),
(2, 152, 0),
(2, 153, 0),
(2, 154, 0),
(2, 155, 0),
(2, 156, 0),
(2, 157, 0),
(2, 159, 0),
(2, 162, 1),
(3, 162, 1),
(2, 163, 1),
(3, 163, 1),
(3, 164, 0),
(3, 165, 0),
(3, 166, 0),
(3, 167, 0),
(3, 168, 0),
(3, 169, 0),
(3, 170, 0),
(3, 171, 0),
(3, 172, 0),
(3, 173, 0),
(3, 174, 0),
(3, 175, 0),
(3, 176, 0),
(3, 177, 0),
(3, 178, 0),
(3, 179, 0),
(3, 180, 0),
(3, 181, 0),
(3, 182, 0),
(3, 183, 0),
(3, 184, 0),
(3, 185, 0),
(3, 186, 0),
(3, 187, 0),
(3, 188, 0),
(3, 189, 0),
(3, 190, 0),
(3, 191, 0),
(3, 192, 0),
(3, 193, 0),
(3, 194, 0),
(2, 195, 0),
(2, 196, 0),
(2, 197, 0),
(2, 198, 0),
(2, 199, 0),
(2, 200, 0),
(2, 201, 0),
(2, 202, 0),
(2, 203, 0),
(2, 204, 0),
(2, 205, 0),
(2, 206, 0),
(2, 207, 0),
(2, 208, 0),
(2, 209, 0),
(2, 210, 0),
(2, 212, 0),
(2, 213, 0),
(2, 214, 0),
(2, 215, 0),
(2, 216, 0),
(2, 217, 0),
(2, 218, 0),
(2, 219, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_sessions`
--

CREATE TABLE `forum_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_last_visit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_sessions`
--

INSERT INTO `forum_sessions` (`session_id`, `session_user_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`, `session_forum_id`) VALUES
('1a3fac5ff17c2a8293d4d845a3bec2f5', 1, 1544114039, 1544114039, 1544114039, '2a02:4780:bad:20:fced:1ff:fe20:116', '', '', 'index.php', 1, 0, 0, 0),
('aade51d9c208943652c22bbb9e9c4ef3', 2, 1543923240, 1544114770, 1544115969, '217.73.245.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', 'index.php', 1, 0, 1, 0),
('ce432c5376c358068bf4362987f31bd1', 1, 1544113833, 1544113833, 1544114232, '217.73.245.160', 'Mozilla/4.5 (compatible; HTTrack 3.0x; Windows 98)', '', 'app.php/styles/pbwow3/theme/print.css', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_sessions_keys`
--

CREATE TABLE `forum_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_sitelist`
--

CREATE TABLE `forum_sitelist` (
  `site_id` mediumint(8) UNSIGNED NOT NULL,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_smilies`
--

CREATE TABLE `forum_smilies` (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_smilies`
--

INSERT INTO `forum_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_sm_blocks`
--

CREATE TABLE `forum_sm_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `icon` varchar(55) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(55) COLLATE utf8_bin NOT NULL DEFAULT '',
  `title` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `route_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `position` varchar(55) COLLATE utf8_bin NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `style` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(125) COLLATE utf8_bin NOT NULL DEFAULT '',
  `class` varchar(125) COLLATE utf8_bin NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hide_title` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `view` varchar(55) COLLATE utf8_bin NOT NULL DEFAULT '',
  `settings` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_sm_blocks`
--

INSERT INTO `forum_sm_blocks` (`bid`, `icon`, `name`, `title`, `route_id`, `position`, `weight`, `style`, `permission`, `class`, `status`, `type`, `hide_title`, `hash`, `view`, `settings`) VALUES
(1, '', 'blitze.sitemaker.block.login', '', 1, 'subcontent', 0, 2, '', '', 1, 0, 0, '59fcd6dad823c4046d9aaaa20b7cf1da', 'boxed', '{\"show_hide_me\":\"1\",\"allow_autologin\":\"1\",\"show_member_menu\":\"1\"}'),
(3, '', 'blitze.sitemaker.block.forum_topics', '', 1, 'subcontent', 1, 2, '', '', 1, 0, 0, '4727c494004458871fb67b389e3aad0b', 'boxed', '{\"max_topics\":\"5\",\"date_range\":\"\",\"order_by\":\"1\",\"enable_tracking\":\"0\",\"topic_title_limit\":\"25\",\"template\":\"titles\",\"context\":\"last\",\"preview_chars\":\"0\"}'),
(4, '', 'blitze.sitemaker.block.links', '', 1, 'bottom', 0, 2, '', '', 1, 0, 0, 'bd910d9c31589a36a85d2524877124ed', 'boxed', '{\"menu_id\":\"1\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_sm_block_routes`
--

CREATE TABLE `forum_sm_block_routes` (
  `route_id` mediumint(8) UNSIGNED NOT NULL,
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `route` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `hide_blocks` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `has_blocks` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ex_positions` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_sm_block_routes`
--

INSERT INTO `forum_sm_block_routes` (`route_id`, `ext_name`, `route`, `style`, `hide_blocks`, `has_blocks`, `ex_positions`) VALUES
(1, '', 'index.php', 2, 0, 1, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_sm_cblocks`
--

CREATE TABLE `forum_sm_cblocks` (
  `block_id` mediumint(8) UNSIGNED NOT NULL,
  `block_content` text COLLATE utf8_bin NOT NULL,
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_sm_menus`
--

CREATE TABLE `forum_sm_menus` (
  `menu_id` mediumint(8) UNSIGNED NOT NULL,
  `menu_name` varchar(55) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_sm_menus`
--

INSERT INTO `forum_sm_menus` (`menu_id`, `menu_name`) VALUES
(1, 'Menu');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_sm_menu_items`
--

CREATE TABLE `forum_sm_menu_items` (
  `item_id` mediumint(8) UNSIGNED NOT NULL,
  `menu_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `item_title` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_target` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `depth` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `item_parents` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_sm_menu_items`
--

INSERT INTO `forum_sm_menu_items` (`item_id`, `menu_id`, `parent_id`, `item_title`, `item_url`, `item_icon`, `item_target`, `left_id`, `right_id`, `depth`, `item_parents`) VALUES
(1, 1, 0, 'Strona Startowa', 'http://dustfall.000webhostapp.com', '', 0, 1, 2, 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_styles`
--

CREATE TABLE `forum_styles` (
  `style_id` mediumint(8) UNSIGNED NOT NULL,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_styles`
--

INSERT INTO `forum_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `style_path`, `bbcode_bitfield`, `style_parent_id`, `style_parent_tree`) VALUES
(1, 'prosilver', '&copy; phpBB Limited', 0, 'prosilver', '//g=', 0, ''),
(2, 'PBWoW3', '© PayBas 2015, @Sajaki 2017', 1, 'pbwow3', '//g=', 1, 'prosilver');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_teampage`
--

CREATE TABLE `forum_teampage` (
  `teampage_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_teampage`
--

INSERT INTO `forum_teampage` (`teampage_id`, `group_id`, `teampage_name`, `teampage_position`, `teampage_parent`) VALUES
(1, 5, '', 1, 0),
(2, 4, '', 2, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_topics`
--

CREATE TABLE `forum_topics` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_moved_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_length` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_topics`
--

INSERT INTO `forum_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`, `topic_visibility`, `topic_delete_time`, `topic_delete_reason`, `topic_delete_user`, `topic_posts_approved`, `topic_posts_unapproved`, `topic_posts_softdeleted`) VALUES
(2, 3, 5, 0, 0, 'Wznowienie Pracy Akademii', 2, 1543424625, 0, 18, 0, 1, 2, 'Khaos', 'AA0000', 3, 2, 'Khaos', 'AA0000', 'Re: Wznowienie Pracy Akademii', 1543425407, 1544114181, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, '', 0, 2, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_topics_posted`
--

CREATE TABLE `forum_topics_posted` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_topics_posted`
--

INSERT INTO `forum_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_topics_track`
--

CREATE TABLE `forum_topics_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_topics_track`
--

INSERT INTO `forum_topics_track` (`user_id`, `topic_id`, `forum_id`, `mark_time`) VALUES
(2, 2, 3, 1543513769);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_topics_watch`
--

CREATE TABLE `forum_topics_watch` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_users`
--

CREATE TABLE `forum_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastmark` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_options` int(11) UNSIGNED NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_users`
--

INSERT INTO `forum_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_jabber`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, '00000000000g13ydq8000000\n\n\nhwby9w000000\nhwby9w000000\nhwby9w000000\nhwby9w000000\n\n\nhwby9w000000\nhwby9w000000\nhwby9w000000\nhwby9w000000\nhwby9w000000\nhwby9w000000\nhwby9w000000\nhwby9w000000\nhwby9w000000\nhwby9w000000', 0, '', 1543334927, 'Anonymous', 'anonymous', '', 0, '', 0, '', 0, 0, 0, '', 'KD2955JQSX', 1544114048, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '14znvpk3okr47mu5', 1, 0, 0),
(2, 3, 5, 'zik0zjzik0zjzik0zjv2qiv4\n\n\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo\n\n\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo\nzik0zjqmx0qo', 0, '217.73.245.35', 1543334927, 'Khaos', 'khaos', '$2y$10$zUflREQgJUr31RPwH28hMOlfWUBUCoORYLG6.qdUqor9PG5SVVXkq', 0, 'janiakmaurycy@gmail.com', 126955756323, ' 0- 0-   0', 1543923240, 1543433484, 1543425407, 'index.php', '3AF4BKP2MM', 0, 0, 0, 0, 0, 0, 2, 'en', '', 'D M d, Y g:i a', 2, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'hn7kd2esm27zq1l7', 1, 0, 0),
(3, 2, 6, '', 0, '', 1543334932, 'AdsBot [Google]', 'adsbot [google]', '', 1543334932, '', 0, '', 0, 1543334932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2ev96w9iu97ezjal', 0, 0, 0),
(4, 2, 6, '', 0, '', 1543334932, 'Alexa [Bot]', 'alexa [bot]', '', 1543334932, '', 0, '', 0, 1543334932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'onml6217xzwyrzw4', 0, 0, 0),
(5, 2, 6, '', 0, '', 1543334933, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1543334933, '', 0, '', 0, 1543334933, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '58mgvf9ruu1o061a', 0, 0, 0),
(6, 2, 6, '', 0, '', 1543334933, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1543334933, '', 0, '', 0, 1543334933, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'n804qyuk0ak6ggdl', 0, 0, 0),
(7, 2, 6, '', 0, '', 1543334935, 'Baidu [Spider]', 'baidu [spider]', '', 1543334935, '', 0, '', 0, 1543334935, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'v5lor9r446kmmu8n', 0, 0, 0),
(8, 2, 6, '', 0, '', 1543334935, 'Bing [Bot]', 'bing [bot]', '', 1543334935, '', 0, '', 0, 1543334935, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '5uo60ggsv5i1ap1s', 0, 0, 0),
(9, 2, 6, '', 0, '', 1543334936, 'Exabot [Bot]', 'exabot [bot]', '', 1543334936, '', 0, '', 0, 1543334936, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3t02m666a4cfl7n1', 0, 0, 0),
(10, 2, 6, '', 0, '', 1543334937, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1543334937, '', 0, '', 0, 1543334937, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ew532jndmj656k8b', 0, 0, 0),
(11, 2, 6, '', 0, '', 1543334938, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1543334938, '', 0, '', 0, 1543334938, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7udbim971h8hqojk', 0, 0, 0),
(12, 2, 6, '', 0, '', 1543334938, 'Francis [Bot]', 'francis [bot]', '', 1543334938, '', 0, '', 0, 1543334938, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cnmbkgx3tyqkln0w', 0, 0, 0),
(13, 2, 6, '', 0, '', 1543334940, 'Gigabot [Bot]', 'gigabot [bot]', '', 1543334940, '', 0, '', 0, 1543334940, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f6r8nvlnfqq2fm7n', 0, 0, 0),
(14, 2, 6, '', 0, '', 1543334940, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1543334940, '', 0, '', 0, 1543334940, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f20hxxjb92emeoms', 0, 0, 0),
(15, 2, 6, '', 0, '', 1543334941, 'Google Desktop', 'google desktop', '', 1543334941, '', 0, '', 0, 1543334941, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'thgontq8is7320zl', 0, 0, 0),
(16, 2, 6, '', 0, '', 1543334941, 'Google Feedfetcher', 'google feedfetcher', '', 1543334941, '', 0, '', 0, 1543334941, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ecn6j2zyrp4j72u1', 0, 0, 0),
(17, 2, 6, '', 0, '', 1543334942, 'Google [Bot]', 'google [bot]', '', 1543334942, '', 0, '', 0, 1543334942, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'yi5weojpivewbcdd', 0, 0, 0),
(18, 2, 6, '', 0, '', 1543334942, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1543334942, '', 0, '', 0, 1543334942, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'o2q7h99hs8f91yi7', 0, 0, 0),
(19, 2, 6, '', 0, '', 1543334943, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1543334943, '', 0, '', 0, 1543334943, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2ulji2fi8lxtdf07', 0, 0, 0),
(20, 2, 6, '', 0, '', 1543334947, 'IBM Research [Bot]', 'ibm research [bot]', '', 1543334947, '', 0, '', 0, 1543334947, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'nqokfn0uplo0w4xh', 0, 0, 0),
(21, 2, 6, '', 0, '', 1543334949, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1543334949, '', 0, '', 0, 1543334949, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '5bz29taauewnmrk3', 0, 0, 0),
(22, 2, 6, '', 0, '', 1543334949, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1543334949, '', 0, '', 0, 1543334949, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'w23vwaigrh1cw6s0', 0, 0, 0),
(23, 2, 6, '', 0, '', 1543334950, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1543334950, '', 0, '', 0, 1543334950, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9y703py1yatzidzn', 0, 0, 0),
(24, 2, 6, '', 0, '', 1543334950, 'Metager [Bot]', 'metager [bot]', '', 1543334950, '', 0, '', 0, 1543334950, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'oeptrd7nwhqogkpe', 0, 0, 0),
(25, 2, 6, '', 0, '', 1543334951, 'MSN NewsBlogs', 'msn newsblogs', '', 1543334951, '', 0, '', 0, 1543334951, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4zd3zft46f2b59ng', 0, 0, 0),
(26, 2, 6, '', 0, '', 1543334951, 'MSN [Bot]', 'msn [bot]', '', 1543334951, '', 0, '', 0, 1543334951, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2k1xxkx6ctxubfoz', 0, 0, 0),
(27, 2, 6, '', 0, '', 1543334952, 'MSNbot Media', 'msnbot media', '', 1543334952, '', 0, '', 0, 1543334952, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8qvqrctgweegc94a', 0, 0, 0),
(28, 2, 6, '', 0, '', 1543334953, 'Nutch [Bot]', 'nutch [bot]', '', 1543334953, '', 0, '', 0, 1543334953, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b0fu1y0lc448vwxm', 0, 0, 0),
(29, 2, 6, '', 0, '', 1543334954, 'Online link [Validator]', 'online link [validator]', '', 1543334954, '', 0, '', 0, 1543334954, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2c7li6pe3rzu3v1f', 0, 0, 0),
(30, 2, 6, '', 0, '', 1543334954, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1543334954, '', 0, '', 0, 1543334954, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'xebw0kgaqtzc9ill', 0, 0, 0),
(31, 2, 6, '', 0, '', 1543334955, 'Sensis [Crawler]', 'sensis [crawler]', '', 1543334955, '', 0, '', 0, 1543334955, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'aixp92fikfkcn8xm', 0, 0, 0),
(32, 2, 6, '', 0, '', 1543334955, 'SEO Crawler', 'seo crawler', '', 1543334955, '', 0, '', 0, 1543334955, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd8z883odiridiy31', 0, 0, 0),
(33, 2, 6, '', 0, '', 1543334956, 'Seoma [Crawler]', 'seoma [crawler]', '', 1543334956, '', 0, '', 0, 1543334956, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'mfuclpr4a2lowhg7', 0, 0, 0),
(34, 2, 6, '', 0, '', 1543334956, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1543334956, '', 0, '', 0, 1543334956, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'loajprati41iabxx', 0, 0, 0),
(35, 2, 6, '', 0, '', 1543334956, 'Snappy [Bot]', 'snappy [bot]', '', 1543334956, '', 0, '', 0, 1543334956, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd176w9gasmls4krr', 0, 0, 0),
(36, 2, 6, '', 0, '', 1543334957, 'Steeler [Crawler]', 'steeler [crawler]', '', 1543334957, '', 0, '', 0, 1543334957, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3ogjyo97uqhlguhk', 0, 0, 0),
(37, 2, 6, '', 0, '', 1543334958, 'Telekom [Bot]', 'telekom [bot]', '', 1543334958, '', 0, '', 0, 1543334958, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '54dl3q314d0gu275', 0, 0, 0),
(38, 2, 6, '', 0, '', 1543334958, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1543334958, '', 0, '', 0, 1543334958, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2pwyyg3yq7not4at', 0, 0, 0),
(39, 2, 6, '', 0, '', 1543334959, 'Voyager [Bot]', 'voyager [bot]', '', 1543334959, '', 0, '', 0, 1543334959, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'bqf074374creexbs', 0, 0, 0),
(40, 2, 6, '', 0, '', 1543334959, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1543334959, '', 0, '', 0, 1543334959, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'q8460sni6r6h3lrq', 0, 0, 0),
(41, 2, 6, '', 0, '', 1543334960, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1543334960, '', 0, '', 0, 1543334960, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'yyftfmla937yg56g', 0, 0, 0),
(42, 2, 6, '', 0, '', 1543334960, 'W3C [Validator]', 'w3c [validator]', '', 1543334960, '', 0, '', 0, 1543334960, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'lbim5jozg2hqe9i8', 0, 0, 0),
(43, 2, 6, '', 0, '', 1543334963, 'YaCy [Bot]', 'yacy [bot]', '', 1543334964, '', 0, '', 0, 1543334964, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'jex70aynr1ato0vn', 0, 0, 0),
(44, 2, 6, '', 0, '', 1543334964, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1543334964, '', 0, '', 0, 1543334964, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'w76vecctvpceuoa7', 0, 0, 0),
(45, 2, 6, '', 0, '', 1543334964, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1543334964, '', 0, '', 0, 1543334964, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ppwtaqaa4k6c2zyo', 0, 0, 0),
(46, 2, 6, '', 0, '', 1543334965, 'Yahoo [Bot]', 'yahoo [bot]', '', 1543334965, '', 0, '', 0, 1543334965, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd96t1re0fe7thpb7', 0, 0, 0),
(47, 2, 6, '', 0, '', 1543334965, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1543334965, '', 0, '', 0, 1543334965, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'aetxhl2t8514qbz5', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_user_group`
--

CREATE TABLE `forum_user_group` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_user_group`
--

INSERT INTO `forum_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_user_notifications`
--

CREATE TABLE `forum_user_notifications` (
  `item_type` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `method` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `forum_user_notifications`
--

INSERT INTO `forum_user_notifications` (`item_type`, `item_id`, `user_id`, `method`, `notify`) VALUES
('notification.type.post', 0, 2, 'notification.method.board', 1),
('notification.type.post', 0, 2, 'notification.method.email', 1),
('notification.type.post', 0, 3, 'notification.method.email', 1),
('notification.type.post', 0, 4, 'notification.method.email', 1),
('notification.type.post', 0, 5, 'notification.method.email', 1),
('notification.type.post', 0, 6, 'notification.method.email', 1),
('notification.type.post', 0, 7, 'notification.method.email', 1),
('notification.type.post', 0, 8, 'notification.method.email', 1),
('notification.type.post', 0, 9, 'notification.method.email', 1),
('notification.type.post', 0, 10, 'notification.method.email', 1),
('notification.type.post', 0, 11, 'notification.method.email', 1),
('notification.type.post', 0, 12, 'notification.method.email', 1),
('notification.type.post', 0, 13, 'notification.method.email', 1),
('notification.type.post', 0, 14, 'notification.method.email', 1),
('notification.type.post', 0, 15, 'notification.method.email', 1),
('notification.type.post', 0, 16, 'notification.method.email', 1),
('notification.type.post', 0, 17, 'notification.method.email', 1),
('notification.type.post', 0, 18, 'notification.method.email', 1),
('notification.type.post', 0, 19, 'notification.method.email', 1),
('notification.type.post', 0, 20, 'notification.method.email', 1),
('notification.type.post', 0, 21, 'notification.method.email', 1),
('notification.type.post', 0, 22, 'notification.method.email', 1),
('notification.type.post', 0, 23, 'notification.method.email', 1),
('notification.type.post', 0, 24, 'notification.method.email', 1),
('notification.type.post', 0, 25, 'notification.method.email', 1),
('notification.type.post', 0, 26, 'notification.method.email', 1),
('notification.type.post', 0, 27, 'notification.method.email', 1),
('notification.type.post', 0, 28, 'notification.method.email', 1),
('notification.type.post', 0, 29, 'notification.method.email', 1),
('notification.type.post', 0, 30, 'notification.method.email', 1),
('notification.type.post', 0, 31, 'notification.method.email', 1),
('notification.type.post', 0, 32, 'notification.method.email', 1),
('notification.type.post', 0, 33, 'notification.method.email', 1),
('notification.type.post', 0, 34, 'notification.method.email', 1),
('notification.type.post', 0, 35, 'notification.method.email', 1),
('notification.type.post', 0, 36, 'notification.method.email', 1),
('notification.type.post', 0, 37, 'notification.method.email', 1),
('notification.type.post', 0, 38, 'notification.method.email', 1),
('notification.type.post', 0, 39, 'notification.method.email', 1),
('notification.type.post', 0, 40, 'notification.method.email', 1),
('notification.type.post', 0, 41, 'notification.method.email', 1),
('notification.type.post', 0, 42, 'notification.method.email', 1),
('notification.type.post', 0, 43, 'notification.method.email', 1),
('notification.type.post', 0, 44, 'notification.method.email', 1),
('notification.type.post', 0, 45, 'notification.method.email', 1),
('notification.type.post', 0, 46, 'notification.method.email', 1),
('notification.type.post', 0, 47, 'notification.method.email', 1),
('notification.type.topic', 0, 2, 'notification.method.board', 1),
('notification.type.topic', 0, 2, 'notification.method.email', 1),
('notification.type.topic', 0, 3, 'notification.method.email', 1),
('notification.type.topic', 0, 4, 'notification.method.email', 1),
('notification.type.topic', 0, 5, 'notification.method.email', 1),
('notification.type.topic', 0, 6, 'notification.method.email', 1),
('notification.type.topic', 0, 7, 'notification.method.email', 1),
('notification.type.topic', 0, 8, 'notification.method.email', 1),
('notification.type.topic', 0, 9, 'notification.method.email', 1),
('notification.type.topic', 0, 10, 'notification.method.email', 1),
('notification.type.topic', 0, 11, 'notification.method.email', 1),
('notification.type.topic', 0, 12, 'notification.method.email', 1),
('notification.type.topic', 0, 13, 'notification.method.email', 1),
('notification.type.topic', 0, 14, 'notification.method.email', 1),
('notification.type.topic', 0, 15, 'notification.method.email', 1),
('notification.type.topic', 0, 16, 'notification.method.email', 1),
('notification.type.topic', 0, 17, 'notification.method.email', 1),
('notification.type.topic', 0, 18, 'notification.method.email', 1),
('notification.type.topic', 0, 19, 'notification.method.email', 1),
('notification.type.topic', 0, 20, 'notification.method.email', 1),
('notification.type.topic', 0, 21, 'notification.method.email', 1),
('notification.type.topic', 0, 22, 'notification.method.email', 1),
('notification.type.topic', 0, 23, 'notification.method.email', 1),
('notification.type.topic', 0, 24, 'notification.method.email', 1),
('notification.type.topic', 0, 25, 'notification.method.email', 1),
('notification.type.topic', 0, 26, 'notification.method.email', 1),
('notification.type.topic', 0, 27, 'notification.method.email', 1),
('notification.type.topic', 0, 28, 'notification.method.email', 1),
('notification.type.topic', 0, 29, 'notification.method.email', 1),
('notification.type.topic', 0, 30, 'notification.method.email', 1),
('notification.type.topic', 0, 31, 'notification.method.email', 1),
('notification.type.topic', 0, 32, 'notification.method.email', 1),
('notification.type.topic', 0, 33, 'notification.method.email', 1),
('notification.type.topic', 0, 34, 'notification.method.email', 1),
('notification.type.topic', 0, 35, 'notification.method.email', 1),
('notification.type.topic', 0, 36, 'notification.method.email', 1),
('notification.type.topic', 0, 37, 'notification.method.email', 1),
('notification.type.topic', 0, 38, 'notification.method.email', 1),
('notification.type.topic', 0, 39, 'notification.method.email', 1),
('notification.type.topic', 0, 40, 'notification.method.email', 1),
('notification.type.topic', 0, 41, 'notification.method.email', 1),
('notification.type.topic', 0, 42, 'notification.method.email', 1),
('notification.type.topic', 0, 43, 'notification.method.email', 1),
('notification.type.topic', 0, 44, 'notification.method.email', 1),
('notification.type.topic', 0, 45, 'notification.method.email', 1),
('notification.type.topic', 0, 46, 'notification.method.email', 1),
('notification.type.topic', 0, 47, 'notification.method.email', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_warnings`
--

CREATE TABLE `forum_warnings` (
  `warning_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `warning_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_words`
--

CREATE TABLE `forum_words` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `forum_zebra`
--

CREATE TABLE `forum_zebra` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `zebra_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `friend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `foe` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `forum_acl_groups`
--
ALTER TABLE `forum_acl_groups`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `auth_opt_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indeksy dla tabeli `forum_acl_options`
--
ALTER TABLE `forum_acl_options`
  ADD PRIMARY KEY (`auth_option_id`),
  ADD UNIQUE KEY `auth_option` (`auth_option`);

--
-- Indeksy dla tabeli `forum_acl_roles`
--
ALTER TABLE `forum_acl_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_type` (`role_type`),
  ADD KEY `role_order` (`role_order`);

--
-- Indeksy dla tabeli `forum_acl_roles_data`
--
ALTER TABLE `forum_acl_roles_data`
  ADD PRIMARY KEY (`role_id`,`auth_option_id`),
  ADD KEY `ath_op_id` (`auth_option_id`);

--
-- Indeksy dla tabeli `forum_acl_users`
--
ALTER TABLE `forum_acl_users`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `auth_option_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indeksy dla tabeli `forum_attachments`
--
ALTER TABLE `forum_attachments`
  ADD PRIMARY KEY (`attach_id`),
  ADD KEY `filetime` (`filetime`),
  ADD KEY `post_msg_id` (`post_msg_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `is_orphan` (`is_orphan`);

--
-- Indeksy dla tabeli `forum_banlist`
--
ALTER TABLE `forum_banlist`
  ADD PRIMARY KEY (`ban_id`),
  ADD KEY `ban_end` (`ban_end`),
  ADD KEY `ban_user` (`ban_userid`,`ban_exclude`),
  ADD KEY `ban_email` (`ban_email`,`ban_exclude`),
  ADD KEY `ban_ip` (`ban_ip`,`ban_exclude`);

--
-- Indeksy dla tabeli `forum_bbcodes`
--
ALTER TABLE `forum_bbcodes`
  ADD PRIMARY KEY (`bbcode_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indeksy dla tabeli `forum_bookmarks`
--
ALTER TABLE `forum_bookmarks`
  ADD PRIMARY KEY (`topic_id`,`user_id`);

--
-- Indeksy dla tabeli `forum_bots`
--
ALTER TABLE `forum_bots`
  ADD PRIMARY KEY (`bot_id`),
  ADD KEY `bot_active` (`bot_active`);

--
-- Indeksy dla tabeli `forum_config`
--
ALTER TABLE `forum_config`
  ADD PRIMARY KEY (`config_name`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indeksy dla tabeli `forum_config_text`
--
ALTER TABLE `forum_config_text`
  ADD PRIMARY KEY (`config_name`);

--
-- Indeksy dla tabeli `forum_confirm`
--
ALTER TABLE `forum_confirm`
  ADD PRIMARY KEY (`session_id`,`confirm_id`),
  ADD KEY `confirm_type` (`confirm_type`);

--
-- Indeksy dla tabeli `forum_disallow`
--
ALTER TABLE `forum_disallow`
  ADD PRIMARY KEY (`disallow_id`);

--
-- Indeksy dla tabeli `forum_drafts`
--
ALTER TABLE `forum_drafts`
  ADD PRIMARY KEY (`draft_id`),
  ADD KEY `save_time` (`save_time`);

--
-- Indeksy dla tabeli `forum_ext`
--
ALTER TABLE `forum_ext`
  ADD UNIQUE KEY `ext_name` (`ext_name`);

--
-- Indeksy dla tabeli `forum_extensions`
--
ALTER TABLE `forum_extensions`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indeksy dla tabeli `forum_extension_groups`
--
ALTER TABLE `forum_extension_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indeksy dla tabeli `forum_forums`
--
ALTER TABLE `forum_forums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `forum_lastpost_id` (`forum_last_post_id`);

--
-- Indeksy dla tabeli `forum_forums_access`
--
ALTER TABLE `forum_forums_access`
  ADD PRIMARY KEY (`forum_id`,`user_id`,`session_id`);

--
-- Indeksy dla tabeli `forum_forums_track`
--
ALTER TABLE `forum_forums_track`
  ADD PRIMARY KEY (`user_id`,`forum_id`);

--
-- Indeksy dla tabeli `forum_forums_watch`
--
ALTER TABLE `forum_forums_watch`
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indeksy dla tabeli `forum_groups`
--
ALTER TABLE `forum_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `group_legend_name` (`group_legend`,`group_name`);

--
-- Indeksy dla tabeli `forum_icons`
--
ALTER TABLE `forum_icons`
  ADD PRIMARY KEY (`icons_id`),
  ADD KEY `display_on_posting` (`display_on_posting`);

--
-- Indeksy dla tabeli `forum_lang`
--
ALTER TABLE `forum_lang`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_iso` (`lang_iso`);

--
-- Indeksy dla tabeli `forum_log`
--
ALTER TABLE `forum_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `reportee_id` (`reportee_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `log_time` (`log_time`);

--
-- Indeksy dla tabeli `forum_login_attempts`
--
ALTER TABLE `forum_login_attempts`
  ADD KEY `att_ip` (`attempt_ip`,`attempt_time`),
  ADD KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  ADD KEY `att_time` (`attempt_time`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `forum_migrations`
--
ALTER TABLE `forum_migrations`
  ADD PRIMARY KEY (`migration_name`);

--
-- Indeksy dla tabeli `forum_moderator_cache`
--
ALTER TABLE `forum_moderator_cache`
  ADD KEY `disp_idx` (`display_on_index`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indeksy dla tabeli `forum_modules`
--
ALTER TABLE `forum_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `module_enabled` (`module_enabled`),
  ADD KEY `class_left_id` (`module_class`,`left_id`);

--
-- Indeksy dla tabeli `forum_notifications`
--
ALTER TABLE `forum_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `item_ident` (`notification_type_id`,`item_id`),
  ADD KEY `user` (`user_id`,`notification_read`);

--
-- Indeksy dla tabeli `forum_notification_types`
--
ALTER TABLE `forum_notification_types`
  ADD PRIMARY KEY (`notification_type_id`),
  ADD UNIQUE KEY `type` (`notification_type_name`);

--
-- Indeksy dla tabeli `forum_oauth_accounts`
--
ALTER TABLE `forum_oauth_accounts`
  ADD PRIMARY KEY (`user_id`,`provider`);

--
-- Indeksy dla tabeli `forum_oauth_states`
--
ALTER TABLE `forum_oauth_states`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Indeksy dla tabeli `forum_oauth_tokens`
--
ALTER TABLE `forum_oauth_tokens`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Indeksy dla tabeli `forum_poll_options`
--
ALTER TABLE `forum_poll_options`
  ADD KEY `poll_opt_id` (`poll_option_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indeksy dla tabeli `forum_poll_votes`
--
ALTER TABLE `forum_poll_votes`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `vote_user_id` (`vote_user_id`),
  ADD KEY `vote_user_ip` (`vote_user_ip`);

--
-- Indeksy dla tabeli `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_ip` (`poster_ip`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `tid_post_time` (`topic_id`,`post_time`),
  ADD KEY `post_username` (`post_username`),
  ADD KEY `post_visibility` (`post_visibility`);

--
-- Indeksy dla tabeli `forum_privmsgs`
--
ALTER TABLE `forum_privmsgs`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `author_ip` (`author_ip`),
  ADD KEY `message_time` (`message_time`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `root_level` (`root_level`);

--
-- Indeksy dla tabeli `forum_privmsgs_folder`
--
ALTER TABLE `forum_privmsgs_folder`
  ADD PRIMARY KEY (`folder_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `forum_privmsgs_rules`
--
ALTER TABLE `forum_privmsgs_rules`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `forum_privmsgs_to`
--
ALTER TABLE `forum_privmsgs_to`
  ADD KEY `msg_id` (`msg_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `usr_flder_id` (`user_id`,`folder_id`);

--
-- Indeksy dla tabeli `forum_profile_fields`
--
ALTER TABLE `forum_profile_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `fld_type` (`field_type`),
  ADD KEY `fld_ordr` (`field_order`);

--
-- Indeksy dla tabeli `forum_profile_fields_data`
--
ALTER TABLE `forum_profile_fields_data`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeksy dla tabeli `forum_profile_fields_lang`
--
ALTER TABLE `forum_profile_fields_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`,`option_id`);

--
-- Indeksy dla tabeli `forum_profile_lang`
--
ALTER TABLE `forum_profile_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`);

--
-- Indeksy dla tabeli `forum_ranks`
--
ALTER TABLE `forum_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indeksy dla tabeli `forum_reports`
--
ALTER TABLE `forum_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `pm_id` (`pm_id`);

--
-- Indeksy dla tabeli `forum_reports_reasons`
--
ALTER TABLE `forum_reports_reasons`
  ADD PRIMARY KEY (`reason_id`);

--
-- Indeksy dla tabeli `forum_search_results`
--
ALTER TABLE `forum_search_results`
  ADD PRIMARY KEY (`search_key`);

--
-- Indeksy dla tabeli `forum_search_wordlist`
--
ALTER TABLE `forum_search_wordlist`
  ADD PRIMARY KEY (`word_id`),
  ADD UNIQUE KEY `wrd_txt` (`word_text`),
  ADD KEY `wrd_cnt` (`word_count`);

--
-- Indeksy dla tabeli `forum_search_wordmatch`
--
ALTER TABLE `forum_search_wordmatch`
  ADD UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indeksy dla tabeli `forum_sessions`
--
ALTER TABLE `forum_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_time` (`session_time`),
  ADD KEY `session_user_id` (`session_user_id`),
  ADD KEY `session_fid` (`session_forum_id`);

--
-- Indeksy dla tabeli `forum_sessions_keys`
--
ALTER TABLE `forum_sessions_keys`
  ADD PRIMARY KEY (`key_id`,`user_id`),
  ADD KEY `last_login` (`last_login`);

--
-- Indeksy dla tabeli `forum_sitelist`
--
ALTER TABLE `forum_sitelist`
  ADD PRIMARY KEY (`site_id`);

--
-- Indeksy dla tabeli `forum_smilies`
--
ALTER TABLE `forum_smilies`
  ADD PRIMARY KEY (`smiley_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indeksy dla tabeli `forum_sm_blocks`
--
ALTER TABLE `forum_sm_blocks`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `style` (`style`);

--
-- Indeksy dla tabeli `forum_sm_block_routes`
--
ALTER TABLE `forum_sm_block_routes`
  ADD PRIMARY KEY (`route_id`);

--
-- Indeksy dla tabeli `forum_sm_cblocks`
--
ALTER TABLE `forum_sm_cblocks`
  ADD PRIMARY KEY (`block_id`);

--
-- Indeksy dla tabeli `forum_sm_menus`
--
ALTER TABLE `forum_sm_menus`
  ADD PRIMARY KEY (`menu_id`),
  ADD UNIQUE KEY `menu_name` (`menu_name`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeksy dla tabeli `forum_sm_menu_items`
--
ALTER TABLE `forum_sm_menu_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeksy dla tabeli `forum_styles`
--
ALTER TABLE `forum_styles`
  ADD PRIMARY KEY (`style_id`),
  ADD UNIQUE KEY `style_name` (`style_name`);

--
-- Indeksy dla tabeli `forum_teampage`
--
ALTER TABLE `forum_teampage`
  ADD PRIMARY KEY (`teampage_id`);

--
-- Indeksy dla tabeli `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `forum_id_type` (`forum_id`,`topic_type`),
  ADD KEY `last_post_time` (`topic_last_post_time`),
  ADD KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  ADD KEY `topic_visibility` (`topic_visibility`),
  ADD KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`),
  ADD KEY `latest_topics` (`forum_id`,`topic_last_post_time`,`topic_last_post_id`,`topic_moved_id`);

--
-- Indeksy dla tabeli `forum_topics_posted`
--
ALTER TABLE `forum_topics_posted`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Indeksy dla tabeli `forum_topics_track`
--
ALTER TABLE `forum_topics_track`
  ADD PRIMARY KEY (`user_id`,`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indeksy dla tabeli `forum_topics_watch`
--
ALTER TABLE `forum_topics_watch`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indeksy dla tabeli `forum_users`
--
ALTER TABLE `forum_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_clean` (`username_clean`),
  ADD KEY `user_birthday` (`user_birthday`),
  ADD KEY `user_email_hash` (`user_email_hash`),
  ADD KEY `user_type` (`user_type`);

--
-- Indeksy dla tabeli `forum_user_group`
--
ALTER TABLE `forum_user_group`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_leader` (`group_leader`);

--
-- Indeksy dla tabeli `forum_user_notifications`
--
ALTER TABLE `forum_user_notifications`
  ADD UNIQUE KEY `itm_usr_mthd` (`item_type`,`item_id`,`user_id`,`method`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `uid_itm_id` (`user_id`,`item_id`),
  ADD KEY `usr_itm_tpe` (`user_id`,`item_type`,`item_id`);

--
-- Indeksy dla tabeli `forum_warnings`
--
ALTER TABLE `forum_warnings`
  ADD PRIMARY KEY (`warning_id`);

--
-- Indeksy dla tabeli `forum_words`
--
ALTER TABLE `forum_words`
  ADD PRIMARY KEY (`word_id`);

--
-- Indeksy dla tabeli `forum_zebra`
--
ALTER TABLE `forum_zebra`
  ADD PRIMARY KEY (`user_id`,`zebra_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `forum_acl_options`
--
ALTER TABLE `forum_acl_options`
  MODIFY `auth_option_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT dla tabeli `forum_acl_roles`
--
ALTER TABLE `forum_acl_roles`
  MODIFY `role_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `forum_attachments`
--
ALTER TABLE `forum_attachments`
  MODIFY `attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_banlist`
--
ALTER TABLE `forum_banlist`
  MODIFY `ban_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_bots`
--
ALTER TABLE `forum_bots`
  MODIFY `bot_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT dla tabeli `forum_disallow`
--
ALTER TABLE `forum_disallow`
  MODIFY `disallow_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_drafts`
--
ALTER TABLE `forum_drafts`
  MODIFY `draft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_extensions`
--
ALTER TABLE `forum_extensions`
  MODIFY `extension_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT dla tabeli `forum_extension_groups`
--
ALTER TABLE `forum_extension_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `forum_forums`
--
ALTER TABLE `forum_forums`
  MODIFY `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `forum_groups`
--
ALTER TABLE `forum_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `forum_icons`
--
ALTER TABLE `forum_icons`
  MODIFY `icons_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `forum_lang`
--
ALTER TABLE `forum_lang`
  MODIFY `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `forum_log`
--
ALTER TABLE `forum_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT dla tabeli `forum_modules`
--
ALTER TABLE `forum_modules`
  MODIFY `module_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT dla tabeli `forum_notifications`
--
ALTER TABLE `forum_notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_notification_types`
--
ALTER TABLE `forum_notification_types`
  MODIFY `notification_type_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `forum_privmsgs`
--
ALTER TABLE `forum_privmsgs`
  MODIFY `msg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_privmsgs_folder`
--
ALTER TABLE `forum_privmsgs_folder`
  MODIFY `folder_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_privmsgs_rules`
--
ALTER TABLE `forum_privmsgs_rules`
  MODIFY `rule_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_profile_fields`
--
ALTER TABLE `forum_profile_fields`
  MODIFY `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `forum_ranks`
--
ALTER TABLE `forum_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `forum_reports`
--
ALTER TABLE `forum_reports`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_reports_reasons`
--
ALTER TABLE `forum_reports_reasons`
  MODIFY `reason_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `forum_search_wordlist`
--
ALTER TABLE `forum_search_wordlist`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT dla tabeli `forum_sitelist`
--
ALTER TABLE `forum_sitelist`
  MODIFY `site_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_smilies`
--
ALTER TABLE `forum_smilies`
  MODIFY `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT dla tabeli `forum_sm_blocks`
--
ALTER TABLE `forum_sm_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `forum_sm_block_routes`
--
ALTER TABLE `forum_sm_block_routes`
  MODIFY `route_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `forum_sm_cblocks`
--
ALTER TABLE `forum_sm_cblocks`
  MODIFY `block_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_sm_menus`
--
ALTER TABLE `forum_sm_menus`
  MODIFY `menu_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `forum_sm_menu_items`
--
ALTER TABLE `forum_sm_menu_items`
  MODIFY `item_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `forum_styles`
--
ALTER TABLE `forum_styles`
  MODIFY `style_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `forum_teampage`
--
ALTER TABLE `forum_teampage`
  MODIFY `teampage_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `topic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `forum_users`
--
ALTER TABLE `forum_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT dla tabeli `forum_warnings`
--
ALTER TABLE `forum_warnings`
  MODIFY `warning_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forum_words`
--
ALTER TABLE `forum_words`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
