-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 03:35 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1563452069');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-07-08 06:20:45', '2019-07-08 06:20:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'trash', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/dhruvil/wp/wp_learn', 'yes'),
(2, 'home', 'http://localhost/dhruvil/wp/wp_learn', 'yes'),
(3, 'blogname', 'wp_demo', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'chauhan9727@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '20', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:8:\"event/?$\";s:25:\"index.php?post_type=event\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"event_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event_type=$matches[1]&feed=$matches[2]\";s:46:\"event_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event_type=$matches[1]&feed=$matches[2]\";s:27:\"event_type/([^/]+)/embed/?$\";s:43:\"index.php?event_type=$matches[1]&embed=true\";s:39:\"event_type/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?event_type=$matches[1]&paged=$matches[2]\";s:21:\"event_type/([^/]+)/?$\";s:32:\"index.php?event_type=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:1;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:71:\"C:\\xampp\\htdocs\\dhruvil\\wp\\wp_learn/wp-content/themes/dhruvil/style.css\";i:2;s:75:\"C:\\xampp\\htdocs\\dhruvil\\wp\\wp_learn/wp-content/themes/dhruvil/functions.php\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'dhruvil', 'yes'),
(41, 'stylesheet', 'dhruvil', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '297', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"primary\";a:1:{i:0;s:14:\"event_widget-2\";}s:7:\"footer1\";a:1:{i:0;s:13:\"media_image-2\";}s:7:\"footer2\";a:1:{i:0;s:7:\"pages-2\";}s:7:\"footer3\";a:2:{i:0;s:13:\"custom_html-2\";i:1;s:15:\"social_widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:7:{i:1563891647;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1563906047;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1563906048;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1563949247;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1563949255;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1563949257;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:2:{i:2;a:15:{s:4:\"size\";s:6:\"custom\";s:5:\"width\";i:200;s:6:\"height\";i:54;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:37:\"http://localhost/dhruvil/wp/wp_learn/\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:15;s:3:\"url\";s:79:\"http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo-300x82.png\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:15:\"Contact Details\";s:7:\"content\";s:222:\"<form class=\"contact-form\" style=\"font-size=15px; color:#000; font-weight:700;\">\r\n	<div>\r\n		<label>Contact_No:</label>\r\n		1234567899	\r\n	</div>\r\n	<div>\r\n		<label>Email Id:</label>\r\n		1243sada@gmail.com	\r\n	</div>\r\n	\r\n</form>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:1:{s:22:\"w7VlB2py6yYbpIqrfFqorQ\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BDlFolHAdIDIlQuCh3QMfHfIa8XuAd.\";s:10:\"created_at\";i:1563859643;}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1563862849;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(115, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563255277;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1563857228;s:7:\"checked\";a:4:{s:7:\"dhruvil\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'Dhruvil', 'yes'),
(140, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563255178;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(178, 'theme_mods_dhruvil', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(179, 'widget_wpb_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(180, 'widget_social_widget', 'a:2:{i:2;a:6:{s:5:\"title\";s:0:\"\";s:8:\"facebook\";s:24:\"https://www.facebook.com\";s:9:\"instagram\";s:25:\"https://www.instagram.com\";s:7:\"youtube\";s:23:\"https://www.youtube.com\";s:8:\"linkedIn\";s:24:\"https://www.linkedin.com\";s:7:\"icon_ui\";s:7:\"rounded\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(181, 'widget_hours_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(186, 'recently_activated', 'a:0:{}', 'yes'),
(187, 'category_children', 'a:0:{}', 'yes'),
(190, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:5;}}', 'yes'),
(195, 'recovery_mode_email_last_sent', '1563859643', 'yes'),
(218, 'event_type_children', 'a:0:{}', 'yes'),
(251, '_site_transient_timeout_browser_3112a0b665e8abab58bc13ec209ed821', '1564034393', 'no'),
(252, '_site_transient_browser_3112a0b665e8abab58bc13ec209ed821', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.142\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(279, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1563857228;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.1\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(297, 'widget_event_widget', 'a:2:{i:2;a:4:{s:5:\"title\";s:10:\"Event List\";s:5:\"count\";s:1:\"6\";s:5:\"order\";s:4:\"DESC\";s:14:\"show_thumbnail\";s:14:\"show_thumbnail\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(335, '_site_transient_timeout_theme_roots', '1563864649', 'no'),
(336, '_site_transient_theme_roots', 'a:4:{s:7:\"dhruvil\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(29, 1, '_edit_lock', '1563266249:1'),
(30, 15, '_wp_attached_file', '2019/07/logo.png'),
(31, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1724;s:6:\"height\";i:469;s:4:\"file\";s:16:\"2019/07/logo.png\";s:5:\"sizes\";a:5:{s:7:\"300X250\";a:4:{s:4:\"file\";s:16:\"logo-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x82.png\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"logo-768x209.png\";s:5:\"width\";i:768;s:6:\"height\";i:209;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"logo-1024x279.png\";s:5:\"width\";i:1024;s:6:\"height\";i:279;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 19, '_wp_attached_file', '2019/07/download5.jpg'),
(35, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:21:\"2019/07/download5.jpg\";s:5:\"sizes\";a:2:{s:7:\"300X250\";a:4:{s:4:\"file\";s:21:\"download5-225x200.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"download5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 20, '_wp_attached_file', '2019/07/cropped-download5.jpg'),
(37, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:190;s:6:\"height\";i:190;s:4:\"file\";s:29:\"2019/07/cropped-download5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-download5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 20, '_wp_attachment_context', 'custom-logo'),
(39, 27, '_wp_attached_file', '2019/07/cropped-download5-1.jpg'),
(40, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:190;s:6:\"height\";i:190;s:4:\"file\";s:31:\"2019/07/cropped-download5-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-download5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 27, '_wp_attachment_context', 'custom-logo'),
(42, 29, '_wp_attached_file', '2019/07/bg.jpg'),
(43, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1028;s:4:\"file\";s:14:\"2019/07/bg.jpg\";s:5:\"sizes\";a:5:{s:7:\"300X250\";a:4:{s:4:\"file\";s:14:\"bg-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x386.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:386;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x514.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 30, '_wp_attached_file', '2019/07/img1.jpg'),
(45, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:258;s:6:\"height\";i:195;s:4:\"file\";s:16:\"2019/07/img1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 31, '_wp_attached_file', '2019/07/img2.jpg'),
(47, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:218;s:6:\"height\";i:231;s:4:\"file\";s:16:\"2019/07/img2.jpg\";s:5:\"sizes\";a:2:{s:7:\"300X250\";a:4:{s:4:\"file\";s:16:\"img2-218x200.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 32, '_wp_attached_file', '2019/07/img3.jpg'),
(49, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:16:\"2019/07/img3.jpg\";s:5:\"sizes\";a:5:{s:7:\"300X250\";a:4:{s:4:\"file\";s:16:\"img3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"img3-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"img3-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 33, '_wp_attached_file', '2019/07/img4.jpg'),
(51, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:281;s:6:\"height\";i:180;s:4:\"file\";s:16:\"2019/07/img4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 34, '_wp_attached_file', '2019/07/img5.jpg'),
(53, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:284;s:6:\"height\";i:177;s:4:\"file\";s:16:\"2019/07/img5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 35, '_wp_attached_file', '2019/07/img6.jpg'),
(55, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:16:\"2019/07/img6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img6-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"300X250\";a:4:{s:4:\"file\";s:16:\"img6-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 36, '_wp_attached_file', '2019/07/L-1.png'),
(57, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:504;s:6:\"height\";i:360;s:4:\"file\";s:15:\"2019/07/L-1.png\";s:5:\"sizes\";a:3:{s:7:\"300X250\";a:4:{s:4:\"file\";s:15:\"L-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"L-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"L-1-300x214.png\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 37, '_wp_attached_file', '2019/07/logo.jpg'),
(59, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1001;s:4:\"file\";s:16:\"2019/07/logo.jpg\";s:5:\"sizes\";a:5:{s:7:\"300X250\";a:4:{s:4:\"file\";s:16:\"logo-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"logo-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"logo-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(60, 38, '_wp_attached_file', '2019/07/logo1.jpg'),
(61, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2019/07/logo1.jpg\";s:5:\"sizes\";a:5:{s:7:\"300X250\";a:4:{s:4:\"file\";s:17:\"logo1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"logo1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"logo1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 39, '_wp_attached_file', '2019/07/logo1.png'),
(63, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:17:\"2019/07/logo1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo1-300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"300X250\";a:4:{s:4:\"file\";s:17:\"logo1-300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 40, '_wp_attached_file', '2019/07/logo2.png'),
(65, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:17:\"2019/07/logo2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo2-300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"300X250\";a:4:{s:4:\"file\";s:17:\"logo2-300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 41, '_wp_attached_file', '2019/07/logo3.jpg'),
(67, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:17:\"2019/07/logo3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo3-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"300X250\";a:4:{s:4:\"file\";s:17:\"logo3-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 42, '_wp_attached_file', '2019/07/logo4.png'),
(69, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:273;s:6:\"height\";i:184;s:4:\"file\";s:17:\"2019/07/logo4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 42, '_edit_last', '1'),
(71, 43, '_wp_attached_file', '2019/07/logo5.jpg'),
(72, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:17:\"2019/07/logo5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo5-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"300X250\";a:4:{s:4:\"file\";s:17:\"logo5-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 44, '_wp_attached_file', '2019/07/tab1.jpg'),
(74, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:168;s:4:\"file\";s:16:\"2019/07/tab1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"tab1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 45, '_wp_attached_file', '2019/07/tab2.jpg'),
(76, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:189;s:6:\"height\";i:267;s:4:\"file\";s:16:\"2019/07/tab2.jpg\";s:5:\"sizes\";a:2:{s:7:\"300X250\";a:4:{s:4:\"file\";s:16:\"tab2-189x200.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"tab2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 46, '_wp_page_template', 'default'),
(78, 46, '_edit_last', '1'),
(80, 48, '_wp_attached_file', '2019/07/logo-1.png'),
(81, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:527;s:4:\"file\";s:18:\"2019/07/logo-1.png\";s:5:\"sizes\";a:4:{s:7:\"300X250\";a:4:{s:4:\"file\";s:18:\"logo-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo-1-300x158.png\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-1-768x405.png\";s:5:\"width\";i:768;s:6:\"height\";i:405;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 84, '_edit_last', '1'),
(83, 119, '_menu_item_type', 'post_type'),
(84, 119, '_menu_item_menu_item_parent', '0'),
(85, 119, '_menu_item_object_id', '46'),
(86, 119, '_menu_item_object', 'page'),
(87, 119, '_menu_item_target', ''),
(88, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 119, '_menu_item_xfn', ''),
(90, 119, '_menu_item_url', ''),
(99, 121, '_menu_item_type', 'post_type'),
(100, 121, '_menu_item_menu_item_parent', '0'),
(101, 121, '_menu_item_object_id', '84'),
(102, 121, '_menu_item_object', 'page'),
(103, 121, '_menu_item_target', ''),
(104, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 121, '_menu_item_xfn', ''),
(106, 121, '_menu_item_url', ''),
(115, 123, '_menu_item_type', 'post_type'),
(116, 123, '_menu_item_menu_item_parent', '121'),
(117, 123, '_menu_item_object_id', '84'),
(118, 123, '_menu_item_object', 'page'),
(119, 123, '_menu_item_target', ''),
(120, 123, '_menu_item_classes', 'a:1:{i:0;s:9:\"collapsed\";}'),
(121, 123, '_menu_item_xfn', ''),
(122, 123, '_menu_item_url', ''),
(123, 124, '_menu_item_type', 'post_type'),
(124, 124, '_menu_item_menu_item_parent', '121'),
(125, 124, '_menu_item_object_id', '84'),
(126, 124, '_menu_item_object', 'page'),
(127, 124, '_menu_item_target', ''),
(128, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 124, '_menu_item_xfn', ''),
(130, 124, '_menu_item_url', ''),
(131, 125, '_menu_item_type', 'post_type'),
(132, 125, '_menu_item_menu_item_parent', '123'),
(133, 125, '_menu_item_object_id', '84'),
(134, 125, '_menu_item_object', 'page'),
(135, 125, '_menu_item_target', ''),
(136, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 125, '_menu_item_xfn', ''),
(138, 125, '_menu_item_url', ''),
(139, 132, '_menu_item_type', 'post_type'),
(140, 132, '_menu_item_menu_item_parent', '123'),
(141, 132, '_menu_item_object_id', '131'),
(142, 132, '_menu_item_object', 'page'),
(143, 132, '_menu_item_target', ''),
(144, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 132, '_menu_item_xfn', ''),
(146, 132, '_menu_item_url', ''),
(147, 143, '_menu_item_type', 'post_type'),
(148, 143, '_menu_item_menu_item_parent', '121'),
(149, 143, '_menu_item_object_id', '142'),
(150, 143, '_menu_item_object', 'page'),
(151, 143, '_menu_item_target', ''),
(152, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(153, 143, '_menu_item_xfn', ''),
(154, 143, '_menu_item_url', ''),
(155, 145, '_wp_attached_file', '2019/07/logo-1-1.png'),
(156, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1724;s:6:\"height\";i:469;s:4:\"file\";s:20:\"2019/07/logo-1-1.png\";s:5:\"sizes\";a:5:{s:7:\"300X250\";a:4:{s:4:\"file\";s:20:\"logo-1-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"logo-1-1-300x82.png\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"logo-1-1-768x209.png\";s:5:\"width\";i:768;s:6:\"height\";i:209;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"logo-1-1-1024x279.png\";s:5:\"width\";i:1024;s:6:\"height\";i:279;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 46, '_edit_lock', '1563255934:1'),
(163, 3, '_edit_lock', '1563262494:1'),
(164, 147, '_menu_item_type', 'post_type'),
(165, 147, '_menu_item_menu_item_parent', '0'),
(166, 147, '_menu_item_object_id', '3'),
(167, 147, '_menu_item_object', 'page'),
(168, 147, '_menu_item_target', ''),
(169, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 147, '_menu_item_xfn', ''),
(171, 147, '_menu_item_url', ''),
(175, 84, '_edit_lock', '1563269999:1'),
(190, 160, '_edit_lock', '1563888735:1'),
(191, 160, '_edit_last', '1'),
(192, 160, '_thumbnail_id', '162'),
(193, 162, '_wp_attached_file', '2019/07/cricket.jpg'),
(194, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:288;s:6:\"height\";i:175;s:4:\"file\";s:19:\"2019/07/cricket.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"cricket-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 164, '_wp_attached_file', '2019/07/football.jpg'),
(198, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:452;s:6:\"height\";i:111;s:4:\"file\";s:20:\"2019/07/football.jpg\";s:5:\"sizes\";a:3:{s:7:\"300X250\";a:4:{s:4:\"file\";s:20:\"football-300x111.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"football-150x111.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"football-300x74.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 118, '_edit_lock', '1563771487:1'),
(201, 118, '_edit_last', '1'),
(202, 167, '_wp_attached_file', '2019/07/Halloween-parties.jpg'),
(203, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:302;s:6:\"height\";i:167;s:4:\"file\";s:29:\"2019/07/Halloween-parties.jpg\";s:5:\"sizes\";a:3:{s:7:\"300X250\";a:4:{s:4:\"file\";s:29:\"Halloween-parties-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Halloween-parties-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Halloween-parties-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 166, '_edit_last', '1'),
(205, 166, '_thumbnail_id', '167'),
(206, 166, '_edit_lock', '1563773800:1'),
(207, 168, '_edit_last', '1'),
(208, 168, '_edit_lock', '1563773758:1'),
(209, 169, '_wp_attached_file', '2019/07/casino-nights.jpg'),
(210, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:286;s:6:\"height\";i:176;s:4:\"file\";s:25:\"2019/07/casino-nights.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"casino-nights-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 168, '_thumbnail_id', '169'),
(212, 170, '_edit_last', '1'),
(213, 170, '_edit_lock', '1563773716:1'),
(214, 171, '_wp_attached_file', '2019/07/Birthday-Party.jpg'),
(215, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:26:\"2019/07/Birthday-Party.jpg\";s:5:\"sizes\";a:2:{s:7:\"300X250\";a:4:{s:4:\"file\";s:26:\"Birthday-Party-225x200.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Birthday-Party-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 170, '_thumbnail_id', '171'),
(217, 172, '_edit_last', '1'),
(218, 172, '_edit_lock', '1563773678:1'),
(219, 173, '_wp_attached_file', '2019/07/Weddings.jpg'),
(220, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2019/07/Weddings.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Weddings-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 172, '_thumbnail_id', '173'),
(222, 174, '_edit_last', '1'),
(223, 174, '_edit_lock', '1563773616:1'),
(224, 175, '_wp_attached_file', '2019/07/Board-Meetings.jpg'),
(225, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:26:\"2019/07/Board-Meetings.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Board-Meetings-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 174, '_thumbnail_id', '175'),
(227, 176, '_edit_last', '1'),
(228, 176, '_edit_lock', '1563773569:1'),
(229, 177, '_wp_attached_file', '2019/07/Farewell-Party.jpg'),
(230, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:26:\"2019/07/Farewell-Party.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Farewell-Party-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(231, 176, '_thumbnail_id', '177'),
(232, 178, '_edit_last', '1'),
(233, 178, '_edit_lock', '1563773511:1'),
(234, 179, '_wp_attached_file', '2019/07/mobile-launching.jpg'),
(235, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:295;s:6:\"height\";i:171;s:4:\"file\";s:28:\"2019/07/mobile-launching.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"mobile-launching-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 178, '_thumbnail_id', '179'),
(237, 180, '_edit_last', '1'),
(238, 180, '_edit_lock', '1563773228:1'),
(239, 181, '_wp_attached_file', '2019/07/Drawing-Event.jpg'),
(240, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:25:\"2019/07/Drawing-Event.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Drawing-Event-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 180, '_thumbnail_id', '181'),
(251, 183, '_edit_last', '1'),
(252, 183, '_edit_lock', '1563773155:1'),
(253, 184, '_wp_attached_file', '2019/07/computer.jpg'),
(254, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:20:\"2019/07/computer.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"computer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(255, 183, '_thumbnail_id', '184'),
(256, 185, '_edit_last', '1'),
(257, 185, '_edit_lock', '1563772936:1'),
(258, 186, '_wp_attached_file', '2019/07/pc-gaming.jpg'),
(259, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:21:\"2019/07/pc-gaming.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pc-gaming-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pc-gaming-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"300X250\";a:4:{s:4:\"file\";s:21:\"pc-gaming-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 185, '_thumbnail_id', '186'),
(270, 190, '_edit_lock', '1563350232:1'),
(271, 191, '_menu_item_type', 'post_type'),
(272, 191, '_menu_item_menu_item_parent', '0'),
(273, 191, '_menu_item_object_id', '190'),
(274, 191, '_menu_item_object', 'page'),
(275, 191, '_menu_item_target', ''),
(276, 191, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(277, 191, '_menu_item_xfn', ''),
(278, 191, '_menu_item_url', ''),
(279, 190, '_edit_last', '1'),
(280, 193, '_menu_item_type', 'post_type'),
(281, 193, '_menu_item_menu_item_parent', '0'),
(282, 193, '_menu_item_object_id', '185'),
(283, 193, '_menu_item_object', 'event'),
(284, 193, '_menu_item_target', ''),
(285, 193, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 193, '_menu_item_xfn', ''),
(287, 193, '_menu_item_url', ''),
(288, 193, '_menu_item_orphaned', '1563342298'),
(289, 194, '_menu_item_type', 'taxonomy'),
(290, 194, '_menu_item_menu_item_parent', '191'),
(291, 194, '_menu_item_object_id', '6'),
(292, 194, '_menu_item_object', 'event_type'),
(293, 194, '_menu_item_target', ''),
(294, 194, '_menu_item_classes', 'a:1:{i:0;s:10:\"event-type\";}'),
(295, 194, '_menu_item_xfn', ''),
(296, 194, '_menu_item_url', ''),
(298, 195, '_menu_item_type', 'taxonomy'),
(299, 195, '_menu_item_menu_item_parent', '191'),
(300, 195, '_menu_item_object_id', '9'),
(301, 195, '_menu_item_object', 'event_type'),
(302, 195, '_menu_item_target', ''),
(303, 195, '_menu_item_classes', 'a:1:{i:0;s:10:\"event-type\";}'),
(304, 195, '_menu_item_xfn', ''),
(305, 195, '_menu_item_url', ''),
(307, 196, '_menu_item_type', 'taxonomy'),
(308, 196, '_menu_item_menu_item_parent', '191'),
(309, 196, '_menu_item_object_id', '8'),
(310, 196, '_menu_item_object', 'event_type'),
(311, 196, '_menu_item_target', ''),
(312, 196, '_menu_item_classes', 'a:1:{i:0;s:10:\"event-type\";}'),
(313, 196, '_menu_item_xfn', ''),
(314, 196, '_menu_item_url', ''),
(316, 197, '_menu_item_type', 'taxonomy'),
(317, 197, '_menu_item_menu_item_parent', '191'),
(318, 197, '_menu_item_object_id', '10'),
(319, 197, '_menu_item_object', 'event_type'),
(320, 197, '_menu_item_target', ''),
(321, 197, '_menu_item_classes', 'a:1:{i:0;s:10:\"event-type\";}'),
(322, 197, '_menu_item_xfn', ''),
(323, 197, '_menu_item_url', ''),
(325, 198, '_menu_item_type', 'taxonomy'),
(326, 198, '_menu_item_menu_item_parent', '191'),
(327, 198, '_menu_item_object_id', '12'),
(328, 198, '_menu_item_object', 'event_type'),
(329, 198, '_menu_item_target', ''),
(330, 198, '_menu_item_classes', 'a:1:{i:0;s:10:\"event-type\";}'),
(331, 198, '_menu_item_xfn', ''),
(332, 198, '_menu_item_url', ''),
(334, 199, '_menu_item_type', 'taxonomy'),
(335, 199, '_menu_item_menu_item_parent', '191'),
(336, 199, '_menu_item_object_id', '7'),
(337, 199, '_menu_item_object', 'event_type'),
(338, 199, '_menu_item_target', ''),
(339, 199, '_menu_item_classes', 'a:1:{i:0;s:10:\"event-type\";}'),
(340, 199, '_menu_item_xfn', ''),
(341, 199, '_menu_item_url', ''),
(343, 200, '_menu_item_type', 'taxonomy'),
(344, 200, '_menu_item_menu_item_parent', '191'),
(345, 200, '_menu_item_object_id', '11'),
(346, 200, '_menu_item_object', 'event_type'),
(347, 200, '_menu_item_target', ''),
(348, 200, '_menu_item_classes', 'a:1:{i:0;s:10:\"event-type\";}'),
(349, 200, '_menu_item_xfn', ''),
(350, 200, '_menu_item_url', ''),
(484, 220, '_edit_last', '1'),
(485, 220, '_edit_lock', '1563861167:1'),
(486, 220, '_thumbnail_id', '164'),
(490, 276, '_menu_item_type', 'post_type'),
(491, 276, '_menu_item_menu_item_parent', '0'),
(492, 276, '_menu_item_object_id', '118'),
(493, 276, '_menu_item_object', 'page'),
(494, 276, '_menu_item_target', ''),
(495, 276, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(496, 276, '_menu_item_xfn', ''),
(497, 276, '_menu_item_url', ''),
(499, 295, '_wp_attached_file', '2019/07/cropped-logo.png'),
(500, 295, '_wp_attachment_context', 'site-icon'),
(501, 295, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2019/07/cropped-logo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(502, 296, '_wp_trash_meta_status', 'publish'),
(503, 296, '_wp_trash_meta_time', '1563456547'),
(504, 297, '_wp_attached_file', '2019/07/cropped-logo-1.png'),
(505, 297, '_wp_attachment_context', 'site-icon'),
(506, 297, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2019/07/cropped-logo-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(507, 298, '_wp_trash_meta_status', 'publish'),
(508, 298, '_wp_trash_meta_time', '1563456635'),
(509, 307, '_edit_lock', '1563535497:1'),
(510, 308, '_edit_lock', '1563535602:1'),
(511, 309, '_edit_lock', '1563535673:1'),
(512, 118, '_wp_page_template', ''),
(513, 310, '_edit_lock', '1563771539:1'),
(514, 311, '_menu_item_type', 'post_type'),
(515, 311, '_menu_item_menu_item_parent', '0'),
(516, 311, '_menu_item_object_id', '310'),
(517, 311, '_menu_item_object', 'page'),
(518, 311, '_menu_item_target', ''),
(519, 311, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(520, 311, '_menu_item_xfn', ''),
(521, 311, '_menu_item_url', ''),
(522, 310, '_wp_page_template', 'page-about.php'),
(523, 310, '_edit_last', '1'),
(524, 220, 'start_time', '5:00 PM'),
(527, 185, 'location', 'Delhi'),
(528, 185, 'start_date', '5-8-2019'),
(529, 185, 'start_time', '8:00 AM'),
(530, 183, 'location', 'Mumbai'),
(531, 183, 'start_date', '8-10-2019'),
(532, 183, 'start_time', '9:30 AM'),
(533, 180, 'location', 'Ahmedabad'),
(534, 180, 'start_date', '12-9-2019'),
(535, 180, 'start_time', '12:00 PM'),
(536, 178, 'location', 'Rajkot'),
(537, 178, 'start_date', '05-12-2019'),
(538, 178, 'start_time', '02:00 PM'),
(539, 176, 'location', 'Ahmedabad'),
(540, 176, 'start_date', '07-08-2019'),
(541, 176, 'start_time', '10:00 AM'),
(542, 174, 'location', 'Mumbai'),
(543, 174, 'start_date', '05-07-2019'),
(544, 174, 'start_time', '04:00 PM'),
(545, 172, 'location', 'Delhi'),
(546, 172, 'start_date', '08-08-2019'),
(547, 172, 'start_time', '06:00 PM'),
(548, 170, 'location', 'Kolkata'),
(549, 170, 'start_date', '07-09-2019'),
(550, 170, 'start_time', '09:00 PM'),
(551, 168, 'location', 'Goa'),
(552, 168, 'start_date', '12-08-2019'),
(553, 168, 'start_time', '11:00 PM'),
(554, 166, 'location', 'Mumbai'),
(555, 166, 'start_date', '12-12-2019'),
(556, 166, 'start_time', '10:00 PM'),
(560, 220, '_event_notice', ''),
(561, 220, '_location', 'Rajkot'),
(562, 220, 'date', '2019-07-15'),
(563, 220, '_start_date', '2019-07-15'),
(564, 220, '_fees', ''),
(565, 160, '_location', 'Surat'),
(566, 160, '_start_date', '2019-02-13'),
(567, 160, '_fees', 'Royal121'),
(568, 220, '_amount', '121'),
(569, 160, '_amount', '20'),
(570, 160, '_free', NULL),
(571, 160, '_royal', NULL),
(572, 160, '_entry', 'Royal'),
(573, 313, '_edit_lock', '1563866227:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-07-08 06:20:45', '2019-07-08 06:20:45', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-07-08 06:20:45', '2019-07-08 06:20:45', '', 0, 'http://localhost/dhruvil/wp/wordpress/?p=1', 0, 'post', '', 0),
(3, 1, '2019-07-08 06:20:45', '2019-07-08 06:20:45', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://localhost/dhruvil/wp/wordpress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2019-07-16 07:37:16', '2019-07-16 07:37:16', '', 0, 'http://localhost/dhruvil/wp/wordpress/?page_id=3', 0, 'page', '', 0),
(15, 1, '2019-07-16 05:40:32', '2019-07-16 05:40:32', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-07-16 05:40:32', '2019-07-16 05:40:32', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2019-07-03 06:51:04', '2019-07-03 06:51:04', '', 'download5', '', 'inherit', 'open', 'closed', '', 'download5', '', '', '2019-07-03 06:51:04', '2019-07-03 06:51:04', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/download5.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2019-07-03 06:51:13', '2019-07-03 06:51:13', 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/cropped-download5.jpg', 'cropped-download5.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-download5-jpg', '', '', '2019-07-03 06:51:13', '2019-07-03 06:51:13', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/cropped-download5.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-07-03 07:00:23', '2019-07-03 07:00:23', 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/cropped-download5-1.jpg', 'cropped-download5-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-download5-1-jpg', '', '', '2019-07-03 07:00:23', '2019-07-03 07:00:23', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/cropped-download5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-07-03 08:32:51', '2019-07-03 08:32:51', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2019-07-03 08:32:51', '2019-07-03 08:32:51', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-07-03 08:32:52', '2019-07-03 08:32:52', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2019-07-03 08:32:52', '2019-07-03 08:32:52', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-07-03 08:32:52', '2019-07-03 08:32:52', '', 'img2', '', 'inherit', 'open', 'closed', '', 'img2', '', '', '2019-07-03 08:32:52', '2019-07-03 08:32:52', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-07-03 08:32:53', '2019-07-03 08:32:53', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3', '', '', '2019-07-03 08:32:53', '2019-07-03 08:32:53', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-07-03 08:32:53', '2019-07-03 08:32:53', '', 'img4', '', 'inherit', 'open', 'closed', '', 'img4', '', '', '2019-07-03 08:32:53', '2019-07-03 08:32:53', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-07-03 08:32:54', '2019-07-03 08:32:54', '', 'img5', '', 'inherit', 'open', 'closed', '', 'img5', '', '', '2019-07-03 08:32:54', '2019-07-03 08:32:54', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/img5.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-07-03 08:32:54', '2019-07-03 08:32:54', '', 'img6', '', 'inherit', 'open', 'closed', '', 'img6', '', '', '2019-07-03 08:32:54', '2019-07-03 08:32:54', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/img6.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-07-03 08:32:55', '2019-07-03 08:32:55', '', 'L-1', '', 'inherit', 'open', 'closed', '', 'l-1', '', '', '2019-07-03 08:32:55', '2019-07-03 08:32:55', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/L-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2019-07-03 08:32:55', '2019-07-03 08:32:55', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2019-07-03 08:32:55', '2019-07-03 08:32:55', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-07-03 08:32:56', '2019-07-03 08:32:56', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2019-07-03 08:32:56', '2019-07-03 08:32:56', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-07-03 08:32:57', '2019-07-03 08:32:57', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1-2', '', '', '2019-07-03 08:32:57', '2019-07-03 08:32:57', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2019-07-03 08:32:58', '2019-07-03 08:32:58', '', 'logo2', '', 'inherit', 'open', 'closed', '', 'logo2', '', '', '2019-07-03 08:32:58', '2019-07-03 08:32:58', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo2.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2019-07-03 08:32:58', '2019-07-03 08:32:58', '', 'logo3', '', 'inherit', 'open', 'closed', '', 'logo3', '', '', '2019-07-03 08:32:58', '2019-07-03 08:32:58', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-07-03 08:32:59', '2019-07-03 08:32:59', '', 'logo4', '', 'inherit', 'open', 'closed', '', 'logo4', '', '', '2019-07-03 08:32:59', '2019-07-03 08:32:59', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo4.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2019-07-03 08:32:59', '2019-07-03 08:32:59', '', 'logo5', '', 'inherit', 'open', 'closed', '', 'logo5', '', '', '2019-07-03 08:32:59', '2019-07-03 08:32:59', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo5.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-07-03 08:33:00', '2019-07-03 08:33:00', '', 'tab1', '', 'inherit', 'open', 'closed', '', 'tab1', '', '', '2019-07-03 08:33:00', '2019-07-03 08:33:00', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/tab1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-07-03 08:33:00', '2019-07-03 08:33:00', '', 'tab2', '', 'inherit', 'open', 'closed', '', 'tab2', '', '', '2019-07-03 08:33:00', '2019-07-03 08:33:00', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/tab2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-07-03 05:24:21', '2019-07-03 05:24:21', '<!-- wp:paragraph {\"textColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-text-color has-cyan-bluish-gray-color\">This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph {\"textColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-text-color has-cyan-bluish-gray-color\">As a new WordPress user, you should go to <a href=\"http://localhost/dhruvil/wp/Learn_wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'closed', '', 'sample-page-2', '', '', '2019-07-03 05:24:21', '2019-07-03 05:24:21', '', 0, 'http://localhost/dhruvil/wp/Learn_wordpress/?page_id=2', 0, 'page', '', 0),
(48, 1, '2019-07-08 12:07:17', '2019-07-08 12:07:17', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2-2', '', '', '2019-07-08 12:07:17', '2019-07-08 12:07:17', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo-1.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2019-07-09 08:23:48', '2019-07-09 08:23:48', '<!-- wp:paragraph -->\n<p>hello world How are you  hello world How are you </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"vivid-cyan-blue\"} -->\n<p class=\"has-text-color has-vivid-cyan-blue-color\"> hello world How are you  hello world How are you  hello world How are you </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"very-light-gray\"} -->\n<p class=\"has-text-color has-very-light-gray-color\"> hello world How are you  hello world How are you  hello world How are you  hello world How are you  hello world How are you </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-text-color has-luminous-vivid-amber-color\"> hello world How are you  hello world How are you  hello world How are you  hello world How are you  hello world How are you  hello world How are you  hello world How are you  hello world How are you  hello world How are you  hello world How are you  hello world How are you  hello world How are you </p>\n<!-- /wp:paragraph -->', 'page1', '', 'publish', 'closed', 'closed', '', 'page1-2', '', '', '2019-07-09 08:23:48', '2019-07-09 08:23:48', '', 0, 'http://localhost/dhruvil/wp/Learn_wordpress/?page_id=84', 0, 'page', '', 0),
(118, 1, '2019-07-10 04:45:18', '2019-07-10 04:45:18', '<!-- wp:shortcode -->\n[events   limit=6 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-22 04:59:15', '2019-07-22 04:59:15', '', 0, 'http://localhost/dhruvil/wp/Learn_wordpress/?page_id=118', 0, 'page', '', 0),
(119, 1, '2019-07-16 05:45:33', '2019-07-16 05:45:33', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/', 10, 'nav_menu_item', '', 0),
(121, 1, '2019-07-16 05:45:34', '2019-07-16 05:45:34', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/pages/', 11, 'nav_menu_item', '', 0),
(123, 1, '2019-07-16 05:45:36', '2019-07-16 05:45:36', '', 'Page1', '', 'publish', 'closed', 'closed', '', 'page1', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/page1/', 12, 'nav_menu_item', '', 0),
(124, 1, '2019-07-16 05:45:36', '2019-07-16 05:45:36', '', 'Page3', '', 'publish', 'closed', 'closed', '', 'page3', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/page3/', 16, 'nav_menu_item', '', 0),
(125, 1, '2019-07-16 05:45:36', '2019-07-16 05:45:36', '', 'Sub-Page2', '', 'publish', 'closed', 'closed', '', 'sub-page2', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/sub-page2/', 14, 'nav_menu_item', '', 0),
(131, 1, '2019-07-10 07:25:48', '2019-07-10 07:25:48', '<!-- wp:paragraph {\"textColor\":\"light-green-cyan\"} -->\n<p class=\"has-text-color has-light-green-cyan-color\">Sub Page Content</p>\n<!-- /wp:paragraph -->', 'Sub-Page1', '', 'publish', 'closed', 'closed', '', 'sub-page1', '', '', '2019-07-10 07:25:48', '2019-07-10 07:25:48', '', 0, 'http://localhost/dhruvil/wp/Learn_wordpress/?page_id=131', 0, 'page', '', 0),
(132, 1, '2019-07-16 05:45:37', '2019-07-16 05:45:37', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/', 13, 'nav_menu_item', '', 0),
(142, 1, '2019-07-11 05:21:57', '2019-07-11 05:21:57', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-amber\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-color has-medium-font-size has-luminous-vivid-amber-color\"><strong>Page 2 Content</strong></p>\n<!-- /wp:paragraph -->', 'Page2', '', 'publish', 'closed', 'closed', '', 'page2-2', '', '', '2019-07-11 05:21:57', '2019-07-11 05:21:57', '', 0, 'http://localhost/dhruvil/wp/Learn_wordpress/?page_id=142', 0, 'page', '', 0),
(143, 1, '2019-07-16 05:45:38', '2019-07-16 05:45:38', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/', 15, 'nav_menu_item', '', 0),
(145, 1, '2019-07-11 11:35:20', '2019-07-11 11:35:20', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2019-07-11 11:35:20', '2019-07-11 11:35:20', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/logo-1-1.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2019-07-16 07:37:17', '2019-07-16 07:37:17', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/147/', 17, 'nav_menu_item', '', 0),
(148, 1, '2019-07-16 07:37:16', '2019-07-16 07:37:16', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://localhost/dhruvil/wp/wordpress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-07-16 07:37:16', '2019-07-16 07:37:16', '', 3, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/3-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2019-07-16 08:45:44', '2019-07-16 08:45:44', 'This is demo event of play crickets.\r\n\r\nThe first ever match of first-class cricket played in India was in 1864 between Madras and Calcutta. Not many records exist from the match; however, it is known that the Man of the match was Praveen Chauhan. He hailed from Panipat, and played for Calcutta. Furthermore, the Best fielder was Ashwani Sharma. Like Chauhan, he was from Panipat as well.\r\n\r\nThe first ever match of first-class cricket played in India was in 1864 between Madras and Calcutta. Not many records exist from the match; however, it is known that the Man of the match was Praveen Chauhan. He hailed from Panipat, and played for Calcutta. Furthermore, the Best fielder was Ashwani Sharma. Like Chauhan, he was from Panipat as well.', 'Play Cricket', '', 'publish', 'open', 'closed', '', 'play-cricket', '', '', '2019-07-23 13:32:15', '2019-07-23 13:32:15', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=160', 0, 'event', '', 0),
(161, 1, '2019-07-16 08:58:36', '2019-07-16 08:58:36', 'This is demo event of play crickets.\n\nThe first ever match of first-class cricket played in India was in 1864 between Madras and Calcutta. Not many records exist from the match; however, it is known that the Man of the match was Praveen Chauhan. He hailed from Panipat, and played for Calcutta. Furthermore, the Best fielder was Ashwani Sharma. Like Chauhan, he was from Panipat as well.\n\nThe first ever match of first-class cricket played in India was in 1864 between Madras and Calcutta. Not many records exist from the match; however, it is known that the Man of the match was Praveen Chauhan. He hailed from Panipat, and played for Calcutta. Furthermore, the Best fielder was Ashwani Sharma. Like Chauhan, he was from Panipat as well.', 'Play Cricket', '', 'inherit', 'closed', 'closed', '', '160-autosave-v1', '', '', '2019-07-16 08:58:36', '2019-07-16 08:58:36', '', 160, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/160-autosave-v1/', 0, 'revision', '', 0),
(162, 1, '2019-07-16 09:00:10', '2019-07-16 09:00:10', '', 'cricket', '', 'inherit', 'open', 'closed', '', 'cricket', '', '', '2019-07-16 09:00:10', '2019-07-16 09:00:10', '', 160, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/cricket.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2019-07-16 09:10:12', '2019-07-16 09:10:12', '', 'football', '', 'inherit', 'open', 'closed', '', 'football', '', '', '2019-07-16 09:10:12', '2019-07-16 09:10:12', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/football.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2019-07-16 09:12:28', '2019-07-16 09:12:28', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-16 09:12:28', '2019-07-16 09:12:28', '', 118, 'http://localhost/dhruvil/wp/wp_learn/2019/07/16/118-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2019-07-16 09:19:54', '2019-07-16 09:19:54', 'At a Hallowe\'en party held at Rowena Drake\'s home in Woodleigh Common, thirteen-year-old Joyce Reynolds tells everyone attending she had once seen a murder, but had not realised it was one until later. When the party ends, Joyce is found dead, having been drowned in an apple-bobbing tub. Ariadne Oliver, attending the party while visiting her friend Judith Butler, calls on Hercule Poirot to investigate the murder and Joyce\'s claim. With help from retired Superintendent Spence, Poirot makes a list of deaths and disappearances for the last few years in Woodleigh Common: Rowena\'s aunt, Mrs Llewellyn-Smythe, died suddenly; her au pair Olga Seminoff disappeared, when a codicil that favoured her in her employer\'s will was found to be a forgery; Leslie Ferrier, a lawyer\'s clerk, was stabbed in the back by an unknown assailant; Charlotte Benfield, a sixteen-year-old shop assistant, was found dead with multiple head injuries; and Janet White, a teacher at Elms School, was strangled to death.At a Hallowe\'en party held at Rowena Drake\'s home in Woodleigh Common, thirteen-year-old Joyce Reynolds tells everyone attending she had once seen a murder, but had not realised it was one until later. When the party ends, Joyce is found dead, having been drowned in an apple-bobbing tub. Ariadne Oliver, attending the party while visiting her friend Judith Butler, calls on Hercule Poirot to investigate the murder and Joyce\'s claim.', 'Halloween parties', '', 'publish', 'open', 'closed', '', 'halloween-parties', '', '', '2019-07-22 05:39:02', '2019-07-22 05:39:02', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=166', 0, 'event', '', 0),
(167, 1, '2019-07-16 09:19:49', '2019-07-16 09:19:49', '', 'Halloween parties', '', 'inherit', 'open', 'closed', '', 'halloween-parties', '', '', '2019-07-16 09:19:49', '2019-07-16 09:19:49', '', 166, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/Halloween-parties.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2019-07-16 09:21:09', '2019-07-16 09:21:09', 'During Casino Night, Dwight Schrute (Rainn Wilson) wins a game of craps and kisses Angela Martin (Angela Kinsey) on the cheek, disregarding their attempts to keep their intimate relationship a secret. She slaps him and walks away, the two quietly enjoying the experience. Jan and Carol share an awkward conversation when they realize Michael has invited them both. Jim tells Jan that he\'s made a decision about the transfer. After Roy leaves, Jim tells Pam that he is in love with her. After a stunned pause, she states she cannot be with him. He tells her he wants to be more than friends, but she is sorry he \"misinterpreted things.\" Heartbroken, Jim apologizes for misinterpreting their friendship and discreetly wipes a tear from his cheek as he walks away. Jan leaves Michael and Carol, noticeably upset at the night\'s events, and it is revealed she packed an overnight bag in her car, implying she had planned to spend the night with Michael. Pam returns to the office and talks to her mother over the phone about Jim\'s statement. Jim enters the room and approaches her as she hastily hangs up. She begins to say something but Jim kisses her, and after hesitating, she returns the kiss, with the two staring at each other in silence.', 'casino nights', '', 'publish', 'open', 'closed', '', 'casino-nights', '', '', '2019-07-22 05:38:20', '2019-07-22 05:38:20', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=168', 0, 'event', '', 0),
(169, 1, '2019-07-16 09:20:59', '2019-07-16 09:20:59', '', 'casino nights', '', 'inherit', 'open', 'closed', '', 'casino-nights', '', '', '2019-07-16 09:20:59', '2019-07-16 09:20:59', '', 168, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/casino-nights.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2019-07-16 09:23:50', '2019-07-16 09:23:50', 'This is a list of animated short films produced by Walt Disney and Walt Disney Animation Studios from 1921 to the present. This includes films produced at the Laugh-O-Gram Studio which Disney founded in 1921 as well as the animation studio now owned by The Walt Disney Company, previously called the Disney Brothers Cartoon Studio (1923), The Walt Disney Studio (1926), Walt Disney Productions (1929), and Walt Disney Feature Animation (1986).\r\n\r\nThis list does not include:\r\n<ul>\r\n 	<li>Segments of feature-length package films later released individually (see List of Disney theatrical animated features)</li>\r\n 	<li>Animated cartoon segments originally made for television (e.g. <i>Disney\'s House of Mouse</i> or the <i>Mickey Mouse</i> TV series)</li>\r\n 	<li>Short films which contain animation but are primarily live-action (see List of Disney live-action shorts)</li>\r\n 	<li>Short films which contain no new animation (i.e., films re-edited from other films)</li>\r\n</ul>', 'Birthday Party', '', 'publish', 'open', 'closed', '', 'birthday-party', '', '', '2019-07-22 05:37:38', '2019-07-22 05:37:38', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=170', 0, 'event', '', 0),
(171, 1, '2019-07-16 09:23:47', '2019-07-16 09:23:47', '', 'Birthday Party', '', 'inherit', 'open', 'closed', '', 'birthday-party', '', '', '2019-07-16 09:23:47', '2019-07-16 09:23:47', '', 170, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/Birthday-Party.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2019-07-16 09:25:08', '2019-07-16 09:25:08', 'Some cultures have adopted the traditional Western custom of the white wedding, in which a bride wears a white wedding dress and veil. This tradition was popularized through the marriage of Queen Victoria. Some say Victoria\'s choice of a white gown may have simply been a sign of extravagance, but may have also been influenced by the values she held which emphasized sexual purity.<sup id=\"cite_ref-Otnes_2003_p.31_1-0\" class=\"reference\">[1]</sup> Within the modern \'white wedding\' tradition, a white dress and veil are unusual choices for a woman\'s second or subsequent wedding.Some cultures have adopted the traditional Western custom of the white wedding, in which a bride wears a white wedding dress and veil. This tradition was popularized through the marriage of Queen Victoria. Some say Victoria\'s choice of a white gown may have simply been a sign of extravagance, but may have also been influenced by the values she held which emphasized sexual purity.<sup id=\"cite_ref-Otnes_2003_p.31_1-0\" class=\"reference\">[1]</sup> Within the modern \'white wedding\' tradition, a white dress and veil are unusual choices for a woman\'s second or subsequent wedding.', 'Weddings', '', 'publish', 'open', 'closed', '', 'weddings', '', '', '2019-07-22 05:37:00', '2019-07-22 05:37:00', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=172', 0, 'event', '', 0),
(173, 1, '2019-07-16 09:25:06', '2019-07-16 09:25:06', '', 'Weddings', '', 'inherit', 'open', 'closed', '', 'weddings', '', '', '2019-07-16 09:25:06', '2019-07-16 09:25:06', '', 172, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/Weddings.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2019-07-16 09:27:00', '2019-07-16 09:27:00', 'The term \"meeting\" may refer to a lecture (one presentation), seminar (typically several presentations, small audience, one day), conference (mid-size, one or more days), congress (large, several days), exhibition or trade show (with manned stands being visited by passers-by), workshop (smaller, with active participants), training course, team-building session and kick-off event.\r\n\r\nCommon types of meeting include:\r\n<ul>\r\n 	<li>Committee meeting, a coming-together of a defined subset of an organization</li>\r\n 	<li>Investigative meeting, generally when conducting a pre-interview, exit interview or a meeting among the investigator and representative</li>\r\n 	<li>Kickoff meeting, the first meeting with a project team and the client of the project to discuss the role of each team-member<sup id=\"cite_ref-4\" class=\"reference\">[4]</sup></li>\r\n 	<li>Town hall meeting, an informal public gathering.</li>\r\n 	<li>Work meeting, which produces a product or intangible result such as a decision<sup class=\"noprint Inline-Template Template-Fact\">[<i><span title=\"This claim needs references to reliable sources. (July 2016)\">citation needed</span></i>]</sup>; compare working group.</li>\r\n</ul>', 'Board Meetings', '', 'publish', 'open', 'closed', '', 'board-meetings', '', '', '2019-07-22 05:35:58', '2019-07-22 05:35:58', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=174', 0, 'event', '', 0),
(175, 1, '2019-07-16 09:26:54', '2019-07-16 09:26:54', '', 'Board Meetings', '', 'inherit', 'open', 'closed', '', 'board-meetings', '', '', '2019-07-16 09:26:54', '2019-07-16 09:26:54', '', 174, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/Board-Meetings.jpg', 0, 'attachment', 'image/jpeg', 0),
(176, 1, '2019-07-16 09:29:29', '2019-07-16 09:29:29', '\"<b>Farewell Party</b>\" is a song written by Lawton Williams. Lawton also had the original recording in 1960. Little Jimmy Dickens recorded the song in 1961. It was also recorded by American country music artists Johnny Bush and Waylon Jennings, as well as Gene Watson. Watson\'s cover was released in February 1979 as the second single from the album <i>Reflections</i>. The song reached #5 on the <i>Billboard</i> Hot Country Singles &amp; Trackschart.<sup id=\"cite_ref-1\" class=\"reference\">[1]</sup>\"<b>Farewell Party</b>\" is a song written by Lawton Williams. Lawton also had the original recording in 1960. Little Jimmy Dickens recorded the song in 1961. It was also recorded by American country music artists Johnny Bush and Waylon Jennings, as well as Gene Watson. Watson\'s cover was released in February 1979 as the second single from the album <i>Reflections</i>. The song reached #5 on the <i>Billboard</i> Hot Country Singles &amp; Trackschart.<sup id=\"cite_ref-1\" class=\"reference\">[1]</sup>\"<b>Farewell Party</b>\" is a song written by Lawton Williams. Lawton also had the original recording in 1960. Little Jimmy Dickens recorded the song in 1961. It was also recorded by American country music artists Johnny Bush and Waylon Jennings, as well as Gene Watson. Watson\'s cover was released in February 1979 as the second single from the album <i>Reflections</i>. The song reached #5 on the <i>Billboard</i> Hot Country Singles &amp; Trackschart.<sup id=\"cite_ref-1\" class=\"reference\">[1]</sup>', 'Farewell Party', '', 'publish', 'open', 'closed', '', 'farewell-party', '', '', '2019-07-22 05:35:10', '2019-07-22 05:35:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=176', 0, 'event', '', 0),
(177, 1, '2019-07-16 09:29:05', '2019-07-16 09:29:05', '', 'Farewell Party', '', 'inherit', 'open', 'closed', '', 'farewell-party', '', '', '2019-07-16 09:29:05', '2019-07-16 09:29:05', '', 176, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/Farewell-Party.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2019-07-16 09:31:14', '2019-07-16 09:31:14', 'Mobile content via SMS is still the main technology for communication used to send mobile consumers messages, especially simple content such as ringtones and wallpapers. Because SMS is the main messaging technology used by young people, it is still the most effective way of reaching this target market. SMS is also ubiquitous, reaching a wider audience than any other technology available in the mobile space (MMS, bluetooth, mobile e-mail or WAP). More important than anything else, SMS is extremely easy to use, which makes adoption increase day by day.\r\n\r\nAlthough SMS is an old technology that may someday be replaced by the likes of Multimedia Messaging Service (MMS) or WAP, SMS frequently gains new powers. One example is the introduction of applications whereby mobile tickets are sent to consumers via SMS, which contains a WAP-push that contains a link where a barcode is placed. This clearly substitutes MMS, which has a limited reach and still suffers from interoperability problems.', 'Mobile Launching', '', 'publish', 'open', 'closed', '', 'mobile-launching', '', '', '2019-07-22 05:34:09', '2019-07-22 05:34:09', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=178', 0, 'event', '', 0),
(179, 1, '2019-07-16 09:31:09', '2019-07-16 09:31:09', '', 'mobile launching', '', 'inherit', 'open', 'closed', '', 'mobile-launching', '', '', '2019-07-16 09:31:09', '2019-07-16 09:31:09', '', 178, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/mobile-launching.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2019-07-16 09:33:26', '2019-07-16 09:33:26', 'The Big Draw charity is the founder and driving force behind The Big Draw Festival, which takes place each year in over 20 countries around the world.Events often take place at notable venues throughout the UK including The British Museum, The National Gallery and Victoria and Albert Museum as well as schools, community centres, parks and village halls. The 2013 Big Draw highlight event offered visitors 20 different activities in the new Queen Elizabeth Olympic Park. Previous launches were held at the Natural History Museum, V&amp;A (twice), Trafalgar Square, St Pancras International Station, Welcome Collection and the British Library.<sup class=\"noprint Inline-Template Template-Fact\">[<i><span title=\"This claim needs references to reliable sources. (January 2018)\">citation needed</span></i>]</sup>\r\n\r\nThe Big Draw charity is the founder and driving force behind The Big Draw Festival, which takes place each year in over 20 countries around the world.\r\n\r\nEvents often take place at notable venues throughout the UK including The British Museum, The National Gallery and Victoria and Albert Museum as well as schools, community centres, parks and village halls. The 2013 Big Draw highlight event offered visitors 20 different activities in the new Queen Elizabeth Olympic Park. Previous launches were held at the Natural History Museum, V&amp;A (twice), Trafalgar Square, St Pancras International Station, Welcome Collection and the British Library.<sup class=\"noprint Inline-Template Template-Fact\">[<i><span title=\"This claim needs references to reliable sources. (January 2018)\">citation needed</span></i>]</sup>', 'Drawing Event', '', 'publish', 'open', 'closed', '', 'drawing-event', '', '', '2019-07-22 05:29:27', '2019-07-22 05:29:27', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=180', 0, 'event', '', 0),
(181, 1, '2019-07-16 09:33:23', '2019-07-16 09:33:23', '', 'Drawing Event', '', 'inherit', 'open', 'closed', '', 'drawing-event', '', '', '2019-07-16 09:33:23', '2019-07-16 09:33:23', '', 180, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/Drawing-Event.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2019-07-16 12:03:04', '2019-07-16 12:03:04', 'Early computers were only conceived as calculating devices. Since ancient times, simple manual devices like the abacus aided people in doing calculations. Early in the Industrial Revolution, some mechanical devices were built to automate long tedious tasks, such as guiding patterns for looms. More sophisticated electrical machines did specialized analog calculations in the early 20th century. The first digital electronic calculating machines were developed during World War II. The speed, power, and versatility of computers have been increasing dramatically ever since then.', 'Computer Launching', '', 'publish', 'open', 'closed', '', 'computer-launching', '', '', '2019-07-22 05:28:15', '2019-07-22 05:28:15', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=183', 0, 'event', '', 0),
(184, 1, '2019-07-16 12:02:57', '2019-07-16 12:02:57', '', 'computer', '', 'inherit', 'open', 'closed', '', 'computer', '', '', '2019-07-16 12:02:57', '2019-07-16 12:02:57', '', 183, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/computer.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2019-07-16 12:05:03', '2019-07-16 12:05:03', 'PC gaming is considered synonymous (by Newzoo and others) with IBM Personal Computer compatible systems; while mobile computers – smartphones and tablets, such as those running Android or iOS – are also personal computers in the general sense. The APAC region was estimated to generate $46.6 billion in 2016, or 47% of total global video game revenues (note, not only \"PC\" games). China alone accounts for half of APAC\'s revenues (at $24.4 billion), cementing its place as the largest video game market in the world, ahead of the US\'s anticipated market size of $23.5 billion. China is expected to have 53% of its video game revenues come from mobile gaming in 2017 (46% in 2016).', 'PC Gaming', '', 'publish', 'open', 'closed', '', 'pc-gaming', '', '', '2019-07-22 05:24:35', '2019-07-22 05:24:35', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=185', 0, 'event', '', 0),
(186, 1, '2019-07-16 12:04:57', '2019-07-16 12:04:57', '', 'pc gaming', '', 'inherit', 'open', 'closed', '', 'pc-gaming', '', '', '2019-07-16 12:04:57', '2019-07-16 12:04:57', '', 185, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/pc-gaming.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2019-07-16 12:06:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-07-16 12:06:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&p=187', 0, 'event', '', 0),
(190, 1, '2019-07-17 05:44:27', '2019-07-17 05:44:27', '<!-- wp:paragraph {\"className\":\"event-class\"} -->\n<p class=\"event-class\"></p>\n<!-- /wp:paragraph -->', 'Event', '', 'publish', 'closed', 'closed', '', 'event', '', '', '2019-07-17 07:58:58', '2019-07-17 07:58:58', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?page_id=190', 0, 'page', '', 0),
(191, 1, '2019-07-17 05:44:27', '2019-07-17 05:44:27', ' ', '', '', 'publish', 'closed', 'closed', '', '191', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/191/', 2, 'nav_menu_item', '', 0),
(192, 1, '2019-07-17 05:44:27', '2019-07-17 05:44:27', '', 'Events', '', 'inherit', 'closed', 'closed', '', '190-revision-v1', '', '', '2019-07-17 05:44:27', '2019-07-17 05:44:27', '', 190, 'http://localhost/dhruvil/wp/wp_learn/190-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2019-07-17 05:44:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-17 05:44:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=193', 1, 'nav_menu_item', '', 0),
(194, 1, '2019-07-17 05:46:35', '2019-07-17 05:46:35', 'All type of games', '', '', 'publish', 'closed', 'closed', '', '194', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=194', 3, 'nav_menu_item', '', 0),
(195, 1, '2019-07-17 05:46:35', '2019-07-17 05:46:35', 'All type of theme parties.', '', '', 'publish', 'closed', 'closed', '', '195', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=195', 4, 'nav_menu_item', '', 0),
(196, 1, '2019-07-17 05:46:36', '2019-07-17 05:46:36', 'All type of product launching.', '', '', 'publish', 'closed', 'closed', '', '196', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=196', 6, 'nav_menu_item', '', 0),
(197, 1, '2019-07-17 05:46:36', '2019-07-17 05:46:36', 'All type of family events', '', '', 'publish', 'closed', 'closed', '', '197', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=197', 5, 'nav_menu_item', '', 0),
(198, 1, '2019-07-17 05:46:36', '2019-07-17 05:46:36', 'All type of school events.', '', '', 'publish', 'closed', 'closed', '', '198', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=198', 7, 'nav_menu_item', '', 0),
(199, 1, '2019-07-17 05:46:36', '2019-07-17 05:46:36', 'All Types of seminars, meetings, conferences', '', '', 'publish', 'closed', 'closed', '', '199', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=199', 8, 'nav_menu_item', '', 0),
(200, 1, '2019-07-17 05:46:37', '2019-07-17 05:46:37', 'All type of music events', '', '', 'publish', 'closed', 'closed', '', '200', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=200', 9, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(215, 1, '2019-07-17 06:04:36', '2019-07-17 06:04:36', '<!-- wp:paragraph {\"className\":\"event-class\"} -->\n<p class=\"event-class\"></p>\n<!-- /wp:paragraph -->', 'Events', '', 'inherit', 'closed', 'closed', '', '190-revision-v1', '', '', '2019-07-17 06:04:36', '2019-07-17 06:04:36', '', 190, 'http://localhost/dhruvil/wp/wp_learn/190-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2019-07-17 07:58:39', '2019-07-17 07:58:39', '<!-- wp:paragraph {\"className\":\"event-class\"} -->\n<p class=\"event-class\"></p>\n<!-- /wp:paragraph -->', 'Event', '', 'inherit', 'closed', 'closed', '', '190-revision-v1', '', '', '2019-07-17 07:58:39', '2019-07-17 07:58:39', '', 190, 'http://localhost/dhruvil/wp/wp_learn/190-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2019-07-17 08:23:55', '2019-07-17 08:23:55', 'The Big Draw charity is the founder and driving force behind The Big Draw Festival, which takes place each year in over 20 countries around the world.\n\nEvents often take place at notable venues throughout the UK including The British Museum, The National Gallery and Victoria and Albert Museum as well as schools, community centres, parks and village halls. The 2013 Big Draw highlight event offered visitors 20 different activities in the new Queen Elizabeth Olympic Park. Previous launches were held at the Natural History Museum, V&amp;A (twice), Trafalgar Square, St Pancras International Station, Welcome Collection and the British Library.<sup class=\"noprint Inline-Template Template-Fact\">[<i><span title=\"This claim needs references to reliable sources. (January 2018)\">citation needed</span></i>]</sup>\n\nThe Big Draw charity is the founder and driving force behind The Big Draw Festival, which takes place each year in over 20 countries around the world.\n\nEvents often take place at notable venues throughout the UK including The British Museum, The National Gallery and Victoria and Albert Museum as well as schools, community centres, parks and village halls. The 2013 Big Draw highlight event offered visitors 20 different activities in the new Queen Elizabeth Olympic Park. Previous launches were held at the Natural History Museum, V&amp;A (twice), Trafalgar Square, St Pancras International Station, Welcome Collection and the British Library.<sup class=\"noprint Inline-Template Template-Fact\">[<i><span title=\"This claim needs references to reliable sources. (January 2018)\">citation needed</span></i>]</sup>', 'Drawing Event', '', 'inherit', 'closed', 'closed', '', '180-autosave-v1', '', '', '2019-07-17 08:23:55', '2019-07-17 08:23:55', '', 180, 'http://localhost/dhruvil/wp/wp_learn/180-autosave-v1/', 0, 'revision', '', 0),
(218, 1, '2019-07-17 08:25:05', '2019-07-17 08:25:05', 'Mobile content via SMS is still the main technology for communication used to send mobile consumers messages, especially simple content such as ringtones and wallpapers. Because SMS is the main messaging technology used by young people, it is still the most effective way of reaching this target market. SMS is also ubiquitous, reaching a wider audience than any other technology available in the mobile space (MMS, bluetooth, mobile <a class=\"mw-redirect\" title=\"Mobile e-mail\" href=\"https://en.wikipedia.org/wiki/Mobile_e-mail\">e-</a>mail or WAP). More important than anything else, SMS is extremely easy to use, which makes adoption increase day by day.\n\nAlthough SMS is an old technology that may someday be replaced by the likes of Multimedia Messaging Service (MMS) or WAP, SMS frequently gains new powers. One example is the introduction of applications whereby mobile tickets are sent to consumers via SMS, which contains a WAP-push that contains a link where a <a title=\"Barcode\" href=\"https://en.wikipedia.org/wiki/Barcode\">barcode</a> is placed. This clearly substitutes MMS, which has a limited reach and still suffers from interoperability problems.', 'Mobile Launching', '', 'inherit', 'closed', 'closed', '', '178-autosave-v1', '', '', '2019-07-17 08:25:05', '2019-07-17 08:25:05', '', 178, 'http://localhost/dhruvil/wp/wp_learn/178-autosave-v1/', 0, 'revision', '', 0),
(220, 1, '2019-07-17 10:11:47', '2019-07-17 10:11:47', 'The origin of football in India can be traced back to mid-nineteenth century when the game was introduced by British soldiers. Initially, games were played between army teams. However, clubs were soon set up around the country. Calcutta FC was the first club to be established in 1872, though reports suggest that they were initially a rugby club and switched their attentions to football as late as 1894. Other early clubs include Dalhousie Club, Traders Club and Naval Volunteers Club.<sup id=\"cite_ref-TheSportsCampus.com_7-0\" class=\"reference\">[7]</sup> Several other football clubs like Sovabazar, Mohun Bagan and Aryan Club were established in Calcutta around the 1890s. Calcutta, then capital of British India, soon became the hub of Indian football. Tournaments like Gladstone Cup, Trades Cup and Cooch Behar Cup was also started around this time. The Durand Cup and IFA Shield were both started in late nineteenth century.The origin of football in India can be traced back to mid-nineteenth century when the game was introduced by British soldiers. Initially, games were played between army teams. However, clubs were soon set up around the country. Calcutta FC was the first club to be established in 1872, though reports suggest that they were initially a rugby club and switched their attentions to football as late as 1894. Other early clubs include Dalhousie Club, Traders Club and Naval Volunteers Club.<sup id=\"cite_ref-TheSportsCampus.com_7-0\" class=\"reference\">[7]</sup> Several other football clubs like Sovabazar, Mohun Bagan and Aryan Club were established in Calcutta around the 1890s. Calcutta, then capital of British India, soon became the hub of Indian football. Tournaments like Gladstone Cup, Trades Cup and Cooch Behar Cup was also started around this time. The Durand Cup and IFA Shield were both started in late nineteenth century.', 'Play Football', '', 'publish', 'open', 'closed', '', 'play-football-2', '', '', '2019-07-23 05:54:48', '2019-07-23 05:54:48', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?post_type=event&#038;p=220', 0, 'event', '', 0),
(221, 1, '2019-07-17 11:25:58', '2019-07-17 11:25:58', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\"> &lt;?php add_shortcode( $tag , $func ); ?> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 11:25:58', '2019-07-17 11:25:58', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2019-07-17 11:26:27', '2019-07-17 11:26:27', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&lt;?php add_shortcode( $tag , $func ); ?> </code></pre>\n<!-- /wp:code -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 11:26:27', '2019-07-17 11:26:27', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2019-07-17 11:27:48', '2019-07-17 11:27:48', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 11:27:48', '2019-07-17 11:27:48', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2019-07-17 11:46:12', '2019-07-17 11:46:12', '<!-- wp:paragraph {\"dropCap\":true,\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-drop-cap has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 11:46:12', '2019-07-17 11:46:12', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2019-07-17 11:46:46', '2019-07-17 11:46:46', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 11:46:46', '2019-07-17 11:46:46', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(226, 1, '2019-07-17 11:48:51', '2019-07-17 11:48:51', '<!-- wp:html -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<?php echo do_shortcode(\'[footag_func]\');?>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 11:48:51', '2019-07-17 11:48:51', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2019-07-17 11:50:22', '2019-07-17 11:50:22', '<!-- wp:html -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Conte\n[footag_func]\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 11:50:22', '2019-07-17 11:50:22', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(228, 1, '2019-07-17 11:51:08', '2019-07-17 11:51:08', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 11:51:08', '2019-07-17 11:51:08', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2019-07-17 12:15:49', '2019-07-17 12:15:49', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[helloworld]</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:15:49', '2019-07-17 12:15:49', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(230, 1, '2019-07-17 12:16:05', '2019-07-17 12:16:05', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n[helloworld]\n<!-- /wp:html -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:16:05', '2019-07-17 12:16:05', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2019-07-17 12:16:29', '2019-07-17 12:16:29', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<?php [helloworld] ?>\n<!-- /wp:html -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:16:29', '2019-07-17 12:16:29', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2019-07-17 12:16:42', '2019-07-17 12:16:42', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<?php echo [helloworld] ?>\n<!-- /wp:html -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:16:42', '2019-07-17 12:16:42', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2019-07-17 12:23:18', '2019-07-17 12:23:18', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<?php [helloworld] ?>\n<!-- /wp:html -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:23:18', '2019-07-17 12:23:18', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2019-07-17 12:23:41', '2019-07-17 12:23:41', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content [helloworld]</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:23:41', '2019-07-17 12:23:41', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2019-07-17 12:23:59', '2019-07-17 12:23:59', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:23:59', '2019-07-17 12:23:59', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2019-07-17 12:28:25', '2019-07-17 12:28:25', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[subscribe]</code></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:28:25', '2019-07-17 12:28:25', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2019-07-17 12:29:43', '2019-07-17 12:29:43', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[subscribe]</code></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td> <code><br>[subscribe]</code> </td><td> <code><br>[subscribe]</code> </td></tr><tr><td> <code><br>[subscribe]</code> </td><td> <code><br>[subscribe]</code> </td></tr></tbody></table>\n<!-- /wp:table -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:29:43', '2019-07-17 12:29:43', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2019-07-17 12:30:42', '2019-07-17 12:30:42', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[subscribe]</code></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[subscribe]</code> </td><td><code>[subscribe]</code> </td></tr><tr><td><code>[subscribe]</code> </td><td><code>[subscribe]</code> </td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[subscribe]</code></td></tr></tbody></table>\n<!-- /wp:table -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:30:42', '2019-07-17 12:30:42', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(240, 1, '2019-07-17 12:33:27', '2019-07-17 12:33:27', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[</code>custom<code>]</code></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table {\"align\":\"center\"} -->\n<table class=\"wp-block-table aligncenter\"><tbody><tr><td><code>[</code>custom<code>]</code> </td><td><code>[</code>custom<code>]</code> </td></tr><tr><td><code>[</code>custom<code>]</code> </td><td><code>[</code>custom<code>]</code> </td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table {\"align\":\"center\"} -->\n<table class=\"wp-block-table aligncenter\"><tbody><tr><td><code>[</code>custom<code>]</code></td></tr></tbody></table>\n<!-- /wp:table -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:33:27', '2019-07-17 12:33:27', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2019-07-17 12:35:02', '2019-07-17 12:35:02', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[</code>custom<code>]</code></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[</code>custom<code>]</code> </td><td><code>[</code>custom<code>]</code> </td></tr><tr><td><code>[</code>custom<code>]</code> </td><td><code>[</code>custom<code>]</code> </td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[</code>custom<code>]</code></td></tr></tbody></table>\n<!-- /wp:table -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:35:02', '2019-07-17 12:35:02', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2019-07-17 12:35:15', '2019-07-17 12:35:15', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[</code>custom<code>]</code></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><code>[</code>custom<code>]</code></td></tr></tbody></table>\n<!-- /wp:table -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:35:15', '2019-07-17 12:35:15', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2019-07-17 12:35:40', '2019-07-17 12:35:40', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 12:35:40', '2019-07-17 12:35:40', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2019-07-17 13:20:59', '2019-07-17 13:20:59', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number]</td></tr></tbody></table>\n<!-- /wp:table -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 13:20:59', '2019-07-17 13:20:59', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2019-07-17 13:32:20', '2019-07-17 13:32:20', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[andrewloop]</td></tr></tbody></table>\n<!-- /wp:table -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 13:32:20', '2019-07-17 13:32:20', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(246, 1, '2019-07-17 13:34:31', '2019-07-17 13:34:31', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number]</td></tr></tbody></table>\n<!-- /wp:table -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-17 13:34:31', '2019-07-17 13:34:31', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2019-07-18 05:08:45', '2019-07-18 05:08:45', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number] $num = range(0,100);<br>foreach($num as $a)<br>{<br>echo $a;<br>}[/number]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:08:45', '2019-07-18 05:08:45', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(248, 1, '2019-07-18 05:09:19', '2019-07-18 05:09:19', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:09:19', '2019-07-18 05:09:19', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2019-07-18 05:21:27', '2019-07-18 05:21:27', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[sme_user-email]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:21:27', '2019-07-18 05:21:27', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(250, 1, '2019-07-18 05:23:27', '2019-07-18 05:23:27', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[sme_user-email  userid=\"2\" ]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:23:27', '2019-07-18 05:23:27', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(251, 1, '2019-07-18 05:23:49', '2019-07-18 05:23:49', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[sme_user-email  userid=\"2\"]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:23:49', '2019-07-18 05:23:49', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(252, 1, '2019-07-18 05:24:40', '2019-07-18 05:24:40', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[sme_user-email]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:24:40', '2019-07-18 05:24:40', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(253, 1, '2019-07-18 05:29:25', '2019-07-18 05:29:25', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series limit=5]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:29:25', '2019-07-18 05:29:25', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(254, 1, '2019-07-18 05:33:07', '2019-07-18 05:33:07', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:33:07', '2019-07-18 05:33:07', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(255, 1, '2019-07-18 05:33:15', '2019-07-18 05:33:15', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=50 ]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:33:15', '2019-07-18 05:33:15', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(256, 1, '2019-07-18 05:34:20', '2019-07-18 05:34:20', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=50  ]shailesh dhundhalva[/ number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:34:20', '2019-07-18 05:34:20', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(257, 1, '2019-07-18 05:34:59', '2019-07-18 05:34:59', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=50  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:34:59', '2019-07-18 05:34:59', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(258, 1, '2019-07-18 05:45:56', '2019-07-18 05:45:56', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=50  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:45:56', '2019-07-18 05:45:56', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(259, 1, '2019-07-18 05:46:11', '2019-07-18 05:46:11', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:46:11', '2019-07-18 05:46:11', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(260, 1, '2019-07-18 05:46:21', '2019-07-18 05:46:21', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:46:21', '2019-07-18 05:46:21', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(261, 1, '2019-07-18 05:54:06', '2019-07-18 05:54:06', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 orderby=\'ASC\' class=\'event\']</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 05:54:06', '2019-07-18 05:54:06', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(264, 1, '2019-07-18 06:12:56', '2019-07-18 06:12:56', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 class=\'event\']</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:12:56', '2019-07-18 06:12:56', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(265, 1, '2019-07-18 06:13:11', '2019-07-18 06:13:11', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events limit=10]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:13:11', '2019-07-18 06:13:11', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(266, 1, '2019-07-18 06:13:45', '2019-07-18 06:13:45', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:13:45', '2019-07-18 06:13:45', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(267, 1, '2019-07-18 06:13:56', '2019-07-18 06:13:56', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 orderby=ASC class=\'event\']</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:13:56', '2019-07-18 06:13:56', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(268, 1, '2019-07-18 06:14:04', '2019-07-18 06:14:04', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 class=\'event\']</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:14:04', '2019-07-18 06:14:04', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2019-07-18 06:43:13', '2019-07-18 06:43:13', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 class=\'event\']</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:43:13', '2019-07-18 06:43:13', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(270, 1, '2019-07-18 06:43:41', '2019-07-18 06:43:41', '<!-- wp:paragraph {\"textColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-text-color has-luminous-vivid-orange-color\">Home Page Content </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 class=\'event\']</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:43:41', '2019-07-18 06:43:41', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(271, 1, '2019-07-18 06:47:27', '2019-07-18 06:47:27', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 class=\'event\']</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:47:27', '2019-07-18 06:47:27', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(272, 1, '2019-07-18 06:51:06', '2019-07-18 06:51:06', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 class=\'event\'] [/events]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:51:06', '2019-07-18 06:51:06', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(273, 1, '2019-07-18 06:56:09', '2019-07-18 06:56:09', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 class=\'event\' taxonomy=\'event_type\'] [/events]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:56:09', '2019-07-18 06:56:09', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(274, 1, '2019-07-18 06:56:23', '2019-07-18 06:56:23', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 class=\'event\'] [/events]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 06:56:23', '2019-07-18 06:56:23', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(276, 1, '2019-07-18 07:24:40', '2019-07-18 07:24:40', ' ', '', '', 'publish', 'closed', 'closed', '', '118-no-title', '', '', '2019-07-19 11:33:10', '2019-07-19 11:33:10', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=276', 1, 'nav_menu_item', '', 0),
(277, 1, '2019-07-18 07:25:00', '2019-07-18 07:25:00', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=10 class=\'event\'] [/events]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 07:25:00', '2019-07-18 07:25:00', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(278, 1, '2019-07-18 09:28:50', '2019-07-18 09:28:50', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[custom]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=5 class=\'event\'] [/events]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 09:28:50', '2019-07-18 09:28:50', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(279, 1, '2019-07-18 09:33:31', '2019-07-18 09:33:31', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=5 class=\'event\'] [/events]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>\n\n[custom]\n\n</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 09:33:31', '2019-07-18 09:33:31', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(280, 1, '2019-07-18 09:34:36', '2019-07-18 09:34:36', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=5 class=\'event\']</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[number_series   limit=5  ]shailesh dhundhalva[/number_series]</td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>\n\n[custom]\n\n</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 09:34:36', '2019-07-18 09:34:36', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(281, 1, '2019-07-18 10:00:14', '2019-07-18 10:00:14', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[events   limit=5 class=\'event\']<br></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:shortcode -->\n[number_series   limit=5  ]shailesh dhundhalva[/number_series]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 10:00:14', '2019-07-18 10:00:14', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(282, 1, '2019-07-18 10:01:18', '2019-07-18 10:01:18', '<!-- wp:shortcode -->\n[events   limit=5 class=\'event\']\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 10:01:18', '2019-07-18 10:01:18', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(283, 1, '2019-07-18 10:44:20', '2019-07-18 10:44:20', '<!-- wp:shortcode -->\n[events   limit=5 class=\'event\']\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 10:44:20', '2019-07-18 10:44:20', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(284, 1, '2019-07-18 10:44:49', '2019-07-18 10:44:49', '<!-- wp:shortcode -->\n[events   limit=5 class=\'event\']\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[/][/]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 10:44:49', '2019-07-18 10:44:49', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(285, 1, '2019-07-18 10:44:50', '2019-07-18 10:44:50', '<!-- wp:shortcode -->\n[events   limit=5 class=\'event\']\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[][/]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 10:44:50', '2019-07-18 10:44:50', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(286, 1, '2019-07-18 10:45:25', '2019-07-18 10:45:25', '<!-- wp:shortcode -->\n[events   limit=5 class=\'event\']\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[number_series]Dhruvil Chauhan[/number_series]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 10:45:25', '2019-07-18 10:45:25', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(287, 1, '2019-07-18 10:47:06', '2019-07-18 10:47:06', '<!-- wp:shortcode -->\n[events   limit=5 class=\'event\']\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[number_series]Dhruvil Chauhan[/number_series]\n<!-- /wp:shortcode -->', '', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 10:47:06', '2019-07-18 10:47:06', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(288, 1, '2019-07-18 10:48:07', '2019-07-18 10:48:07', '<!-- wp:shortcode -->\n[events   limit=5 class=\'event\']\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[number_series]Dhruvil Chauhan[/number_series]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 10:48:07', '2019-07-18 10:48:07', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(289, 1, '2019-07-18 11:44:12', '2019-07-18 11:44:12', '<!-- wp:shortcode -->\n[events   limit=5 class=\'event\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 11:44:12', '2019-07-18 11:44:12', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(290, 1, '2019-07-18 13:09:39', '2019-07-18 13:09:39', '<!-- wp:shortcode -->\n[events   posts_per_page=5 class=\'event\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 13:09:39', '2019-07-18 13:09:39', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(291, 1, '2019-07-18 13:10:33', '2019-07-18 13:10:33', '<!-- wp:shortcode -->\n[events   limit=5 class=\'event\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 13:10:33', '2019-07-18 13:10:33', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(292, 1, '2019-07-18 13:19:56', '2019-07-18 13:19:56', '<!-- wp:shortcode -->\n[events   limit=5 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 13:19:56', '2019-07-18 13:19:56', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(293, 1, '2019-07-18 13:26:29', '2019-07-18 13:26:29', '<!-- wp:shortcode -->\n[events   limit=5 order=ASC]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 13:26:29', '2019-07-18 13:26:29', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(294, 1, '2019-07-18 13:26:45', '2019-07-18 13:26:45', '<!-- wp:shortcode -->\n[events   limit=5 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 13:26:45', '2019-07-18 13:26:45', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(295, 1, '2019-07-18 13:28:59', '2019-07-18 13:28:59', 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2019-07-18 13:28:59', '2019-07-18 13:28:59', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(296, 1, '2019-07-18 13:29:07', '2019-07-18 13:29:07', '{\n    \"site_icon\": {\n        \"value\": 295,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-18 13:29:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c7f70180-6820-4081-81b8-f8c9c48b6b5f', '', '', '2019-07-18 13:29:07', '2019-07-18 13:29:07', '', 0, 'http://localhost/dhruvil/wp/wp_learn/c7f70180-6820-4081-81b8-f8c9c48b6b5f/', 0, 'customize_changeset', '', 0),
(297, 1, '2019-07-18 13:30:20', '2019-07-18 13:30:20', 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2019-07-18 13:30:20', '2019-07-18 13:30:20', '', 0, 'http://localhost/dhruvil/wp/wp_learn/wp-content/uploads/2019/07/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(298, 1, '2019-07-18 13:30:35', '2019-07-18 13:30:35', '{\n    \"site_icon\": {\n        \"value\": 297,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-18 13:30:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '11f625f5-c246-470d-96bf-d83d0dc9803e', '', '', '2019-07-18 13:30:35', '2019-07-18 13:30:35', '', 0, 'http://localhost/dhruvil/wp/wp_learn/11f625f5-c246-470d-96bf-d83d0dc9803e/', 0, 'customize_changeset', '', 0),
(299, 1, '2019-07-18 13:35:13', '2019-07-18 13:35:13', '<!-- wp:shortcode -->\n[events   limit=2 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 13:35:13', '2019-07-18 13:35:13', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(300, 1, '2019-07-18 13:35:51', '2019-07-18 13:35:51', '<!-- wp:shortcode -->\n[events   limit=2 order=\'DESC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 13:35:51', '2019-07-18 13:35:51', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(301, 1, '2019-07-18 13:36:00', '2019-07-18 13:36:00', '<!-- wp:shortcode -->\n[events   limit=2 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-18 13:36:00', '2019-07-18 13:36:00', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(302, 1, '2019-07-19 04:57:42', '2019-07-19 04:57:42', '<!-- wp:shortcode -->\n[events   limit=4 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-19 04:57:42', '2019-07-19 04:57:42', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(303, 1, '2019-07-19 05:28:03', '2019-07-19 05:28:03', '<!-- wp:shortcode -->\n[events   limit=5 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-19 05:28:03', '2019-07-19 05:28:03', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(304, 1, '2019-07-19 05:28:16', '2019-07-19 05:28:16', '<!-- wp:shortcode -->\n[events   limit=1 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-19 05:28:16', '2019-07-19 05:28:16', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(305, 1, '2019-07-19 05:28:33', '2019-07-19 05:28:33', '<!-- wp:shortcode -->\n[events   limit=4 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-19 05:28:33', '2019-07-19 05:28:33', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(306, 1, '2019-07-19 10:39:50', '2019-07-19 10:39:50', '<!-- wp:shortcode -->\n[events   limit=6 order=\'ASC\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-07-19 10:39:50', '2019-07-19 10:39:50', '', 118, 'http://localhost/dhruvil/wp/wp_learn/118-revision-v1/', 0, 'revision', '', 0),
(307, 1, '2019-07-19 11:27:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-19 11:27:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?page_id=307', 0, 'page', '', 0),
(308, 1, '2019-07-19 11:28:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-19 11:28:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?page_id=308', 0, 'page', '', 0),
(309, 1, '2019-07-19 11:29:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-19 11:29:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?page_id=309', 0, 'page', '', 0),
(310, 1, '2019-07-22 04:58:57', '2019-07-22 04:58:57', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-07-22 04:58:58', '2019-07-22 04:58:58', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?page_id=310', 0, 'page', '', 0),
(311, 1, '2019-07-22 04:58:57', '2019-07-22 04:58:57', ' ', '', '', 'publish', 'closed', 'closed', '', '311', '', '', '2019-07-22 04:58:57', '2019-07-22 04:58:57', '', 0, 'http://localhost/dhruvil/wp/wp_learn/311/', 18, 'nav_menu_item', '', 0),
(312, 1, '2019-07-22 04:58:57', '2019-07-22 04:58:57', '', 'About', '', 'inherit', 'closed', 'closed', '', '310-revision-v1', '', '', '2019-07-22 04:58:57', '2019-07-22 04:58:57', '', 310, 'http://localhost/dhruvil/wp/wp_learn/310-revision-v1/', 0, 'revision', '', 0),
(313, 1, '2019-07-23 07:19:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-23 07:19:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/dhruvil/wp/wp_learn/?p=313', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'D1', 'd1', 0),
(3, 'h1', 'h1_posts', 0),
(4, 'HTML', 'html_posts', 0),
(5, 'Header Menu', 'header-menu', 0),
(6, 'Gaming', 'gaming', 0),
(7, 'Seminars', 'seminars', 0),
(8, 'Product Launches', 'product-launches', 0),
(9, 'Theme Parties', 'theme-parties', 0),
(10, 'Family Events', 'family-events', 0),
(11, 'Music', 'music', 0),
(12, 'School Events', 'school-events', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(119, 5, 0),
(121, 5, 0),
(123, 5, 0),
(124, 5, 0),
(125, 5, 0),
(132, 5, 0),
(143, 5, 0),
(147, 5, 0),
(160, 6, 0),
(166, 9, 0),
(168, 9, 0),
(170, 10, 0),
(172, 10, 0),
(174, 7, 0),
(176, 9, 0),
(176, 11, 0),
(176, 12, 0),
(178, 8, 0),
(180, 12, 0),
(183, 8, 0),
(185, 6, 0),
(191, 5, 0),
(194, 5, 0),
(195, 5, 0),
(196, 5, 0),
(197, 5, 0),
(198, 5, 0),
(199, 5, 0),
(200, 5, 0),
(220, 6, 0),
(276, 5, 0),
(311, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', 'h1vcdsfgg', 0, 0),
(4, 4, 'post_tag', 'this is first post ', 0, 0),
(5, 5, 'nav_menu', '', 0, 18),
(6, 6, 'event_type', 'All type of games', 0, 3),
(7, 7, 'event_type', 'All Types of seminars, meetings, conferences', 0, 1),
(8, 8, 'event_type', 'All type of product launching.', 0, 2),
(9, 9, 'event_type', 'All type of theme parties.', 0, 3),
(10, 10, 'event_type', 'All type of family events', 0, 2),
(11, 11, 'event_type', 'All type of music events', 0, 1),
(12, 12, 'event_type', 'All type of school events.', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"bb421911f0f69ff812ebfb468098f5a3239a733d01feffc43ca407ac5418aa26\";a:4:{s:10:\"expiration\";i:1563944157;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1563771357;}s:64:\"a9ba8ea740846caee31e1e9df3600ac95b1866e746b95dbeda5277072f9c6ec4\";a:4:{s:10:\"expiration\";i:1564030026;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1563857226;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '14'),
(18, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list&post_dfw=off&hidetb=0&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1563876610'),
(22, 1, 'nav_menu_recently_edited', '5'),
(23, 1, 'enable_custom_fields', '1'),
(24, 1, 'closedpostboxes_event', 'a:5:{i:0;s:13:\"event_typediv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:11:\"commentsdiv\";}'),
(25, 1, 'metaboxhidden_event', 'a:0:{}'),
(26, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"postcustom\";}'),
(27, 1, 'metaboxhidden_page', 'a:0:{}'),
(28, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(29, 1, 'edit_event_type_per_page', '20'),
(30, 1, 'edit_event_per_page', '20'),
(31, 1, 'meta-box-order_event', 'a:3:{s:4:\"side\";s:36:\"submitdiv,event_typediv,postimagediv\";s:6:\"normal\";s:68:\"your_fields_meta_box,postcustom,commentstatusdiv,slugdiv,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(32, 1, 'screen_layout_event', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BIV0jMy7fAmDjSqUWnq..uFki9WtDm1', 'admin', 'chauhan9727@gmail.com', '', '2019-07-08 06:20:45', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
