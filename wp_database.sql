-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 05, 2019 at 08:51 PM
-- Server version: 10.1.37-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_database`
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-18 22:24:54', '2019-02-18 22:24:54', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
-- Table structure for table `wp_mail_bank`
--

CREATE TABLE `wp_mail_bank` (
  `id` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_mail_bank`
--

INSERT INTO `wp_mail_bank` (`id`, `type`, `parent_id`) VALUES
(1, 'email_configuration', 0),
(2, 'email_logs', 0),
(3, 'settings', 0),
(4, 'collation_type', 0),
(5, 'notifications', 0),
(6, 'roles_and_capabilities', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_mail_bank_logs`
--

CREATE TABLE `wp_mail_bank_logs` (
  `id` int(11) NOT NULL,
  `email_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `sender_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debug_mode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debugging_output` longtext COLLATE utf8mb4_unicode_ci,
  `timestamp` int(20) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_mail_bank_logs`
--

INSERT INTO `wp_mail_bank_logs` (`id`, `email_to`, `cc`, `bcc`, `subject`, `content`, `sender_name`, `sender_email`, `debug_mode`, `debugging_output`, `timestamp`, `status`) VALUES
(1, 'vimpil@ya.ru', '', '', 'Test Email - Mail Bank', '<p>This is a demo Email for Email Setup - Mail Bank</p>', 'TestServer', 'vimpil@ya.ru', 'enable', '\'\' does not match the expected structure for a DNS hostname, \'\' does not appear to be a valid URI hostname, \'\' does not appear to be a valid local network name', 1551317749, 'Not Sent');

-- --------------------------------------------------------

--
-- Table structure for table `wp_mail_bank_meta`
--

CREATE TABLE `wp_mail_bank_meta` (
  `id` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_mail_bank_meta`
--

INSERT INTO `wp_mail_bank_meta` (`id`, `meta_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'email_configuration', 'a:22:{s:13:\"email_address\";s:12:\"vimpil@ya.ru\";s:8:\"reply_to\";s:0:\"\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:7:\"headers\";s:0:\"\";s:11:\"mailer_type\";s:4:\"smtp\";s:11:\"sender_name\";s:10:\"TestServer\";s:8:\"hostname\";s:0:\"\";s:4:\"port\";s:3:\"587\";s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:12:\"redirect_uri\";s:0:\"\";s:12:\"sender_email\";s:12:\"vimpil@ya.ru\";s:9:\"auth_type\";s:5:\"login\";s:8:\"username\";s:12:\"vimpil@ya.ru\";s:8:\"password\";s:0:\"\";s:8:\"enc_type\";s:3:\"tls\";s:16:\"sendgrid_api_key\";s:0:\"\";s:15:\"mailgun_api_key\";s:0:\"\";s:19:\"mailgun_domain_name\";s:0:\"\";s:24:\"from_email_configuration\";s:8:\"override\";s:25:\"sender_name_configuration\";s:8:\"override\";}'),
(2, 3, 'settings', 'a:7:{s:23:\"automatic_plugin_update\";s:7:\"disable\";s:14:\"fetch_settings\";s:15:\"individual_site\";s:10:\"debug_mode\";s:6:\"enable\";s:26:\"remove_tables_at_uninstall\";s:7:\"disable\";s:18:\"monitor_email_logs\";s:6:\"enable\";s:15:\"auto_clear_logs\";s:7:\"disable\";s:17:\"delete_logs_after\";s:4:\"1day\";}'),
(3, 5, 'notifications', 'a:6:{s:12:\"notification\";s:7:\"disable\";s:20:\"notification_service\";s:5:\"email\";s:26:\"notification_email_address\";s:12:\"vimpil@ya.ru\";s:17:\"pushover_user_key\";s:0:\"\";s:18:\"pushover_app_token\";s:0:\"\";s:14:\"slack_web_hook\";s:0:\"\";}'),
(4, 6, 'roles_and_capabilities', 'a:10:{s:22:\"roles_and_capabilities\";s:11:\"1,1,1,0,0,0\";s:27:\"show_mail_bank_top_bar_menu\";s:6:\"enable\";s:30:\"others_full_control_capability\";s:1:\"0\";s:24:\"administrator_privileges\";s:19:\"1,1,1,1,1,1,1,1,1,1\";s:17:\"author_privileges\";s:19:\"0,0,1,0,0,0,0,0,0,0\";s:17:\"editor_privileges\";s:19:\"0,0,1,0,0,0,1,0,0,0\";s:22:\"contributor_privileges\";s:19:\"0,0,0,0,0,0,1,0,0,0\";s:21:\"subscriber_privileges\";s:19:\"0,0,0,0,0,0,0,0,0,0\";s:22:\"other_roles_privileges\";s:19:\"0,0,0,0,0,0,0,0,0,0\";s:12:\"capabilities\";a:7:{i:0;s:14:\"manage_options\";i:1;s:12:\"edit_plugins\";i:2;s:10:\"edit_posts\";i:3;s:13:\"publish_posts\";i:4;s:13:\"publish_pages\";i:5;s:10:\"edit_pages\";i:6;s:4:\"read\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_mappress_maps`
--

CREATE TABLE `wp_mappress_maps` (
  `mapid` int(11) NOT NULL,
  `obj` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mappress_posts`
--

CREATE TABLE `wp_mappress_posts` (
  `postid` int(11) NOT NULL,
  `mapid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'siteurl', 'http://localhost/', 'yes'),
(2, 'home', 'http://localhost/', 'yes'),
(3, 'blogname', 'TestServer', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vimpil@ya.ru', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:27:\"leaflet-map/leaflet-map.php\";i:2;s:25:\"menu-image/menu-image.php\";i:3;s:33:\"simple-sitemap/simple-sitemap.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:24:\"wordpress-seo/wp-seo.php\";i:6;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:7;s:33:\"wp-php-console/wp-php-console.php\";i:8;s:33:\"wp-phpmyadmin-extension/index.php\";i:9;s:24:\"wpforms-lite/wpforms.php\";i:10;s:38:\"yith-woocommerce-catalog-mode/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:61:\"/var/www/html/wp-content/themes/html_vosim_wp_theme/style.css\";i:2;s:52:\"/var/www/html/wp-content/plugins/akismet/akismet.php\";i:3;s:65:\"/var/www/html/wp-content/themes/html_vosim_wp_theme/functions.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'html_vosim_wp_theme', 'yes'),
(41, 'stylesheet', 'html_vosim_wp_theme', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:17:\"swpsmtp_uninstall\";s:37:\"optinmonster/optin-monster-wp-api.php\";s:32:\"optin_monster_api_uninstall_hook\";s:27:\"leaflet-map/leaflet-map.php\";a:2:{i:0;s:11:\"Leaflet_Map\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '1547', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:117:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:36:\"wpml_manage_woocommerce_multilingual\";b:1;s:37:\"wpml_operate_woocommerce_multilingual\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:37:\"wpml_operate_woocommerce_multilingual\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'cron', 'a:16:{i:1557074201;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1557077092;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557077772;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1557088034;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557095092;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557095093;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557095107;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557100800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557106736;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557114971;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557136188;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557136571;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557136581;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557147371;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559433600;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'fresh_site', '0', 'yes'),
(109, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1550533481;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'current_theme', '', 'yes'),
(133, 'theme_mods_html_vosim_wp_theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(139, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'wp_php_console', 'a:6:{s:2:\"ip\";s:0:\"\";s:8:\"password\";s:1:\"1\";s:8:\"register\";b:0;s:5:\"short\";b:0;s:3:\"ssl\";b:0;s:5:\"stack\";b:0;}', 'yes'),
(175, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(281, 'db_upgraded', '', 'yes'),
(286, 'can_compress_scripts', '0', 'no'),
(345, 'wicked_folders_post_types', 'a:1:{i:0;s:4:\"page\";}', 'yes'),
(346, 'wicked_folders_dynamic_folder_post_types', 'a:1:{i:0;s:4:\"page\";}', 'yes'),
(347, 'wicked_folders_taxonomies', 'a:1:{i:0;s:15:\"wf_page_folders\";}', 'yes'),
(348, 'wicked_folders_enable_folder_pages', '0', 'yes'),
(349, 'wicked_folders_tax_name_migration_done', '1', 'yes'),
(473, 'yit_recently_activated', 'a:2:{i:0;s:38:\"yith-woocommerce-catalog-mode/init.php\";i:1;s:38:\"yith-woocommerce-catalog-mode/init.php\";}', 'yes'),
(478, 'woocommerce_store_address', '', 'yes'),
(479, 'woocommerce_store_address_2', '', 'yes'),
(480, 'woocommerce_store_city', '', 'yes'),
(481, 'woocommerce_default_country', 'GB', 'yes'),
(482, 'woocommerce_store_postcode', '', 'yes'),
(483, 'woocommerce_allowed_countries', 'all', 'yes'),
(484, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(485, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(486, 'woocommerce_ship_to_countries', '', 'yes'),
(487, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(488, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(489, 'woocommerce_calc_taxes', 'no', 'yes'),
(490, 'woocommerce_enable_coupons', 'yes', 'yes'),
(491, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(492, 'woocommerce_currency', 'RUB', 'yes'),
(493, 'woocommerce_currency_pos', 'left', 'yes'),
(494, 'woocommerce_price_thousand_sep', ',', 'yes'),
(495, 'woocommerce_price_decimal_sep', '.', 'yes'),
(496, 'woocommerce_price_num_decimals', '2', 'yes'),
(497, 'woocommerce_shop_page_id', '', 'yes'),
(498, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(499, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(500, 'woocommerce_placeholder_image', '', 'yes'),
(501, 'woocommerce_weight_unit', 'kg', 'yes'),
(502, 'woocommerce_dimension_unit', 'cm', 'yes'),
(503, 'woocommerce_enable_reviews', 'yes', 'yes'),
(504, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(505, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(506, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(507, 'woocommerce_review_rating_required', 'yes', 'no'),
(508, 'woocommerce_manage_stock', 'yes', 'yes'),
(509, 'woocommerce_hold_stock_minutes', '60', 'no'),
(510, 'woocommerce_notify_low_stock', 'yes', 'no'),
(511, 'woocommerce_notify_no_stock', 'yes', 'no'),
(512, 'woocommerce_stock_email_recipient', 'vimpil@ya.ru', 'no'),
(513, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(514, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(515, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(516, 'woocommerce_stock_format', '', 'yes'),
(517, 'woocommerce_file_download_method', 'force', 'no'),
(518, 'woocommerce_downloads_require_login', 'no', 'no'),
(519, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(520, 'woocommerce_prices_include_tax', 'no', 'yes'),
(521, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(522, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(523, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(524, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(525, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(526, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(527, 'woocommerce_price_display_suffix', '', 'yes'),
(528, 'woocommerce_tax_total_display', 'itemized', 'no'),
(529, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(530, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(531, 'woocommerce_ship_to_destination', 'billing', 'no'),
(532, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(533, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(534, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(535, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(536, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(537, 'woocommerce_registration_generate_username', 'yes', 'no'),
(538, 'woocommerce_registration_generate_password', 'yes', 'no'),
(539, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(540, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(541, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(542, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(543, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(544, 'woocommerce_trash_pending_orders', '', 'no'),
(545, 'woocommerce_trash_failed_orders', '', 'no'),
(546, 'woocommerce_trash_cancelled_orders', '', 'no'),
(547, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(548, 'woocommerce_email_from_name', 'TestServer', 'no'),
(549, 'woocommerce_email_from_address', 'vimpil@ya.ru', 'no'),
(550, 'woocommerce_email_header_image', '', 'no'),
(551, 'woocommerce_email_footer_text', '{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(552, 'woocommerce_email_base_color', '#96588a', 'no'),
(553, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(554, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(555, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(556, 'woocommerce_cart_page_id', '', 'yes'),
(557, 'woocommerce_checkout_page_id', '', 'yes'),
(558, 'woocommerce_myaccount_page_id', '', 'yes'),
(559, 'woocommerce_terms_page_id', '', 'no'),
(560, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(561, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(562, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(563, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(564, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(565, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(566, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(567, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(568, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(569, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(570, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(571, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(572, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(573, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(574, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(575, 'woocommerce_api_enabled', 'no', 'yes'),
(576, 'woocommerce_single_image_width', '600', 'yes'),
(577, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(578, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(579, 'woocommerce_demo_store', 'no', 'no'),
(580, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:1;}', 'yes'),
(581, 'current_theme_supports_woocommerce', 'no', 'yes'),
(582, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(583, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(585, 'default_product_cat', '19', 'yes'),
(590, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:1;s:10:\"wootenberg\";}', 'yes'),
(595, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(596, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(597, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(598, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(599, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(600, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(601, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(602, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(603, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(604, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(605, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(606, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(607, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(615, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(621, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(623, 'ywctm_general_videobox', 'a:7:{s:11:\"plugin_name\";s:29:\"YITH WooCommerce Catalog Mode\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:93:\"Upgrade to the PREMIUM VERSION of YITH WooCommerce Catalog Mode to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"120697979\";s:15:\"video_image_url\";s:113:\"http://localhost/wp-content/plugins/yith-woocommerce-catalog-mode/assets/images/yith-woocommerce-catalog-mode.jpg\";s:17:\"video_description\";s:29:\"YITH WooCommerce Catalog Mode\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:66:\"https://yithemes.com/themes/plugins/yith-woocommerce-catalog-mode/\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(624, 'ywctm_enable_plugin', 'yes', 'yes'),
(625, 'ywctm_hide_add_to_cart_single', 'no', 'yes'),
(626, 'ywctm_hide_add_to_cart_loop', 'no', 'yes'),
(627, 'ywctm_admin_view', 'yes', 'yes'),
(628, 'ywctm_hide_cart_header', 'no', 'yes'),
(629, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:26:\"yith_wc_catalog_mode_panel\";b:1;}', 'yes'),
(630, '_site_transient_timeout_yith_promo_message', '3102396440', 'no'),
(631, '_site_transient_yith_promo_message', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:4:\"date\";s:29:\"Tue, 26 Feb 2019 04:23:39 GMT\";s:12:\"content-type\";s:15:\"application/xml\";s:10:\"set-cookie\";s:137:\"__cfduid=d9aa5f1c6e34f78e23bf211f1de70694a1551155019; expires=Wed, 26-Feb-20 04:23:39 GMT; path=/; domain=.yithemes.com; HttpOnly; Secure\";s:13:\"last-modified\";s:29:\"Fri, 07 Dec 2018 08:48:51 GMT\";s:9:\"expect-ct\";s:87:\"max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\";s:6:\"server\";s:10:\"cloudflare\";s:6:\"cf-ray\";s:20:\"4aefa339e98cc2ba-FRA\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:4:\"body\";s:1566:\"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2018-12-15</expiry_date>\n    <promo>\n        <promo_id>yithblackfridaydeal2018</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <banner>black.jpg</banner>\n        <description>30% discount on any of our products! Valid from 22nd November to 25th November.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n        </style>\n        <start_date>2018-11-22 00:00:00</start_date>\n        <end_date>2018-11-25 23:59:59</end_date>\n    </promo>\n    <promo>\n        <promo_id>yithcybermonday2018</promo_id>\n        <title><![CDATA[<strong>YITH Cyber Monday</strong>]]></title>\n        <banner>cyber.jpg</banner>\n        <description>30% discount on any of our products! Valid only on November 26th.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#12fdd4</image_bg_color>\n        </style>\n        <start_date>2018-11-26 00:00:00</start_date>\n        <end_date>2018-11-27 07:00:00</end_date>\n    </promo>\n</promotions>\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:1:{i:0;O:14:\"WP_Http_Cookie\":5:{s:4:\"name\";s:8:\"__cfduid\";s:5:\"value\";s:43:\"d9aa5f1c6e34f78e23bf211f1de70694a1551155019\";s:7:\"expires\";i:1582691019;s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:12:\"yithemes.com\";}}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:1566:\"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2018-12-15</expiry_date>\n    <promo>\n        <promo_id>yithblackfridaydeal2018</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <banner>black.jpg</banner>\n        <description>30% discount on any of our products! Valid from 22nd November to 25th November.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n        </style>\n        <start_date>2018-11-22 00:00:00</start_date>\n        <end_date>2018-11-25 23:59:59</end_date>\n    </promo>\n    <promo>\n        <promo_id>yithcybermonday2018</promo_id>\n        <title><![CDATA[<strong>YITH Cyber Monday</strong>]]></title>\n        <banner>cyber.jpg</banner>\n        <description>30% discount on any of our products! Valid only on November 26th.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#12fdd4</image_bg_color>\n        </style>\n        <start_date>2018-11-26 00:00:00</start_date>\n        <end_date>2018-11-27 07:00:00</end_date>\n    </promo>\n</promotions>\";s:3:\"raw\";s:2071:\"HTTP/1.1 200 OK\r\nDate: Tue, 26 Feb 2019 04:23:39 GMT\r\nContent-Type: application/xml\r\nTransfer-Encoding: chunked\r\nConnection: close\r\nSet-Cookie: __cfduid=d9aa5f1c6e34f78e23bf211f1de70694a1551155019; expires=Wed, 26-Feb-20 04:23:39 GMT; path=/; domain=.yithemes.com; HttpOnly; Secure\r\nLast-Modified: Fri, 07 Dec 2018 08:48:51 GMT\r\nExpect-CT: max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\r\nServer: cloudflare\r\nCF-RAY: 4aefa339e98cc2ba-FRA\r\nContent-Encoding: gzip\r\n\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2018-12-15</expiry_date>\n    <promo>\n        <promo_id>yithblackfridaydeal2018</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <banner>black.jpg</banner>\n        <description>30% discount on any of our products! Valid from 22nd November to 25th November.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n        </style>\n        <start_date>2018-11-22 00:00:00</start_date>\n        <end_date>2018-11-25 23:59:59</end_date>\n    </promo>\n    <promo>\n        <promo_id>yithcybermonday2018</promo_id>\n        <title><![CDATA[<strong>YITH Cyber Monday</strong>]]></title>\n        <banner>cyber.jpg</banner>\n        <description>30% discount on any of our products! Valid only on November 26th.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#12fdd4</image_bg_color>\n        </style>\n        <start_date>2018-11-26 00:00:00</start_date>\n        <end_date>2018-11-27 07:00:00</end_date>\n    </promo>\n</promotions>\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:8:{s:4:\"date\";a:1:{i:0;s:29:\"Tue, 26 Feb 2019 04:23:39 GMT\";}s:12:\"content-type\";a:1:{i:0;s:15:\"application/xml\";}s:10:\"set-cookie\";a:1:{i:0;s:137:\"__cfduid=d9aa5f1c6e34f78e23bf211f1de70694a1551155019; expires=Wed, 26-Feb-20 04:23:39 GMT; path=/; domain=.yithemes.com; HttpOnly; Secure\";}s:13:\"last-modified\";a:1:{i:0;s:29:\"Fri, 07 Dec 2018 08:48:51 GMT\";}s:9:\"expect-ct\";a:1:{i:0;s:87:\"max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\";}s:6:\"server\";a:1:{i:0;s:10:\"cloudflare\";}s:6:\"cf-ray\";a:1:{i:0;s:20:\"4aefa339e98cc2ba-FRA\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1000000000000001;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://update.yithemes.com/promo/hotlink-ok/yith-promo.xml\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:1:{s:8:\"__cfduid\";O:15:\"Requests_Cookie\":5:{s:4:\"name\";s:8:\"__cfduid\";s:5:\"value\";s:43:\"d9aa5f1c6e34f78e23bf211f1de70694a1551155019\";s:10:\"attributes\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:5:{s:7:\"expires\";i:1582691019;s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:12:\"yithemes.com\";s:8:\"httponly\";b:1;s:6:\"secure\";b:1;}}s:5:\"flags\";a:4:{s:8:\"creation\";i:1551155020;s:11:\"last-access\";i:1551155020;s:10:\"persistent\";b:0;s:9:\"host-only\";b:0;}s:14:\"reference_time\";i:1551155020;}}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no'),
(632, '_transient_product_query-transient-version', '1556987949', 'yes'),
(878, 'wp_mail_smtp_initial_version', '1.4.1', 'no'),
(879, 'wp_mail_smtp_version', '1.4.1', 'no'),
(880, 'wp_mail_smtp', 'a:5:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:12:\"vimpil@ya.ru\";s:9:\"from_name\";s:10:\"TestServer\";s:6:\"mailer\";s:5:\"gmail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"auth\";b:0;}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}s:5:\"gmail\";a:5:{s:9:\"client_id\";s:73:\"1056597555065-dddubcvob6skdiqhoavfbm5m8inlrint.apps.googleusercontent.com\";s:13:\"client_secret\";s:24:\"HkaGWwC37TLKb-Wl0J-i3aRg\";s:9:\"auth_code\";s:89:\"4/_wAwcKOcn0oFy1FK5HqDVScrLeYZFfPsbXgWTVxoEje9rEVN3XD_pDFjI4p7eY1uphnCf49rD0qqx3lkWEpzeIk\";s:12:\"access_token\";a:6:{s:12:\"access_token\";s:132:\"ya29.Gl3_Buueux1-SgOEoE1h2Au7lKis7P_uVbXJuTwB2qZxK_2VmvWtQMH3Y3EOZ-1Knopt1jJ8Cw8F4pQ2gC8Vays3uvknQuLmlCQqkEZKHVPdu4CySb5W_DCiwspzEYc\";s:10:\"expires_in\";i:3600;s:5:\"scope\";s:24:\"https://mail.google.com/\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1556921402;s:13:\"refresh_token\";s:45:\"1/ED5mm2Q9LUcAWOuj6ABu31KrbcVYkIUbJFIOXK4B8mA\";}s:13:\"refresh_token\";s:45:\"1/ED5mm2Q9LUcAWOuj6ABu31KrbcVYkIUbJFIOXK4B8mA\";}}', 'no'),
(881, '_amn_smtp_last_checked', '1557014400', 'yes'),
(894, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(1056, 'swpsmtp_options', 'a:8:{s:16:\"from_email_field\";s:12:\"vimpil@ya.ru\";s:15:\"from_name_field\";s:6:\"Kirill\";s:23:\"force_from_name_replace\";b:0;s:13:\"smtp_settings\";a:9:{s:4:\"host\";s:14:\"smtp.gmail.com\";s:15:\"type_encryption\";s:3:\"ssl\";s:4:\"port\";s:2:\"25\";s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:12:\"enable_debug\";b:0;s:12:\"insecure_ssl\";b:0;s:12:\"encrypt_pass\";b:0;}s:15:\"allowed_domains\";s:12:\"bG9jYWxob3N0\";s:14:\"reply_to_email\";s:0:\"\";s:17:\"email_ignore_list\";s:0:\"\";s:19:\"enable_domain_check\";b:0;}', 'yes'),
(1065, 'smtp_test_mail', 'a:3:{s:10:\"swpsmtp_to\";s:18:\"vimpil04@gmail.com\";s:15:\"swpsmtp_subject\";s:1:\"1\";s:15:\"swpsmtp_message\";s:1:\"1\";}', 'yes'),
(1083, 'mb_admin_notice', 'a:1:{s:15:\"two_week_review\";a:3:{s:5:\"start\";s:10:\"03/07/2019\";s:3:\"int\";i:7;s:9:\"dismissed\";i:0;}}', 'yes'),
(1084, 'mail_bank_update_database', 'mail_bank_update_database', 'yes'),
(1085, 'mail-bank-version-number', '3.0.6', 'yes'),
(1088, 'mail-bank-admin-email', 'vimpil@ya.ru', 'yes'),
(1089, 'mb_tech_banker_site_id', '128677', 'yes'),
(1091, 'mail_bank_mail_status', '\'\' does not match the expected structure for a DNS hostname, \'\' does not appear to be a valid URI hostname, \'\' does not appear to be a valid local network name', 'yes'),
(1092, 'mail_bank_is_mail_sent', 'Not Sent', 'yes'),
(1351, 'wpforms_version', '1.5.1.1', 'yes'),
(1352, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1551410552;}', 'yes'),
(1355, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1356, '_amn_wpforms-lite_last_checked', '1557014400', 'yes'),
(1357, 'wpforms_review', 'a:2:{s:4:\"time\";i:1551410554;s:9:\"dismissed\";b:0;}', 'yes'),
(2037, 'jvcf7_show_label_error', 'errorMsgshow', 'yes'),
(2038, 'jvcf7_invalid_field_design', 'theme_1', 'yes'),
(2195, 'content_mask_user_agent_header', '', 'yes'),
(2196, 'content_mask_tracking', '', 'yes'),
(2651, 'widget_optin-monster-api', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2655, '_amn_om_last_checked', '1551744000', 'yes'),
(2656, 'optin_monster_viewed_welcome', '1', 'yes'),
(3887, '_transient_product-transient-version', '1556987949', 'yes'),
(4578, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:12:\"vimpil@ya.ru\";s:7:\"version\";s:5:\"5.1.1\";s:9:\"timestamp\";i:1552447014;}', 'no'),
(5375, 'better-font-awesome_options', 'a:4:{s:7:\"version\";s:6:\"latest\";s:8:\"minified\";i:1;s:18:\"remove_existing_fa\";s:0:\"\";s:18:\"hide_admin_notices\";s:0:\"\";}', 'yes'),
(6256, 'mappress_options', 'a:44:{s:9:\"alignment\";s:0:\"\";s:9:\"autoicons\";N;s:10:\"autoupdate\";N;s:6:\"apiKey\";s:0:\"\";s:12:\"apiKeyServer\";N;s:11:\"autodisplay\";s:3:\"top\";s:5:\"betas\";N;s:7:\"country\";s:2:\"RU\";s:3:\"css\";b:1;s:11:\"defaultIcon\";N;s:10:\"deregister\";b:0;s:10:\"directions\";s:6:\"google\";s:16:\"directionsServer\";s:23:\"https://maps.google.com\";s:6:\"engine\";s:7:\"leaflet\";s:6:\"filter\";N;s:6:\"footer\";b:1;s:9:\"iconScale\";N;s:15:\"initialOpenInfo\";b:0;s:6:\"iwType\";s:2:\"iw\";s:8:\"language\";s:2:\"ru\";s:6:\"layout\";s:4:\"left\";s:7:\"license\";N;s:6:\"mapbox\";s:0:\"\";s:11:\"mapboxCache\";i:0;s:12:\"mapboxStyles\";a:0:{}s:10:\"mashupBody\";s:3:\"poi\";s:11:\"mashupClick\";s:3:\"poi\";s:8:\"metaKeys\";a:0:{}s:12:\"metaSyncSave\";b:1;s:7:\"poiList\";b:0;s:7:\"poiZoom\";s:2:\"15\";s:9:\"postTypes\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"radius\";i:15;s:6:\"search\";b:1;s:4:\"size\";s:1:\"1\";s:5:\"sizes\";a:3:{i:0;a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}i:1;a:2:{s:5:\"width\";i:425;s:6:\"height\";i:350;}i:2;a:2:{s:5:\"width\";i:640;s:6:\"height\";i:480;}}s:4:\"sort\";N;s:5:\"style\";N;s:6:\"styles\";a:0:{}s:6:\"thumbs\";b:1;s:9:\"thumbSize\";N;s:10:\"thumbWidth\";i:64;s:11:\"thumbHeight\";i:64;s:5:\"tiles\";s:6:\"google\";}', 'yes'),
(6257, 'mappress_version', '2.52.3', 'yes'),
(8802, '_transient_shipping-transient-version', '1553976451', 'yes'),
(9044, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:6:\"10.1.2\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";b:0;s:13:\"myyoast-oauth\";b:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9045, 'wpseo_titles', 'a:88:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:16:\"showdate-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:26:\"post_types-product-maintax\";s:11:\"product_cat\";s:21:\"title-tax-product_cat\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:31:\"display-metabox-tax-product_cat\";b:1;s:23:\"noindex-tax-product_cat\";b:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:21:\"title-tax-product_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:31:\"display-metabox-tax-product_tag\";b:1;s:23:\"noindex-tax-product_tag\";b:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:32:\"title-tax-product_shipping_class\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:42:\"display-metabox-tax-product_shipping_class\";b:1;s:34:\"noindex-tax-product_shipping_class\";b:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;}', 'yes'),
(9046, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(9047, 'wpseo_flush_rewrite', '1', 'yes'),
(9049, '_transient_timeout_wpseo_link_table_inaccessible', '1585561787', 'no'),
(9050, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(9052, '_transient_timeout_wpseo_meta_table_inaccessible', '1585561787', 'no'),
(9053, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(9115, 'woocommerce_version', '3.5.7', 'yes'),
(9116, 'woocommerce_db_version', '3.5.7', 'yes'),
(9227, 'wpseo_taxonomy_meta', 'a:1:{s:11:\"product_cat\";a:4:{i:23;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:19;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:27;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:29;a:2:{s:13:\"wpseo_linkdex\";s:2:\"37\";s:19:\"wpseo_content_score\";s:2:\"30\";}}}', 'yes'),
(10063, 'wpseo_upgrade_history', 'a:1:{i:1554282027;a:3:{s:7:\"options\";a:4:{s:5:\"wpseo\";a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:6:\"10.0.1\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1554025787;s:13:\"myyoast-oauth\";a:2:{s:6:\"config\";a:2:{s:8:\"clientId\";N;s:6:\"secret\";N;}s:13:\"access_tokens\";a:0:{}}}s:12:\"wpseo_social\";a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}s:19:\"wpseo_taxonomy_meta\";a:1:{s:11:\"product_cat\";a:3:{i:23;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:19;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:27;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"30\";}}}s:12:\"wpseo_titles\";a:88:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:16:\"showdate-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:26:\"post_types-product-maintax\";s:11:\"product_cat\";s:21:\"title-tax-product_cat\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:31:\"display-metabox-tax-product_cat\";b:1;s:23:\"noindex-tax-product_cat\";b:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:21:\"title-tax-product_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:31:\"display-metabox-tax-product_tag\";b:1;s:23:\"noindex-tax-product_tag\";b:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:32:\"title-tax-product_shipping_class\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:42:\"display-metabox-tax-product_shipping_class\";b:1;s:34:\"noindex-tax-product_shipping_class\";b:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;}}s:11:\"old_version\";s:6:\"10.0.1\";s:11:\"new_version\";s:6:\"10.1.2\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(10219, 'wp_installer_settings', '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', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(10228, 'WPLANG', 'ru_RU', 'yes'),
(10229, 'new_admin_email', 'vimpil@ya.ru', 'yes'),
(10372, 'relevanssi_admin_search', 'off', 'yes'),
(10373, 'relevanssi_bg_col', '#ffaf75', 'yes'),
(10374, 'relevanssi_cat', '', 'yes'),
(10375, 'relevanssi_class', 'relevanssi-query-term', 'yes'),
(10376, 'relevanssi_comment_boost', '0.75', 'yes'),
(10377, 'relevanssi_content_boost', '1', 'yes'),
(10378, 'relevanssi_css', 'text-decoration: underline; text-color: #ff0000', 'yes'),
(10379, 'relevanssi_db_version', '5', 'yes'),
(10380, 'relevanssi_default_orderby', 'relevance', 'yes'),
(10381, 'relevanssi_disable_or_fallback', 'off', 'yes'),
(10382, 'relevanssi_exact_match_bonus', 'on', 'yes'),
(10383, 'relevanssi_excat', '', 'yes'),
(10384, 'relevanssi_excerpt_allowable_tags', '', 'yes'),
(10385, 'relevanssi_excerpt_custom_fields', 'off', 'yes'),
(10386, 'relevanssi_excerpt_length', '30', 'yes'),
(10387, 'relevanssi_excerpt_type', 'words', 'yes'),
(10388, 'relevanssi_excerpts', 'on', 'yes'),
(10389, 'relevanssi_exclude_posts', '', 'yes'),
(10390, 'relevanssi_expand_shortcodes', 'off', 'yes'),
(10391, 'relevanssi_extag', '0', 'yes'),
(10392, 'relevanssi_fuzzy', 'sometimes', 'yes'),
(10393, 'relevanssi_highlight', 'strong', 'yes'),
(10394, 'relevanssi_highlight_comments', 'off', 'yes'),
(10395, 'relevanssi_highlight_docs', 'off', 'yes'),
(10396, 'relevanssi_hilite_title', '', 'yes'),
(10397, 'relevanssi_implicit_operator', 'OR', 'yes'),
(10398, 'relevanssi_index_author', 'off', 'yes'),
(10399, 'relevanssi_index_comments', 'none', 'yes'),
(10400, 'relevanssi_index_excerpt', 'off', 'yes'),
(10401, 'relevanssi_index_fields', '', 'yes'),
(10402, 'relevanssi_index_limit', '500', 'yes'),
(10403, 'relevanssi_index_post_types', 'a:14:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:7:\"wpforms\";i:4;s:16:\"scheduled-action\";i:5;s:11:\"wpforms_log\";i:6;s:7:\"product\";i:7;s:17:\"product_variation\";i:8;s:10:\"shop_order\";i:9;s:17:\"shop_order_refund\";i:10;s:11:\"shop_coupon\";i:11;s:8:\"amn_smtp\";i:12;s:16:\"amn_wpforms-lite\";i:13;s:5:\"bogus\";}', 'yes'),
(10404, 'relevanssi_index_taxonomies_list', 'a:10:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:12:\"action-group\";i:4;s:16:\"wpforms_log_type\";i:5;s:12:\"product_type\";i:6;s:18:\"product_visibility\";i:7;s:11:\"product_cat\";i:8;s:11:\"product_tag\";i:9;s:22:\"product_shipping_class\";}', 'yes'),
(10405, 'relevanssi_indexed', 'done', 'yes'),
(10406, 'relevanssi_log_queries', 'off', 'yes'),
(10407, 'relevanssi_log_queries_with_ip', 'off', 'yes'),
(10408, 'relevanssi_min_word_length', '3', 'yes'),
(10409, 'relevanssi_omit_from_logs', '', 'yes'),
(10410, 'relevanssi_polylang_all_languages', 'off', 'yes'),
(10411, 'relevanssi_punctuation', 'a:4:{s:6:\"quotes\";s:7:\"replace\";s:7:\"hyphens\";s:7:\"replace\";s:10:\"ampersands\";s:7:\"replace\";s:8:\"decimals\";s:6:\"remove\";}', 'yes'),
(10412, 'relevanssi_respect_exclude', 'on', 'yes'),
(10413, 'relevanssi_show_matches', '', 'yes'),
(10414, 'relevanssi_show_matches_text', '(Search hits: %body% in body, %title% in title, %categories% in categories, %tags% in tags, %taxonomies% in other taxonomies, %comments% in comments. Score: %score%)', 'yes'),
(10415, 'relevanssi_synonyms', '', 'yes'),
(10416, 'relevanssi_throttle', 'off', 'yes'),
(10417, 'relevanssi_throttle_limit', '500', 'yes'),
(10418, 'relevanssi_title_boost', '5', 'yes'),
(10419, 'relevanssi_txt_col', '#ff0000', 'yes'),
(10420, 'relevanssi_word_boundaries', 'on', 'yes'),
(10421, 'relevanssi_wpml_only_current', 'off', 'yes'),
(10430, 'relevanssi_doc_count', '43', 'yes'),
(10435, 'relevanssi_post_type_weights', 'a:2:{s:8:\"post_tag\";s:1:\"1\";s:8:\"category\";s:1:\"1\";}', 'yes'),
(12500, 'product_cat_children', 'a:3:{i:27;a:2:{i:0;i:19;i:1;i:29;}i:19;a:5:{i:0;i:21;i:1;i:22;i:2;i:23;i:3;i:24;i:4;i:25;}i:29;a:2:{i:0;i:31;i:1;i:32;}}', 'yes'),
(12680, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(12741, '_transient_timeout_wc_shipping_method_count_1_1553976451', '1557848997', 'no'),
(12742, '_transient_wc_shipping_method_count_1_1553976451', '0', 'no'),
(14064, 'rewrite_rules', 'a:200:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:39:\"index.php/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:67:\"index.php/wpforms_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:62:\"index.php/wpforms_log_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:43:\"index.php/wpforms_log_type/([^/]+)/embed/?$\";s:49:\"index.php?wpforms_log_type=$matches[1]&embed=true\";s:55:\"index.php/wpforms_log_type/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?wpforms_log_type=$matches[1]&paged=$matches[2]\";s:37:\"index.php/wpforms_log_type/([^/]+)/?$\";s:38:\"index.php?wpforms_log_type=$matches[1]\";s:65:\"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:60:\"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:41:\"index.php/product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:53:\"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:35:\"index.php/product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:62:\"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:57:\"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:38:\"index.php/product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:50:\"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:32:\"index.php/product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"index.php/product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:38:\"index.php/product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:46:\"index.php/product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:53:\"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"index.php/product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:34:\"index.php/product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"index.php/amn_smtp/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/amn_smtp/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"index.php/amn_smtp/([^/]+)/embed/?$\";s:41:\"index.php?amn_smtp=$matches[1]&embed=true\";s:39:\"index.php/amn_smtp/([^/]+)/trackback/?$\";s:35:\"index.php?amn_smtp=$matches[1]&tb=1\";s:47:\"index.php/amn_smtp/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&paged=$matches[2]\";s:54:\"index.php/amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/amn_smtp/([^/]+)/wc-api(/(.*))?/?$\";s:49:\"index.php?amn_smtp=$matches[1]&wc-api=$matches[3]\";s:50:\"index.php/amn_smtp/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"index.php/amn_smtp/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:43:\"index.php/amn_smtp/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?amn_smtp=$matches[1]&page=$matches[2]\";s:35:\"index.php/amn_smtp/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"index.php/amn_smtp/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"index.php/amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/amn_smtp/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"index.php/amn_wpforms-lite/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:64:\"index.php/amn_wpforms-lite/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:84:\"index.php/amn_wpforms-lite/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:79:\"index.php/amn_wpforms-lite/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:79:\"index.php/amn_wpforms-lite/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:60:\"index.php/amn_wpforms-lite/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"index.php/amn_wpforms-lite/([^/]+)/embed/?$\";s:49:\"index.php?amn_wpforms-lite=$matches[1]&embed=true\";s:47:\"index.php/amn_wpforms-lite/([^/]+)/trackback/?$\";s:43:\"index.php?amn_wpforms-lite=$matches[1]&tb=1\";s:55:\"index.php/amn_wpforms-lite/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?amn_wpforms-lite=$matches[1]&paged=$matches[2]\";s:62:\"index.php/amn_wpforms-lite/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?amn_wpforms-lite=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/amn_wpforms-lite/([^/]+)/wc-api(/(.*))?/?$\";s:57:\"index.php?amn_wpforms-lite=$matches[1]&wc-api=$matches[3]\";s:58:\"index.php/amn_wpforms-lite/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:69:\"index.php/amn_wpforms-lite/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"index.php/amn_wpforms-lite/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?amn_wpforms-lite=$matches[1]&page=$matches[2]\";s:43:\"index.php/amn_wpforms-lite/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"index.php/amn_wpforms-lite/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"index.php/amn_wpforms-lite/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/amn_wpforms-lite/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/amn_wpforms-lite/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"index.php/amn_wpforms-lite/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?&page_id=1547&cpage=$matches[1]\";s:27:\"index.php/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:36:\"index.php/comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:39:\"index.php/search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"index.php/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:72:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:72:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:83:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:35:\"index.php/(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:38:\"index.php/(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:43:\"index.php/(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:35:\"index.php/(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:39:\"index.php/(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:38:\"index.php/(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:44:\"index.php/(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:42:\"index.php/(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:44:\"index.php/(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:47:\"index.php/(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:50:\"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:55:\"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:41:\"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(15926, '_transient_timeout_external_ip_address_::1', '1557321176', 'no'),
(15927, '_transient_external_ip_address_::1', '178.34.151.101', 'no'),
(16879, 'category_children', 'a:0:{}', 'yes'),
(16896, '_transient_timeout__woocommerce_helper_updates', '1557015607', 'no'),
(16897, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1556972407;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(16898, '_transient_timeout_plugin_slugs', '1557094319', 'no'),
(16899, '_transient_plugin_slugs', 'a:13:{i:0;s:19:\"akismet/akismet.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:9:\"hello.php\";i:3;s:27:\"leaflet-map/leaflet-map.php\";i:4;s:25:\"menu-image/menu-image.php\";i:5;s:25:\"relevanssi/relevanssi.php\";i:6;s:33:\"simple-sitemap/simple-sitemap.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:24:\"wpforms-lite/wpforms.php\";i:9;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:10;s:33:\"wp-php-console/wp-php-console.php\";i:11;s:38:\"yith-woocommerce-catalog-mode/init.php\";i:12;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(16900, '_transient_timeout_wc_upgrade_notice_3.6.2', '1557058811', 'no'),
(16901, '_transient_wc_upgrade_notice_3.6.2', '', 'no'),
(16902, '_transient_timeout_wpseo_site_information', '1557058813', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(16903, '_transient_wpseo_site_information', 'O:8:\"stdClass\":2:{s:3:\"url\";s:16:\"http://localhost\";s:13:\"subscriptions\";a:5:{i:0;O:8:\"stdClass\":3:{s:11:\"renewal_url\";s:0:\"\";s:11:\"expiry_date\";s:24:\"2037-02-01T05:00:00.000Z\";s:7:\"product\";O:8:\"stdClass\":7:{s:7:\"version\";s:4:\"11.1\";s:4:\"name\";s:38:\"Yoast SEO for WordPress Premium plugin\";s:4:\"slug\";s:27:\"yoast-seo-wordpress-premium\";s:12:\"last_updated\";s:24:\"2019-04-30T10:33:53.000Z\";s:9:\"store_url\";s:61:\"https://yoast.com/product/yoast-seo-wordpress-premium-plugin/\";s:8:\"download\";s:68:\"https://yoast.com/app/uploads/2019/04/wordpress-seo-premium-11.1.zip\";s:9:\"changelog\";s:65618:\"<h2 id=\"v11.1.0\">11.1.0</h2>\n<small>April 30th, 2019</small>\nBugfixes:\n<ul>\n 	<li>Improves the recognition of German keyphrases that include words with an <code>i</code> or <code>e</code> in between vowels (e.g., <code>schrieen</code>, <code>schreien</code>, <code>speie</code>).</li>\n 	<li>Improves recognition of German 3rd person singular verb forms (e.g., <code>arbeitet</code>).</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 11.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 class=\"11.0.0\">11.0.0</h2>\n<small>Release Date: April 16th, 2019</small>\n\nWe\'ve made huge changes to the schema.org markup we output, adding multiple different types of Schema. Be sure to check <a href=\"https://yoa.st/schema-release-post\">our posts on yoast.com about this release</a>!\n\nEnhancements:\n<ul>\n 	<li>Schema changes:</li>\n 	<li>Adds <code>Person</code> markup for author pages.</li>\n 	<li>Adds <code>WebPage</code> markup for all pages.</li>\n 	<li>Adds <code>Article</code> markup for posts, with <code>Person</code> markup for the author.</li>\n 	<li>Changes the ‘Organization or Person’ section of the Knowledge graph settings to allow selecting an author that is the ‘Person’ that the website represents.</li>\n 	<li>Adds MySpace, SoundCloud, Tumblr and YouTube URL input fields to people’s profiles.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes an issue where the metabox would not display on term edit pages when running the development build of Gutenberg.</li>\n</ul>\n<h2 id=\"v10.1.3\">10.1.3</h2>\n<small>April 4th, 2019</small>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 10.1.3 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v10.1.2\">10.1.2</h2>\n<small>April 3rd, 2019</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the license information from MyYoast is being saved aggressively, causing updates in MyYoast to take 24 hours to show up in the site.</li>\n</ul>\n<h2 id=\"v10.1.1\">10.1.1</h2>\n<small>April 2nd, 2019</small>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 10.1.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v10.1.0\">10.1.0</h2>\n<small>April 2nd, 2019</small>\nEnhancements:\n<ul>\n 	<li>Introduces recognition of grammatical forms for German keyphrases. This means that plural forms such as <code>Häuser</code> will be recognized if your keyphrase is <code>Haus</code>, for example. Doesn\'t just work for those of you who have multiple homes by the way.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the Internal Linking metabox would show a warning that not all posts were analyzed, while all eligible posts actually <em>were</em> indexed.</li>\n 	<li>Fixes a bug that impeded recognition of word forms for keyphrases on taxonomy pages.</li>\n</ul>\nOther:\n<ul>\n 	<li>Removes all functionality that has been deprecated before Yoast SEO 6.1.</li>\n 	<li>Includes every change in Yoast SEO core 10.1.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v10.0.1\">10.0.1</h2>\n<small>March 19th, 2019</small>\n\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 10.0.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v10.0.0\">10.0.0</h2>\n<small>March 12th, 2019</small>\n\nBugfixes:\n<ul>\n 	<li>Fixes a bug where a related keyphrase or synonym field containing a backslash or consecutive double quotes would be emptied when saving a post or term.</li>\n 	<li>Fixes a bug where backslashes would be removed from the Twitter and Facebook title and description when saving a term.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 10.0.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.7.0\">9.7.0</h2>\n<small>February 26th, 2019</small>\n\nEnhancements:\n<ul>\n 	<li>Implements analysis markers for related keyphrases.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where quotes in the related keyphrases and synonyms could stop those fields from appearing.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.7.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.6.1\">9.6.1</h2>\n<small>February 12th, 2019</small>\n\nBugfixes:\n<ul>\n 	<li>Fixes a bug where translations would be rendered incorrectly.</li>\n</ul>\n<h2 id=\"v9.6.0\">9.6.0</h2>\n<small>February 12th, 2019</small>\n\nEnhancements:\n<ul>\n 	<li>Adds an \"Ok\" button to dismiss redirect notifications in the quick edit menu.</li>\n 	<li>Improves the Redirects table accessibility by removing a duplicate button.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.6.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.5.0\">9.5.0</h2>\n<small>January 22nd, 2019</small>\n\nEnhancements:\n<ul>\n 	<li>Adds a validator to the redirect manager to check if the redirect origin is relative.</li>\n 	<li>Adds internal linking suggestions and insights for Swedish.</li>\n 	<li>Improves the error logging for certain types of errors in the prominent words analysis and internal linking suggestions.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.5.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.4.2\">9.4.2</h2>\n<small>January 15th, 2019</small>\n\nBugfixes:\n<ul>\n 	<li>Fixes a bug where Premium features in the metabox might not work for custom post types.</li>\n</ul>\n<h2 id=\"v9.4.1\">9.4.1</h2>\n<small>January 14th, 2019</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where additional keyphrases and synonyms would not be saved for taxonomies.</li>\n</ul>\n<h2 id=\"v9.4.0\">9.4.0</h2>\n<small>January 8th, 2019</small>\nContent analysis recalibration (beta):\n<ul>\n 	<li>When the recalibration beta is enabled a \"Stale cornerstone content\"-filter is added to relevant content types.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where admin-assets would be loaded on pages where they are not relevant.</li>\n 	<li>Fixes a bug where changing the slug of an inaccessible post type creates a redirect for that object.</li>\n</ul>\nEnhancements:\n<ul>\n 	<li>Improves the feedback given when importing redirects.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.4.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.3.0\">9.3.0</h2>\n<small>December 18th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where redirects that contained URI encodable characters couldn\'t be removed individually.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.3.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.2.1\">9.2.1</h2>\n<small>November 21th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where editing a content type item (page/post) would result in a blank page (Fatal error) when the metabox is disabled for that type.</li>\n</ul>\n<h2 id=\"v9.2.0\">9.2.0</h2>\n<small>November 20th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the internal linking box is shown for post types that has the Yoast Metabox disabled.</li>\n 	<li>Fixes internal linking button size in the document settings sidebar in Gutenberg.</li>\n 	<li>Fixes a bug where no redirect notification was shown in Gutenberg when the permalink was updated.</li>\n 	<li>Fixes a bug where the social previews won\'t reflect the entered post/page title realtime.</li>\n</ul>\nOther:\n<ul>\n 	<li>Adds additional context to the wpseo_premium_post_redirect_slug_change filter call.</li>\n</ul>\n<h2 id=\"v9.1.0\">9.1.0</h2>\n<small>November 6th, 2018</small>\nEnhancements:\n<ul>\n 	<li>Improves an SQL query to perform better on sites with a lot of orphaned content.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the activation warning would be incorrectly displayed on a sub-site within a multisite environment.</li>\n 	<li>Fixes a bug where a PHP warning would be displayed when <code>php_uname</code> has been disabled for security reasons.</li>\n 	<li>Fixes a bug where a PHP notice would be displayed when visiting a non-existing post.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.1.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.0.3\">9.0.3</h2>\n<small>October 30th, 2018</small>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.0.3 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.0.2\">9.0.2</h2>\n<small>October 24th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the Gutenberg (v4.1) editor was partially hidden behind the metabox.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.0.2 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.0.1\">9.0.1</h2>\n<small>October 23rd, 2018</small>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.0.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v9.0\">9.0</h2>\n<small>October 23rd, 2018</small>\nEnhancements:\n<ul>\n 	<li>Implements support for word form recognition for keyphrases in English. This means that e.g. <code>book</code> will be recognized in the text when the keyphrase is <code>books</code>.</li>\n 	<li>Implements an improved algorithm for the keyphrase distribution assessment to check whether the keyphrase usage is evenly distributed throughout the text.</li>\n 	<li>The following assessments will also count synonym matches as keyphrase matches:\n<ul>\n 	<li>Image alt attributes</li>\n 	<li>Keyphrase in introduction</li>\n 	<li>Keyphrase in meta description</li>\n 	<li>Keyphrase in subheading</li>\n 	<li>Keyphrase distribution</li>\n</ul>\n</li>\n 	<li>The analysis for related keyphrases only shows assessments relevant for the specific keyphrase. It omits assessments that are non-keyphrase-related and assessments that should only be applied to the focus keyphrase.</li>\n 	<li>For the keyphrase density assessment, the upper boundary for a good score is higher when word form recognition is available, since in that case the analysis is able to pick up more matches.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the insights analysis on the tools page would not work.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 9.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v8.4.0\">8.4.0</h2>\n<small>October 9th, 2018</small>\nEnhancements:\n<ul>\n 	<li>Adds multiple keyword support for taxonomies.</li>\n 	<li>Adds synonyms to taxonomies.</li>\n 	<li>Adds the keyword distribution assessment for taxonomies.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where automatic redirects would be created for non-public post types.</li>\n</ul>\nOther:\n<ul>\n 	<li>Adds the <code>wpseo_premium_include_automatic_redirection_post_types</code> filter to allow users to include more post types to create automatic redirects for.</li>\n 	<li>Includes every change in Yoast SEO core 8.4.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v8.3.0\">8.3.0</h2>\n<small>September 25th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the automatic redirect notification was not shown when a post was trashed from within Gutenberg.</li>\n 	<li>Fixes a bug where the target of redirects from a subdirectory site to a path on the main domain were incorrectly disallowed.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 8.3.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v8.2.2\">8.2.2</h2>\n<small>September 20th, 2018</small>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 8.2.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v8.2.1\">8.2.1</h2>\n<small>September 20th, 2018</small>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 8.2.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v8.2.0\">8.2.0</h2>\n<small>September 11th, 2018</small>\n\nEnhancements:\n<ul>\n 	<li>Adds Polish Insights and Linking Suggestions. Props <a href=\"https://github.com/tmotyl\">@tmotyl</a> and <a href=\"https://github.com/oskardydo\">@oskardydo</a> from <a href=\"https://github.com/macopedia\">@macopedia</a>.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 8.2.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v8.1.2\">8.1.2</h2>\n<small>September 5th, 2018</small>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 8.1.2 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v8.1.1\">8.1.1</h2>\n<small>September 3rd, 2018</small>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 8.1.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v8.1.0\">8.1.0</h2>\n<small>August 28th, 2018</small>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 8.1.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v8.0.0\">8.0.0</h2>\n<small>August 14th, 2018</small>\nEnhancements:\n<ul>\n 	<li>Revamps the design for multiple focus keywords to fit in the new metabox and Gutenberg sidebar.</li>\n 	<li>Improves the UX of multiple focus keywords. Adding and removing keywords became easier.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the keyword analysis was not updated after changing or adding synonyms.</li>\n 	<li>Fixes a bug where the analysis icon for additional keywords would be red for an empty keyword.</li>\n</ul>\nOther:\n<ul>\n 	<li>Adds the Internal Linking section to the Gutenberg sidebar.</li>\n 	<li>Adds the Insights section to the Gutenberg sidebar.</li>\n 	<li>Improved plugin performance by lazy loading the <code>WPSEO_Redirects_Option</code> instead of instantiating that on every request. Props to <a href=\"https://github.com/stayallive\">stayallive</a></li>\n 	<li>Includes every change in Yoast SEO core 8.0.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.9.1\">7.9.1</h2>\n<small>August 7th, 2018</small>\nOther:\n<ul>\n 	<li>Removes the Internal Linking meta box from the Gutenberg sidebar.</li>\n 	<li>Includes every change in Yoast SEO core 7.9.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.9.0\">7.9.0</h2>\n<small>July 24th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the prominent words for attachments can\'t be indexed when the attachment has an other post status than trash, inherit or private.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.9.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.8.1\">7.8.1</h2>\n<small>July 16th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the snippet editor changes were not saved when the SEO Analysis feature is turned off.</li>\n</ul>\n<h2 id=\"v7.8.0\">7.8.0</h2>\n<small>July 10th, 2018</small>\nEnhancements:\n<ul>\n 	<li>Shows a notification regarding the creation of redirects when deleting a category or tag.</li>\n 	<li>Introduces an action (<code>wpseo_premium_redirects_modified</code>) that will be executed when a redirect has been added, edited or deleted.</li>\n 	<li>Adds the possibility to enter keyword synonyms.</li>\n 	<li>Adds an assessment the checks the distribution of the focus keyword in the text.</li>\n 	<li>Adds an assessment that checks the distribution of keywords and synonyms.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where advertisements were being displayed next to video tutorials.</li>\n 	<li>Fixes a bug where redirected URLs would show up in the sitemap.</li>\n 	<li>Filters out prominent word combinations ending in \'s in English. Props to <a href=\"https://github.com/swekkiekekkie\">swekkiekekkie</a>.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.8.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.7.3\">7.7.3</h2>\n<small>July 2nd, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.7.3 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.7.2\">7.7.2</h2>\n<small>June 29th, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.7.2 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.7.1\">7.7.1</h2>\n<small>June 27th, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.7.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.7.0\">7.7.0</h2>\n<small>June 26th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where non-public posts were given as a link suggestion.</li>\n 	<li>Fixes a bug where a redirect would redirect to the currently requested URL.</li>\n 	<li>Fixes a bug where the fallback for the Facebook title in the social preview was not showing the correct title.</li>\n 	<li>Fixes a bug where Yoast product advertisements were shown in the Help Center video tab.</li>\n 	<li>Fixes a bug where the analysis would only show results for the main keyword when multiple keywords are used.</li>\n 	<li>Fixes a bug where the analysis results were being hidden while they were being calculated.</li>\n</ul>\n<h2 id=\"v7.6.1\">7.6.1</h2>\n<small>June 7th, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.6.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.6.0\">7.6.0</h2>\n<small>June 5th, 2018</small>\n\nEnhancements:\n<ul>\n 	<li>Adds WP-CLI commands to manage redirects. Use <code>wp yoast redirect</code> to see the list of available commands.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the link to run the internal linking count for orphaned content did not work.</li>\n 	<li>Fixes a bug where unpublished posts and password protected posts where taken into account in the orphaned content overview and notifications.</li>\n 	<li>Includes every change in Yoast SEO core 7.6.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.5.3\">7.5.3</h2>\n<small>May 30th, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.5.3 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.5.2\">7.5.2</h2>\n<small>May 28th, 2018</small>\n<ul>\n 	<li>Fixes a bug where the determination of \"Orphaned content\" tries to account for <code>noindex</code> items, resulting in a lot of additional database querying.</li>\n</ul>\n<h2 id=\"v7.5.1\">7.5.1</h2>\n<small>May 16th, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.5.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.5.0\">7.5.0</h2>\n<small>May 15th, 2018</small>\nEnhancements:\n<ul>\n 	<li>Adds Russian Insights and Linking Suggestions.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the subdirectory is added twice to the origin form field when pressing the create redirect link on the adminbar.</li>\n 	<li>Fixes a bug where the subdirectory is stripped out of the redirect target when it\'s provided as a full url.</li>\n 	<li>Fixes a bug where posts set to <code>noindex</code> would show in the orphaned content filter.</li>\n</ul>\nOther:\n<ul>\n 	<li>Sets the maximum amount of Linking Suggestions to 10.</li>\n 	<li>Includes every change in Yoast SEO core 7.5 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.4.2\">7.4.2</h2>\n<small>May 3rd, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.4.2 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.4.1\">7.4.1</h2>\n<small>May 2nd, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.4.1 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.4.0\">7.4.0</h2>\n<small>May 1st, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.4.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.3.0\">7.3.0</h2>\n<small>April 17th, 2018</small>\n<ul>\n 	<li>Fixes a bug where the pagination overlaps the orphaned content information message, on post overview pages in combination with low resolutions.</li>\n 	<li>Includes every change in Yoast SEO core 7.3.0 see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.2.0\">7.2.0</h2>\n<small>April 3rd, 2018</small>\n<ul>\n 	<li>Fixes an issue where no new redirect was created after a parent/child relationship of a page was changed.</li>\n 	<li>Fixes an issue where reverting the parent/child relationship of two pages could result in a redirect loop.</li>\n 	<li>Removes plugin suggestions from the dashboard.</li>\n 	<li>Includes every change in Yoast SEO core 7.2.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.1.1\">7.1.1</h2>\n<small>March 22nd, 2018</small>\nBugfix:\n<ul>\n 	<li>Fixes a fatal error on the Import/Export pages where a method on an import status property is called which is not always available.</li>\n</ul>\n<h2 id=\"v7.1.0\">7.1.0</h2>\n<small>March 20th, 2018</small>\nEnhancement:\n<ul>\n 	<li>Adds Portuguese Insights and Linking suggestions. Props to <a href=\"https://github.com/amesdigital\">amesdigital</a>.</li>\n</ul>\nOthers:\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.1.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.0.3\">7.0.3</h2>\n<h2><small>March 12th, 2018</small></h2>\n<ul>\n 	<li style=\"list-style-type: none\">\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.0.3, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v7.0.2\">7.0.2</h2>\n<h2><small>March 8th, 2018</small></h2>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.0.2, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.0.1\">7.0.1</h2>\n<small>March 6th, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.0.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v7.0.0\">7.0.0</h2>\n<small>March 6th, 2018</small>\nEnhancements:\n<ul>\n 	<li>Adds SEO titles and meta descriptions to the focus keyword export.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Removes unnecessary HTML from button.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 7.0.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n 	<li>Removes the deprecated <code>WPSEO_Premium:: add_admin_pages</code> method.</li>\n</ul>\n<h2 id=\"v6.3.1\">6.3.1</h2>\n<small>February 19th, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 6.3.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v6.3.0\">6.3.0</h2>\n<small>February 13th, 2018</small>\nEnhancements:\n<ul>\n 	<li>Adds a new sentence to the Internal Linking analyzer after completing a full site scan. This gives you more insight into what the effects are of running the analyzer.</li>\n 	<li>Adds additional explanation on entries on the features tab.</li>\n 	<li>Adds links to explanatory articles on the features tab.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where a core WordPress function wasn\'t available when getting the <code>.htaccess</code> file path on an Apache installation.</li>\n 	<li>Adds support for including custom post types in the prominent words recalculation process.</li>\n</ul>\nOther:\n<ul>\n 	<li>Includes every change in Yoast SEO core 6.3.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v6.2.0\">6.2.0</h2>\n<small>January 23rd, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 6.2.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v6.1.2\">6.1.2</h2>\n<small>January 12th, 2018</small>\n<ul>\n 	<li>Fixes a bug where the Regex redirects don\'t work anymore.</li>\n</ul>\n<h2 id=\"v6.1.1\">6.1.1</h2>\n<small>January 10th, 2018</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 6.1.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v6.1.0\">6.1.0</h2>\n<small>January 9th, 2018</small>\n<ul>\n 	<li>Fixes a bug in the redirects where an url decoded origin isn\'t found when the request uri isn\'t decoded.</li>\n 	<li>Fixes a bug where on certain servers (using FastCGI) redirects could not be filtered.</li>\n 	<li>Includes every change in Yoast SEO core 6.1.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v6.0.0\">6.0.0</h2>\n<small>December 20th, 2017</small>\n<ul>\n 	<li>Converts the list of post types to a format which is compatible with the REST API format.</li>\n 	<li>Includes every change in Yoast SEO core 6.0.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.9.4\">5.9.4</h2>\n<small>December 13th, 2017</small>\n<ul>\n 	<li>Fixes an issue where any keyword except the first keyword would show the results of the first keyword.</li>\n</ul>\n<h2 id=\"v5.9.3\">5.9.3</h2>\n<small>December 11th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.9.3, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.9.2\">5.9.2</h2>\n<small>December 11th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.9.3, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.9.1\">5.9.1</h2>\n<small>December 5th, 2017</small>\n<ul>\n 	<li>Fixes a bug where the configuration wizard could not be loaded, caused by a missing JavaScript dependency.</li>\n</ul>\n<h2 id=\"v5.9.0\">5.9.0</h2>\n<small>December 5th, 2017</small>\n<ul>\n 	<li>Insights are now shown in a separate section below the text analysis.</li>\n 	<li>Includes every change in Yoast SEO core 5.9.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.8.0\">5.8.0</h2>\n<small>November 15th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.8.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.7.1\">5.7.1</h2>\n<small>October 25th, 2017</small>\n<ul>\n 	<li>Prefixes <code>$redirect_handler</code> as <code>$wpseo_redirect_handler</code> as this is globally available.</li>\n</ul>\n<h2 id=\"v5.7.0\">5.7.0</h2>\n<small>October 24th, 2017 </small>\n<ul>\n 	<li>Improved the copy of the notice that will be displayed when a post has been stored from the trash.</li>\n 	<li>Fixes a bug by removing the accessibility check of a redirect target for regular expression redirects because these are likely to be dynamic.</li>\n 	<li>Fixes a bug in the redirect search where the search string that starts or ends with a slash doesn\'t match with an expected result.</li>\n 	<li>Fixes a bug where the \"focus keyword used in another post\"-check could not detect when a keyword was used at the 2nd, 3rd, 4th or 5th keyword spot.</li>\n</ul>\n<h2 id=\"v5.6.1\">5.6.1</h2>\n<small>October 13th, 2017</small>\n<ul>\n 	<li>Fixes a bug where a user with granted <code>wpseo_manage_redirects</code> would see settings which should not be shown.</li>\n 	<li>Includes every change in Yoast SEO core 5.6.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.6.0\">5.6.0</h2>\n<small>October 10th, 2017</small>\n<ul>\n 	<li>Introduces the <code>Orphaned content</code> filter and notifications.</li>\n 	<li>Fixes an issue where the \'You are not receiving updates or support!\' notification would be wrongfully shown on a sub-site of a multisite installation.</li>\n 	<li>Includes every change in Yoast SEO core 5.6, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.5.1\">5.5.1</h2>\n<small>September 28th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.5.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.5.0\">5.5.0</h2>\n<small>September 26th, 2017</small>\n<ul>\n 	<li>Introduces <code>wpseo_manage_redirects</code> to allow any role or user to manage redirects without having to be an administrator.</li>\n 	<li>Added filter for filtering redirects by redirect-type.</li>\n 	<li>Added a tool to export Focus Keywords.</li>\n</ul>\n<h2 id=\"v5.4.2\">5.4.2</h2>\n<small>September 21th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.4.2, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.4.1\">5.4.1</h2>\n<small>September 20th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.4.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.4.0\">5.4.0</h2>\n<small>September 6th, 2017</small>\n<ul>\n 	<li>Adds importing of exported redirects in CSV format via <code>SEO &gt; Tools &gt; import and export &gt; import redirects</code>.</li>\n 	<li>Includes every change in Yoast SEO core 5.4.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.3.3\">5.3.3</h2>\n<small>August 28th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.3.3, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.3.2\">5.3.2</h2>\n<small>August 23rd, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.3.2, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.3.1\">5.3.1</h2>\n<small>August 22nd, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.3.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.3.0\">5.3.0</h2>\n<small>August 22nd, 2017</small>\n<ul>\n 	<li>Add feature to export redirects, via SEO - Tools - Import/Export</li>\n 	<li>Removes the <code>DC.date.issued</code> meta tag</li>\n 	<li>When creating a redirect to a file, it will no longer show a warning that the target location does not exist</li>\n</ul>\n<h2 id=\"v5.2.0\">5.2.0</h2>\n<small>August 8th, 2017</small>\n<ul>\n 	<li>Adds a watcher for private posts to be redirected correctly after trashing them.</li>\n 	<li>Adds collecting technical environment data to send to Yoast.</li>\n 	<li>Includes every change in Yoast SEO core 5.4.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.1.0\">5.1.0</h2>\n<small>July 25th, 2017</small>\n<ul>\n 	<li>Adds Italian Insights and Linking Suggestions, props Abramo Tesoro.</li>\n 	<li>Fixes a bug where multiple redirect notices pop up when having WooCommerce Tab Manager installed.</li>\n 	<li>Includes every change in Yoast SEO core 5.1.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.0.2\">5.0.2</h2>\n<small>July 13th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.0.2, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.0.1\">5.0.1</h2>\n<small>July 6th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 5.0.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v5.0.0\">5.0.0</h2>\n<small>July 6th, 2017</small>\n<ul>\n 	<li>Fixes a bug where the redirect notice popped up unnecessarily.</li>\n 	<li>Introduces insights and linking suggestions for French, props Sylvain Perret and <a href=\"https://github.com/evoqueio\">Evoque</a>.</li>\n 	<li>Includes every change in Yoast SEO core 5.0.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.9.0\">4.9.0</h2>\n<small>June&nbsp;7th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 4.9.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.8.0\">4.8.0</h2>\n<small>May 23rd, 2017</small>\n<ul>\n 	<li>Fixes a bug where there is a double trailing slash in the javascript for the social previews that was causing errors.</li>\n 	<li>Fixes a bug on the Redirects page where spaces were stripped when using the search field.</li>\n 	<li>Removes the prominent words version for non-supported languages.</li>\n 	<li>Changes the string \'current url\' to \'old url\' in the Search Console Redirect to match the language in the Redirect Manager.</li>\n</ul>\n<h2 id=\"v4.7.1\">4.7.1</h2>\n<small>May 9th, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 4.7.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.7.0\">4.7.0</h2>\n<small>May 2nd, 2017</small>\n<ul>\n 	<li>Fixes a bug where 410 redirects could not be imported from <code>.htaccess</code>.</li>\n 	<li>Fixes a bug where the \'email support tab\' did not work on the edit post page.</li>\n 	<li>Adds the slug of a deleted post to the redirect notification.</li>\n 	<li>Includes every change in Yoast SEO core 4.7.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.6.0\">4.6.0</h2>\n<small>April 11th, 2017</small>\n<ul>\n 	<li>Adds the ability to mark a post as cornerstone content and display this in the link suggestions box.</li>\n 	<li>Fixes a bug where the post_modified was updated whenever the prominent words were calculated.</li>\n 	<li>Fixes a bug where a JavaScript error was thrown when creating a new taxonomy with a custom field plugin active.</li>\n 	<li>Fixes a bug where websites ran into timeouts due to a big query when calculating the prominent words.</li>\n 	<li>Includes every change in Yoast SEO core 4.6.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.5.0\">4.5.0</h2>\n<small>March 21st, 2017</small>\n<ul>\n 	<li>Fixes a bug where the SEO score wouldn’t be saved correctly, resulting in gray bullets on the post overview screen.</li>\n 	<li>Includes every change in Yoast SEO core 4.5.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.4.0\">4.4.0</h2>\n<small>February 28th, 2017</small>\n<ul>\n 	<li>Adds redirect types in the Search Console settings page.</li>\n 	<li>Checks for links that are already used in the text when suggesting links.</li>\n 	<li>Change links to shortlinks in premium translation promo box.</li>\n 	<li>Includes every change in Yoast SEO core 4.4.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.3.2\">4.3.2</h2>\n<ul>\n 	<li>Fixes a bug where CSS &amp; JavaScript would be loaded with incorrect version numbers.</li>\n</ul>\n<h2 id=\"v4.3.1\">4.3.1</h2>\n<small>February 16th, 2017</small>\n<ul>\n 	<li>Fixes a bug where a slow query would be run on every page of the admin.</li>\n</ul>\n<h2 id=\"v4.3.0\">4.3.0</h2>\n<small>February 14th, 2017</small>\n<ul>\n 	<li>Adds link suggestions and insights for Spanish.</li>\n 	<li>Adds variable that indicates the recalculation is running already to prevent double executed recalculations.</li>\n 	<li>Adds a warning when there are posts or pages that need to be analyzed for link suggestions.</li>\n 	<li>Improves the site wide calculation of the prominent words for the link suggestions.</li>\n 	<li>Fixes a bug where the rendering of the columns in the post overview was incorrect.</li>\n 	<li>Includes every change in Yoast SEO core 4.3.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.2.1\">4.2.1</h2>\n<small>February 2nd, 2017</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 4.2.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.2.0\">4.2.0</h2>\n<small>January 31st, 2017</small>\n<ul>\n 	<li>Adds link suggestions and insights for Dutch.</li>\n 	<li>Includes every change in Yoast SEO core 4.2.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.1.0\">4.1.0</h2>\n<small>January, 17th, 2017</small>\n<ul>\n 	<li>Adds a feature toggle to disable link suggestions (site wide).</li>\n 	<li>Allows contributors to also use the prominent words that link suggestions depend on, these generated a 403.</li>\n 	<li>Adds German support for Yoast internal linking.</li>\n 	<li>Improves the user interface for the prominent word recalculation.</li>\n</ul>\n<h2 id=\"v4.0.2\">4.0.2</h2>\n<small>December 20th, 2016</small>\n<ul>\n 	<li>Adds site wide calculation of prominent words for pages.</li>\n 	<li>Fixes a notice that would be thrown on custom post types: \"Undefined property: WP_Post_Type::$rest_base\".</li>\n 	<li>Fixes a bug where the site language would be used for the social previews and select2.</li>\n 	<li>Fixes a bug where the link suggestions wouldn\'t work when the insights block was disabled.</li>\n 	<li>Includes every change in Yoast SEO core 4.0.2, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v4.0.1\">4.0.1</h2>\n<small>December 14th, 2016</small>\n<ul>\n 	<li>Fixes a JavaScript error when editing pages in the admin, this fixes conflicts with page builders.</li>\n 	<li>Fixes an uncaught (in promise) error when using the prominent words in combinations with Fusion builder or Divi themes.</li>\n 	<li>Adds link suggestions meta box to pages.</li>\n 	<li>Fixes a bug where prominent words would be saved too often when editing a post.</li>\n</ul>\n<h2 id=\"v4.0.0\">4.0.0</h2>\n<small>December 13th, 2016</small>\n<ul>\n 	<li>Adds a metabox \"Yoast internal linking\" that contains link suggestions for the current post.</li>\n 	<li>Adds import functionality for Safe Redirect Manager.</li>\n 	<li>Adds import support for Simple 301 Redirects.</li>\n 	<li>Fixes import messaging when importing redirects.</li>\n 	<li>.htaccess import no longer overwrites the real htaccess file.</li>\n 	<li>.htaccess import properly imports all redirects.</li>\n 	<li>.htaccess import properly imports redirects with quotes.</li>\n 	<li>Fixes a bug where post format archives showed up in sitemap when disabled.</li>\n 	<li>Fixes a bug where an old update notice would not be removed.</li>\n 	<li>Fixes a bug where keywords with periods where not highlighted in the snippet.</li>\n 	<li>Includes every change in Yoast SEO core 4.0.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.9.0\">3.9.0</h2>\n<small>November 29th, 2016</small>\n<ul>\n 	<li>Improves the title updates in the social previews.</li>\n 	<li>Fixes a bug where the wrong URLs were used in redirect notices.</li>\n 	<li>Includes every change in Yoast SEO core 3.9.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.8.0\">3.8.0</h2>\n<small>November 8th, 2016</small>\n<ul>\n 	<li>Fixes a bug where keyword tabs didn\'t have a correct screen reader text.</li>\n 	<li>Fixes a bug where certain translations weren\'t translatable, props <a href=\"https://github.com/pedro-mendonca\">Pedro Mendonça</a></li>\n 	<li>Removes React debugging tools from eventual build JavaScript files.</li>\n 	<li>Includes every change in Yoast SEO core 3.8.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.7.2\">3.7.2</h2>\n<small>October 20th, 2016</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 3.7.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.7.1\">3.7.1</h2>\n<small>October 11th, 2016</small>\n<ul>\n 	<li>Adds a message when no prominent words were detected in the text.</li>\n</ul>\n<h2 id=\"v3.7.0\">3.7.0</h2>\n<small>October 11th, 2016</small>\n<ul>\n 	<li>Adds an insights section to the Yoast SEO metabox that shows authors the most prominent words in their text.</li>\n 	<li>Adds a validation to check if the origin url in a redirect contains the subdirectory in case WordPress is installed in a subdirectory.</li>\n 	<li>Improved accessibility of the redirects manager.</li>\n 	<li>Fixes a bug where some form fields in the import and export tools were missing labels.</li>\n 	<li>Makes the redirects new rows action links translatable.</li>\n 	<li>Fixes a PHP Warning when hitting 301 redirect on subdomain multisites.</li>\n 	<li>Fixes a bug where the Twitter preview would no longer work when Facebook is disabled in Social.</li>\n 	<li>Includes every change in Yoast SEO core 3.7.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.6.1\">3.6.1</h2>\n<small>Release Date: October 3rd, 2016</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixes a bug where the admin bar would still show advanced settings when the advanced settings were disabled.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.6\">3.6</h2>\n<small>September 27th, 2016</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 3.6.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.5.2\">3.5.2</h2>\n<small>September 8th, 2016</small>\n<ul>\n 	<li>Fixes a JavaScript error that was thrown from redirect notifications when attempting to edit the redirect destination. These notifications are thrown whenever a slug is edited or when a post or term is deleted.</li>\n</ul>\n<h2 id=\"v3.5.1\">3.5.1</h2>\n<small>September 7th, 2016</small>\n<ul>\n 	<li>Fixes a fatal error when network activating.</li>\n</ul>\n<h2 id=\"v3.5.0\">3.5.0</h2>\n<small>September 7th, 2016</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 3.5.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n 	<li>Fixes the slug change and redirects in the quick edit for posts and terms.</li>\n 	<li>Fixes title on the redirect settings page.</li>\n</ul>\n<h2 id=\"v3.4.2\">3.4.2</h2>\n<small>August 8th, 2016</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 3.4.2, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.4.1\">3.4.1</h2>\n<small>August 2nd, 2016</small>\n<ul>\n 	<li>Security hotfix: includes every change in Yoast SEO core 3.4.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.4.0\">3.4.0</h2>\n<small>July 19th, 2016</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 3.4.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n 	<li>Visually improves the redirect dialog by using an overlay.</li>\n 	<li>Fixes a bug where a trailing slash was added when redirecting to a file.</li>\n 	<li>Fixes a fatal JavaScript error for the featured image on attachment edit pages.</li>\n</ul>\n<h2 id=\"v3.3.3\">3.3.3</h2>\n<small>June 30th, 2016</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 3.3.3 and 3.3.4, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.3.2\">3.3.2</h2>\n<small>June 21st, 2016</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 3.3.2, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.3.1\">3.3.1</h2>\n<small>June 15th, 2016</small>\n<ul>\n 	<li>Fixes a bug with redirects on a subsite in a multisite installation, props <a href=\"https://github.com/nicholas-eden\">nicholas-eden</a>.</li>\n 	<li>Fixes a bug where the tabs inside the metabox weren\'t aligned properly.</li>\n 	<li>Includes every change in Yoast SEO core 3.3.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.3.0\">3.3.0</h2>\n<small>June 14th, 2016</small>\n<ul>\n 	<li>Add author name support to the social previews.</li>\n 	<li>Add a tab inside the help center to contact support, this replaces the question mark at the bottom right of the page.</li>\n 	<li>Fixes a bug where the redirects couldn\'t be saved to the .htaccess in certain scenarios.</li>\n 	<li>Fixes a bug where subdomains would be stripped from target URLs in the redirects.</li>\n 	<li>Fixes a bug where the Redirection import wasn\'t present.</li>\n 	<li>Includes every change in Yoast SEO core 3.3.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.2.5\">3.2.5</h2>\n<small>May 6th, 2016</small>\n<ul>\n 	<li>Fixes \"undefined index\" notices when Facebook and/or Twitter have been disabled in settings.</li>\n 	<li>Fixes a bug when writing 4xx redirects into the .htaccess file on Apache.</li>\n 	<li>Includes every change in Yoast SEO core 3.2.5, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.2.4\">3.2.4</h2>\n<small>April 28th, 2016</small>\n<ul>\n 	<li>Fixes a regression where the post URL would be numerical when no post title was set.</li>\n 	<li>Fixes an issue that would cause notifications not to be dismissed even though they should be.</li>\n 	<li>These changes bring Yoast SEO Premium in line with Yoast SEO free 3.2.4.</li>\n</ul>\n<h2 id=\"v3.2.2\">3.2.2</h2>\n<small>April 21th, 2016</small>\n<ul>\n 	<li>Fixes a bug where notification for a deleted post wasn\'t shown.</li>\n 	<li>Includes every change in Yoast SEO core 3.2.3, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.2.2\">3.2.1</h2>\n<small>April 20th, 2016</small>\n<ul>\n 	<li>Includes every change in Yoast SEO core 3.2.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.2.0\">3.2.0</h2>\n<small>April 20th, 2016</small>\n<ul>\n 	<li>Introduces social previews, you can now see what your posts will look like when they are shared on Facebook and Twitter.</li>\n 	<li>The previews will automatically show you when your image is too small.</li>\n 	<li>You can use all replace variables you are used to in the Facebook and Twitter previews.</li>\n 	<li>Removes the tutorial video page, the videos are now available on every tab.</li>\n 	<li>Fixes a bug where Yoast SEO Premium would fatal when activating while Yoast SEO was active.</li>\n 	<li>Fixes a bug where the home URL wasn\'t correctly stripped from the redirect old URL.</li>\n 	<li>Fixes a bug where clicking the \'Update now\' button on the plugin page didn\'t update correctly.</li>\n 	<li>Includes every change in Yoast SEO core 3.2.0, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.1.3\">3.1.3</h2>\n<small>March 23rd, 2016</small>\n<ul>\n 	<li>Fixes a few bugs related to term slugs that were altered by our plugin after they were saved. This especially caused issues for terms with parents. We will simply not touch term slugs anymore until the way terms are saved is fixed in WordPress, see also <a href=\"https://core.trac.wordpress.org/ticket/22293\">https://core.trac.wordpress.org/ticket/22293</a>.</li>\n 	<li>Fixes a bug where we would create redirects if nav menu items were edited.</li>\n 	<li>Fixes a bug where redirects to urls with url parameters got appended with a slash.</li>\n 	<li>Fixes a bug where adding a parent to a page would cause the slug of that page to detected by us as non-unique and incremented with a number.</li>\n 	<li>Fixes a bug where the AJAX request for creating redirects in the search console integration was broken for search console issues for which a 4xx redirect already exists.</li>\n 	<li>Merge with Yoast SEO core 3.1.2, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.1.2\">3.1.2</h2>\n<small>March 8th, 2016</small>\n<ul>\n 	<li>Fixes a bug where PHP redirects were still broken on servers that disable accessing the server input by making use of the filter extension.</li>\n 	<li>Merge with Yoast SEO core 3.1.1, see the <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v3.1.1\">3.1.1</h2>\n<small>March 2nd, 2016</small>\n<ul>\n 	<li>Fixes a bug where PHP redirects were broken.</li>\n 	<li>Fixes a bug where users could (temporarily) lose their redirects if our upgrade routine would for some reason not be triggered while updating to versions greater than 3.0.7</li>\n 	<li>Fixes a bug where slashes were shown in the redirect manager for a redirect without a target url (ie. 410)</li>\n 	<li>Fixes a Fatal error that occured when switching from Free to Premium.</li>\n</ul>\n<h2 id=\"v3.1\">3.1</h2>\n<small>March 1st, 2016</small>\n<ul>\n 	<li>Made PHP redirects faster and more efficient.</li>\n 	<li>Added an interface to easily serve 410 (content deleted) headers for posts you have just deleted.</li>\n 	<li>Added support for creating 451 (legal takedown) headers in the redirect manager.</li>\n 	<li>Improved existing validations, ensuring redirects are complete and unique.</li>\n 	<li>Added a validation error that checks for a redirect loop.</li>\n 	<li>Added validation warnings for the following cases:\n<ul>\n 	<li>when a redirect points to an url that is redirected.</li>\n 	<li>when a redirect point to a url that cannot be resolved.</li>\n 	<li>when a redirect points to a url that doesn\'t return a 200 OK status code.</li>\n</ul>\n</li>\n 	<li>Changed the interface for inline editing of redirects to resemble the redirect form used to add redirects.</li>\n 	<li>Fixes a possible fatal error on update.</li>\n 	<li>Replaced checkboxes and radio buttons with toggles on the Premium settings pages.</li>\n 	<li>Makes sure post / term slugs uniqueness checks also take into account redirects.</li>\n 	<li>Makes sure redirected are redirected both with and without trailing slash.</li>\n 	<li>Takes the WP permalink structure into account in deciding if we should redirect to a slug with or without trailing slash.</li>\n 	<li>Makes sure links to our knowledge base open in a new window.</li>\n 	<li>Added a few knowledge base suggestions to our support beacon on the redirects page.</li>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 3.1</a>.</li>\n</ul>\n<h2 id=\"v3.0.7\">3.0.7</h2>\n<small>December 23rd, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 3.0.7</a>.</li>\n</ul>\n<h2 id=\"v3.0.6\">3.0.6</h2>\n<small>December 1st, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 3.0.6</a>.</li>\n</ul>\n<h2 id=\"v3.0.5\">3.0.5</h2>\n<small>December 1st, 2015</small>\n<ul>\n 	<li>Fixed performance issues in custom fields integration.</li>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 3.0.5</a>.</li>\n</ul>\n<h2 id=\"v3.0.4\">3.0.4</h2>\n<small>November 25th, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 3.0.4</a>.</li>\n</ul>\n<h2 id=\"v3.0.3\">3.0.3</h2>\n<small>November 19th, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 3.0.3</a>.</li>\n</ul>\n<h2 id=\"v3.0.2\">3.0.2</h2>\n<small>November 19th, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 3.0.2</a>.</li>\n</ul>\n<h2 id=\"v3.0.1\">3.0.1</h2>\n<small>November 18th, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 3.0.1</a>.</li>\n</ul>\n<h2 id=\"v3.0\">3.0</h2>\n<small>November 18th, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 3.0</a>, including the realtime content analysis tool and social settings for taxonomies.</li>\n 	<li>Added possibility to analyze multiple keywords per post/page.</li>\n 	<li>Added support beacon to all the Yoast SEO settings pages, allowing users to ask for support straight from their WordPress backends.</li>\n</ul>\n<h2 id=\"v2.3.5\">2.3.5</h2>\n<small>September 16th, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 2.3.5</a></li>\n</ul>\n<h2 id=\"v2.3.4\">2.3.4</h2>\n<small>August 6th, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 2.3.4</a></li>\n</ul>\n<h2 id=\"v2.3.3\">2.3.3</h2>\n<small>August 6th, 2015</small>\n<ul>\n 	<li>Added a filter <code>wpseo_hide_version</code> that allows webmasters to hide the Yoast SEO Premium version number in the debug marker.</li>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 2.3.3</a></li>\n</ul>\n<h2 id=\"v2.3.2\">2.3.2</h2>\n<small>July 23rd, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 2.3.2</a></li>\n</ul>\n<h2 id=\"v2.3.1\">2.3.1</h2>\n<small>July 22nd, 2015</small>\n<ul>\n 	<li>Fixes a bug where the .htaccess redirect import was no longer available.</li>\n 	<li>Fixes a bug where upgrading to version 2.3 would occasionally cause WSOD\'s on both admin and frontend. We were unable to pinpoint the exact conflicting plugins and themes, but we are quite confident it was caused by us using, and others hooking into, WP_Query too early.</li>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 2.3.1</a></li>\n</ul>\n<h2 id=\"v2.3\">2.3</h2>\n<small>July 21st, 2015</small>\n<ul>\n 	<li>Renamed plugin to \"Yoast SEO Premium\"</li>\n 	<li>Fixed compatibility issue with Post type order plugin.</li>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">Yoast SEO core 2.3</a></li>\n</ul>\n<h2 id=\"v2.2.2\">2.2.2</h2>\n<small>June 17th, 2015</small>\n<ul>\n 	<li>Fixed a bug that would create unnecessary (and sometimes even faulty) redirects.</li>\n 	<li>Added a Japanese translation and updated several other languages.</li>\n</ul>\n<h2 id=\"v2.2.1\">2.2.1</h2>\n<small>June 11th, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">WordPress SEO core 2.2.1</a></li>\n</ul>\n<h2 id=\"v2.2\">2.2</h2>\n<small>June 10th, 2015</small>\n<ul>\n 	<li>Adds an X-Redirect-By header to redirects that were created using WordPress SEO Premium. Works for all PHP redirects and regular NGINX redirects. Doesn\'t work for Apache.</li>\n 	<li>Makes sure all AJAX notices become dismissible.</li>\n 	<li>Makes sure the redirect notice also shows the old and new url.</li>\n 	<li>Fixes a bug where the link in the redirect notice was not clickable in some cases.</li>\n 	<li>Fixes a bug where we offered the user the possibility to undo creating a redirect that was never created in the first place.</li>\n 	<li>Fixes a bug where clicking a link to our knowledge base about redirect types triggered a notice instead of taking the user to the right page.</li>\n 	<li>Fixes a bug where in some cases no tab was selected after reloading the crawl issues in the GWT settings.</li>\n 	<li>Fixes a bug where automatic redirects where being created for unpublished posts.</li>\n 	<li>Fixes a bug where automatic redirects where not being created on slug change when using quick edit for both posts and terms.</li>\n 	<li>Fixes a bug where where automatic redirects where not being created on slug change for custom taxonomies.</li>\n 	<li>Fixes a bug where a slug change could falsely be detected and redirected in case of a term update in the context of a post update</li>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">WordPress SEO core 2.2</a></li>\n</ul>\n<h2 id=\"v2.1.1\">2.1.1</h2>\n<small>April 21st, 2015</small>\n<ul>\n 	<li>Merge with <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">WordPress SEO core 2.1.1</a></li>\n</ul>\n<h2 id=\"v2.1\">2.1</h2>\n<small>April 20th, 2015</small>\n<ul>\n 	<li>Merge with WordPress SEO core 2.1</li>\n</ul>\n<h2 id=\"v2.0.1\">2.0.1</h2>\n<small>April 1st, 2015</small>\n<ul>\n 	<li>Merge with WordPress SEO core 2.0.1</li>\n</ul>\n<h2 id=\"v2.0\">2.0</h2>\n<small>March 26th, 2015</small>\n<ul>\n 	<li>Merge with WordPress SEO core 2.0</li>\n 	<li>Made the version number for the Premium plugin the same as for the Free plugin to avoid confusion.</li>\n 	<li>Contains several performance improvements, making the plugin much faster.</li>\n</ul>\n<h2 id=\"v1.5.3\">1.5.3</h2>\n<small>March 11th, 2015</small>\n<ul>\n 	<li>Security hotfix: Merge with WordPress SEO core 1.7.4, see <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v1.5.2.2\">1.5.2.2</h2>\n<small>February 23rd, 2015</small>\n<ul>\n 	<li>Merge with WordPress SEO core 1.7.3.2</li>\n</ul>\n<h2 id=\"v1.5.2.1\">1.5.2.1</h2>\n<small>February 19th, 2015</small>\n<ul>\n 	<li>Merge with WordPress SEO core 1.7.3.1</li>\n</ul>\n<h2 id=\"v1.5.2\">1.5.2</h2>\n<small>February 17th, 2015</small>\n<ul>\n 	<li>Added the possibility to add 410 status to redirects.</li>\n 	<li>Added a few validations to prevent circular redirects.</li>\n 	<li>Reuses translations from the free version of this plugin, thereby dramatically reducing the amount of strings that need to be translated for the premium plugin.</li>\n 	<li>Merge with WordPress SEO core 1.7.3</li>\n</ul>\n<h2 id=\"v1.5.1\">1.5.1</h2>\n<small>November 26th, 2014</small>\n<ul>\n 	<li>Security hotfix: Merge with WordPress SEO core 1.7.1, see <a href=\"https://wordpress.org/plugins/wordpress-seo/#developers\">core changelog</a>.</li>\n</ul>\n<h2 id=\"v1.5\">1.5</h2>\n<small>November 18th, 2014</small>\n<ul>\n 	<li>Merge with WordPress SEO core 1.7</li>\n 	<li>Fixes a bug where authentication with Google Webmaster Tools would fail silently.</li>\n 	<li>Fixes a bug where redirects weren\'t written to <em>.htaccess</em>.</li>\n 	<li>Added filters for hiding redirects notifications.</li>\n</ul>\n<h2 id=\"v1.4.3\">1.4.3</h2>\n<small>October 8th, 2014</small>\n<ul>\n 	<li>Merge with WordPress SEO core 1.6.3</li>\n</ul>\n<h2 id=\"v1.4.2\">1.4.2</h2>\n<small>October 8th, 2014</small>\n<ul>\n 	<li>Merge with WordPress SEO core 1.6.2</li>\n 	<li>Implement new filter for issue types on the Google Webmaster Tools issues screen</li>\n</ul>\n<h2 id=\"v1.4.1\">1.4.1</h2>\n<small>September 16th, 2014</small>\n<ul>\n 	<li>Merge with WordPress SEO core 1.6.1</li>\n</ul>\n<h2 id=\"v1.4\">1.4</h2>\n<small>September 9th, 2014</small>\n<ul>\n 	<li>Merge with WordPress SEO core 1.6</li>\n</ul>\n<h2 id=\"v1.3.5\">1.3.5</h2>\n<small>August 26th, 2014</small>\n<ul>\n 	<li>Merge with WordPress SEO core 1.5.6, updated for WP 4.0</li>\n</ul>\n<h2 id=\"v1.3.4\">1.3.4</h2>\n<small>August 15th, 2014</small>\n<ul>\n 	<li>Fix incomplete merge with WordPress SEO core to 1.5.5.3</li>\n</ul>\n<h2 id=\"v1.3.3\">1.3.3</h2>\n<small>August 14th, 2014</small>\n<ul>\n 	<li>Updated WordPress SEO core to 1.5.5.3</li>\n</ul>\n<h2 id=\"v1.3.2\">1.3.2</h2>\n<small>August 14th, 2014</small>\n<ul>\n 	<li>Fixed bug in core WordPress SEO that made SEO icon value wrong.</li>\n 	<li>Updated WordPress SEO core to 1.5.5.2</li>\n</ul>\n<h2 id=\"v1.3.1\">1.3.1</h2>\n<small>August 14th, 2014</small>\n<ul>\n 	<li>Fix versioning issue</li>\n</ul>\n<h2 id=\"v1.3\">1.3</h2>\n<small>August 14th, 2014</small>\n\nContains all the changes done in WordPress SEO core,&nbsp;it\'s now equal to WordPress SEO&nbsp;1.5.5.1, see the <a href=\"http://wordpress.org/plugins/wordpress-seo/changelog/\">WordPress SEO change log</a> for those&nbsp;changes.\n\nThis release&nbsp;adds a full set of Video Tutorials for both editors and the WP SEO settings, available in the WordPress admin:\n\n<img class=\"alignnone size-large wp-image-201747\" src=\"https://yoast.com/app/uploads/2014/01/video-tutorials-550x269.png\" alt=\"video tutorials\" width=\"550\" height=\"269\" />\nOther enhancements:\n<ul>\n 	<li>The bulk title and bulk description editor pages are merged into one page.</li>\n 	<li>Added a feature to define custom fields that are taken into calculation for page analysis:\n<img class=\"alignnone size-large wp-image-201742\" src=\"https://yoast.com/app/uploads/2014/01/add-custom-fields-550x313.png\" alt=\"add custom fields\" width=\"550\" height=\"313\" /></li>\n 	<li>Give possibility&nbsp;to create a redirect when a post/page is trashed.</li>\n 	<li>Give&nbsp;possibility&nbsp;to delete a redirect when a post/page is restored.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Values for redirects will be trimmed, preventing invalid redirects.</li>\n 	<li>Fixed pagination on the redirects page.</li>\n 	<li>Fixed screen options on the redirects page.</li>\n</ul>\n<h2 id=\"v1.2.2\">1.2.2</h2>\n<small>July 4th, 2014</small>\n<ul>\n 	<li>Added link to Yoast Knowledge Base to regex redirects.</li>\n 	<li>Fixed bug when creating redirects from Webmaster Tools.</li>\n</ul>\n<h2>1.2.1</h2>\n<small>June 6th, 2014</small>\n<ul>\n 	<li>Fixed a REGEX redirect type bug that prevented REGEX redirects from working.</li>\n 	<li>Fixed a bug involving the &amp; sign in redirects.</li>\n</ul>\n<h2>1.2.0</h2>\n<small>June 3rd, 2014</small>\n<ul>\n 	<li>The redirect type (HTTP code) can now set per redirect.</li>\n 	<li>Redirects can now be imported from the .htaccess file.</li>\n 	<li>Redirects can now be written to the .htaccess file.</li>\n 	<li>A redirect is automatically added when a post slug change.</li>\n 	<li>The possibility to add a redirect is offered when a post is deleted.</li>\n 	<li>A redirect is automatically added when a category/term slug change.</li>\n 	<li>The possibility to add a redirect is offered when a category/term is deleted.</li>\n 	<li>Added support to redirect URL\'s with special characters.</li>\n 	<li>Response code of redirects is now checked while adding redirects to avoid incorrect redirects.</li>\n 	<li>Created a Yoast overlay for a more user friendly way of displaying errors.</li>\n 	<li>Implemented autoloader to enhance plugin performance.</li>\n 	<li>Updated WordPress SEO core to 1.5.3.3.</li>\n</ul>\n<h2>1.1.3</h2>\n<small>May 22nd, 2014</small>\n<ul>\n 	<li>Updated WordPress SEO core to 1.5.3.2</li>\n</ul>\n<h2>1.1.2</h2>\n<small>April 25th, 2014</small>\n<ul>\n 	<li>Fixed notices when fetching remote crawl issues and there are now crawl issues from remote.</li>\n 	<li>Updated WordPress SEO core to 1.5.2.8</li>\n</ul>\n<h2>1.1.1</h2>\n<small>April 15th, 2014</small>\n<ul>\n 	<li>Updated WordPress SEO core to 1.5.2.7</li>\n</ul>\n<h2>1.1.0</h2>\n<small>April 4st, 2014</small>\n<ul>\n 	<li>Updated WordPress SEO core to 1.5.x</li>\n 	<li>Google Webmaster Tools crawl issues are now cached decreasing load time of issues dramatically.</li>\n 	<li>Google Webmaster Tools profile can now manually be selected.</li>\n 	<li>Added \'not redirected\' filter to crawl issues table.</li>\n 	<li>Added option to ignore crawl issues.</li>\n 	<li>Added import option from Redirection plugin.</li>\n 	<li>Added a redirect link to WordPress toolbar on 404 pages.</li>\n 	<li>Added support for REGEX redirects.</li>\n</ul>\n<h2>1.0.8</h2>\n<small>March 21st, 2014</small>\n<ul>\n 	<li>Updated WordPress SEO core to 1.5.2.5</li>\n</ul>\n<h2>1.0.7</h2>\n<small>March 14st, 2014</small>\n<ul>\n 	<li>Updated WordPress SEO core to 1.5.2.2</li>\n</ul>\n<h2>1.0.6</h2>\n<small>March 12st, 2014</small>\n<ul>\n 	<li>Updated WordPress SEO core to 1.5.2.1</li>\n</ul>\n<h2>1.0.5</h2>\n<small>March 11st, 2014</small>\n<ul>\n 	<li>Updated WordPress SEO core to 1.5.2</li>\n</ul>\n<h2>1.0.4</h2>\n<small>March 11st, 2014</small>\n<ul>\n 	<li>Updated WordPress SEO core to 1.5.0</li>\n</ul>\n<h2>1.0.3</h2>\n<small>Feb 26st, 2014</small>\n<ul>\n 	<li>Fixed an incorrect constant define.</li>\n 	<li>Updated WordPress SEO core to 1.4.25.</li>\n 	<li>Now using the correct file reference (WPSEO_FILE) in main WPSEO file.</li>\n</ul>\n<h2>1.0.2</h2>\n<small>Feb 18st, 2014</small>\n<ul>\n 	<li>Fixed a bug that prevented options on the WPSEO dashboard from saving.</li>\n 	<li>Updated WordPress SEO core to 1.4.24.</li>\n</ul>\n<h2>1.0.1</h2>\n<small>Jan 31st, 2014</small>\n<ul>\n 	<li>Remove dependency on PHP 5.3 function DateTime</li>\n</ul>\n::getTimestamp() so plugin works on PHP 5.2 installs too.\n<h2>1.0</h2>\n<small>Jan 23rd, 2014</small>\n<ul>\n 	<li>Initial release.</li>\n</ul>\n<div class=\"grammarly-disable-indicator\"></div>\n<div class=\"grammarly-disable-indicator\"></div>\";}}i:1;O:8:\"stdClass\":3:{s:11:\"renewal_url\";s:0:\"\";s:11:\"expiry_date\";s:24:\"2037-02-01T05:00:00.000Z\";s:7:\"product\";O:8:\"stdClass\":7:{s:7:\"version\";s:4:\"11.1\";s:4:\"name\";s:30:\"Local SEO for WordPress plugin\";s:4:\"slug\";s:15:\"yoast-seo-local\";s:12:\"last_updated\";s:24:\"2019-04-30T11:16:59.000Z\";s:9:\"store_url\";s:56:\"https://yoast.com/eu/product/local-seo-wordpress-plugin/\";s:8:\"download\";s:58:\"https://yoast.com/app/uploads/2019/04/wpseo-local-11.1.zip\";s:9:\"changelog\";s:54716:\"<h3>11.1 (release: 2019-04-30):</h3>\n<ul>\n 	<li>Bug fixes:\n<ul>\n 	<li>Fixes a fatal error that would be thrown when using the \'open now\' functionality in the opening hours block or widget.</li>\n 	<li>The location select on the WooCommerce checkout page was breaking out of it\'s container. We fixed that.</li>\n</ul>\n</li>\n 	<li>Other:\n<ul>\n 	<li>All Facebook Open Graph meta tags are removed, since they are no longer used.</li>\n</ul>\n</li>\n</ul>\n<h3>11.0 (release: 2019-04-16):</h3>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Implemented severe schema changes, hooking into the new Yoast SEO JSON+LD output. Changes include:\n<ul>\n 	<li>New markup for locations.</li>\n 	<li>Valid opening hours.</li>\n 	<li>Option to set locations as not part of one organisation.</li>\n</ul>\n</li>\n 	<li>Added show open label for current day to Opening Hours block.</li>\n</ul>\n</li>\n 	<li>Bug fixes:\n<ul>\n 	<li>Fixed an issue that caused the open/closed message to not always work correctly in the opening hours widget for a location in a multi-location setup.</li>\n 	<li>Fixed an issue that caused \'Local Pickup Allowed\' to show a duplicate setting in the admin columns.</li>\n 	<li>Fixed a fatal error that occurred when saving an API key on a fresh install.</li>\n 	<li>Changed a <code>posts_where</code> filter that in some instances was causing the Woocommerce customer order page to not show their orders.</li>\n 	<li>Fixed a bug that was causing the Map block to fail loading in the admin area when upgrading from Local SEO 9.7+ to the current version.</li>\n</ul>\n</li>\n 	<li>Other:\n<ul>\n 	<li>Always force Company or Person to Company.</li>\n</ul>\n</li>\n</ul>\n<h3>10.1 (release: 2019-04-02):</h3>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Users can now choose per location whether the time format in which opening hours will be displayed should be 12 or 24 hours notation. If the option is not set, there is a fallback to the default, stored under options.</li>\n</ul>\n</li>\n</ul>\n<h3>10.0.1 (release: 2019-03-13):</h3>\n<ul>\n 	<li>Bug fix:\n<ul>\n 	<li>Fixes fatal error in the opening hours widget.</li>\n</ul>\n</li>\n</ul>\n<h3>10.0 (release: 2019-03-12):</h3>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Show a label in the opening hours after the current day stating if the location is opened. This can be turned on in the widget or by using a this filter: <code>wpseo_local_show_open_now_label</code>.</li>\n</ul>\n</li>\n 	<li>Bug fixes:\n<ul>\n 	<li>Prevent days from selecting themselves in the opening hours widget.</li>\n</ul>\n</li>\n</ul>\n<h3>9.7 (release: 2019-02-26):</h3>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>When a different shipping address is selected, the local store pickup option will disappear</li>\n 	<li>API key settings for lat/long calculation are now more clarified and state that an API key first needs to be set before automatic calculation of lat/long can be done.</li>\n</ul>\n</li>\n 	<li>Bug fixes:\n<ul>\n 	<li>To prevent cached shipping results to be shown, WooCommerce\'s shipping method transients are now cleared when the local store pickup options are saved.</li>\n</ul>\n</li>\n</ul>\n<h3>9.6.1 (release: 2019-02-12):</h3>\n<ul>\n 	<li>Other:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.6.1</li>\n</ul>\n</li>\n</ul>\n<h3>9.6 (release: 2019-02-12):</h3>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Opening hours block now shows \'Loading opening hours\' label in the editor when loading data.</li>\n 	<li>When a location needs to be selected, the label \'Please select a location in the sidebar on the right\' is shown in the editor. This makes it more clear where the location selector can be found.</li>\n 	<li>Adds margin to the Location Select dropdown for UI improvement.</li>\n</ul>\n</li>\n 	<li>Bug fixes:\n<ul>\n 	<li>Names of week days were misspelled. They now contain the mandatory capital.</li>\n</ul>\n</li>\n</ul>\n<h3>9.5 (release: 2019-01-22):</h3>\n<ul>\n 	<li>Bug fixes:\n<ul>\n 	<li>Locations category sitemap was not generated. It is now. From now on it\'s only excluded when no categories are available.</li>\n 	<li>Fixes JS error when no shipping zones were set.</li>\n 	<li>Fixes undefined index <code>enhanced_search</code></li>\n</ul>\n</li>\n</ul>\n<h3>9.4 (release: 2019-01-08):</h3>\n<ul>\n 	<li>Enhancement\n<ul>\n 	<li>This version introduces two new Gutenberg blocks to work with:\n<ul>\n 	<li>The opening hours block</li>\n 	<li>The store locator block</li>\n</ul>\n</li>\n 	<li>Blocks are now categorized under \'Yoast Structured Data Blocks\'</li>\n</ul>\n</li>\n 	<li>Bug fixes:\n<ul>\n 	<li>Fix a missing line break in the 2nd address line.</li>\n 	<li>Fix a bug that caused dimension for the store locator map not to work.</li>\n 	<li>Fix a typo in the custom permalinks description on the settings page.</li>\n</ul>\n</li>\n</ul>\n<h3>9.3 (release: 2018-12-18):</h3>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug that caused password protected locations to show up.</li>\n 	<li>Changed the unique identifier in the JSON-LD output to prevent conflicts with the breadcrumbs</li>\n 	<li>Fixed a undefined variable in localization data.</li>\n</ul>\n</li>\n</ul>\n<h3>9.2 (release: 2018-11-20):</h3>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>The <code>wp-seo-local-frontend.js</code> file was included in the footer of every admin page. It is now only included when it\'s needed.</li>\n 	<li>Prevent unnecessary geocoding calls.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Yoast SEO: Local SEO for WooCommerce has been integrated into Local SEO.\n<ul>\n 	<li>You can use your Yoast SEO Local locations as pickup store in your WooCommerce shop.</li>\n 	<li>Adds a screen in the WooCommerce section which shows you an actual overview of the orders which should be delivered at your pickup store(s).</li>\n 	<li>Configure a pick up location as tax address.</li>\n 	<li>If you had a Local SEO for WooCommerce license, this has been converted into a Local SEO license.</li>\n</ul>\n</li>\n 	<li>Read more about it in this KB article: <a href=\"https://yoa.st/local-woo-local\">https://yoa.st/local-woo-local</a>.</li>\n</ul>\n</li>\n</ul>\n<h3>9.1 (release: 2018-11-06):</h3>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug that caused the 2nd address line no to be outputted in the .kml file.</li>\n 	<li>Fixed a bug that caused the business logo\'s not to show up when showing all location addresses.</li>\n 	<li>Show the location category taxonomy in the Gutenberg sidebar.</li>\n 	<li>Fixed a bug where a PHP warning would be displayed when <code>php_uname</code> has been disabled for security reasons.</li>\n</ul>\n</li>\n 	<li>Other:\n<ul>\n 	<li>Added description to clarify the used of the business image in the Yoast SEO: Local settings.</li>\n</ul>\n</li>\n</ul>\n<h3>9.0 (release: 2018-10-23):</h3>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug that caused custom classes not to be added to the address- and map-block output.</li>\n 	<li>Fixed a bug that prevented a business logo from being shown in the address shortcode and block.</li>\n 	<li><code>[wpseo_map id=\"all\"]</code> and <code>[wpseo_address id=\"all\"]</code> now actually show all locations instead of a maximum of 10.</li>\n</ul>\n</li>\n</ul>\n<h3>8.4 (release: 2018-10-09):</h3>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug that caused the Yoast SEO: Local enhanced search not to work.</li>\n 	<li>Fixed a bug that made the message that a location is open 24/7 not show up.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>The enhanced search can now be enabled / disabled from the settings page.</li>\n</ul>\n</li>\n 	<li>Other:\n<ul>\n 	<li>Change the json-ld output to better reflect the desired output for schema.org for opening hours for 24h and 24/7 opening times.</li>\n</ul>\n</li>\n</ul>\n<h3>8.3 (release: 2018-09-25):</h3>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed a bug where opening hours were not correctly shown in the header for Facebook Open Graph.</li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Added Slovenian translation for the plugin.</li>\n 	<li>Diverse code quality improvements.</li>\n</ul>\n</li>\n</ul>\n<h3>8.2 (release: 2018-09-11):</h3>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Opening hours options were still showing, even though the 24/7 option was selected.</li>\n 	<li>Fixed a bug with the Open/Closed widget. It now shows the correct messages at the correct times.</li>\n</ul>\n</li>\n 	<li>Enhancement\n<ul>\n 	<li>Introducing Gutenberg Blocks.\n<ul>\n 	<li>Added address block.</li>\n 	<li>Added Google Maps block.</li>\n</ul>\n</li>\n</ul>\n</li>\n</ul>\n<h3>8.1 (release: 2018-08-28):</h3>\n<ul>\n 	<li>Bug fixes\n<ul>\n 	<li>Fixed a typo that caused the shortcode generator for the store locator to no longer work.</li>\n</ul>\n</li>\n</ul>\n<h3>8.0 (release: 2018-08-14):</h3>\n<ul>\n 	<li>Other\n<ul>\n 	<li>Improved code quality</li>\n</ul>\n</li>\n</ul>\n<h3>7.9.1 (release: 2018-08-07):</h3>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Prevent double output of JSON-LD structured data when using opening hours in address shortcode.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Add option for 24/7 and 24 hour opening hours</li>\n 	<li>Add phone/phone2/fax options to single map</li>\n 	<li>Add height/width/zoom options to store locator map</li>\n 	<li>Disabled route planner option in shortcode settings for single map when multiple locations are selected</li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Bumped YoastSEO.js to 1.35.5</li>\n</ul>\n</li>\n</ul>\n<h3>7.9 (release: 2018-07-24):</h3>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fix invalid XML sitemap output by escaping URLs.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Changed UI for permalinks and labels on the general settings page to be more user friendly.</li>\n 	<li>Better aligned labels for input fields on the general settings page to make it clearer what field they belong to.</li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Improved code quality.</li>\n 	<li>Improved code security.</li>\n</ul>\n</li>\n</ul>\n<h2>7.8 (release: 2018-07-10):</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed a bug where if <code>wpseo_json_ld_output</code> was set to false, Local SEO still ouputted JSON-LD data.</li>\n 	<li>Fixed a bug where <code>wpseo_show_opening_hours_after</code> was used as an action instead of as a filter.</li>\n 	<li>Fixed a bug where Show URL was not an option in the Show Address widget.</li>\n 	<li>Fixed a typo in the word \'consider\'.</li>\n 	<li>Fixed a typo in assignment vs comparison operator.</li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Updated YoastSEO.js to 1.35.1.</li>\n 	<li>Improved code quality.</li>\n 	<li>Improved code security.</li>\n 	<li>Various i18n fixes.</li>\n</ul>\n</li>\n</ul>\n<h2>7.7 (release: 2018-06-26):</h2>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Move business types to own repository.</li>\n 	<li>Make business types filterable with <code>yoast-local-seo-business-types</code> filter.</li>\n 	<li>Make business types translatable.</li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Updated Yoast SEO JS to 1.34.0.</li>\n 	<li>Removed deprecated business types.</li>\n 	<li>Improved code quality.</li>\n</ul>\n</li>\n</ul>\n<h2>7.6 (release: 2018-06-05):</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Changed faulty text for showing address on one line in shortcode.</li>\n 	<li>Remove leading comma in address when business name is hidden.</li>\n 	<li>Remove leading comma in address when business address is hidden.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Make output in .kml human readable and not encoded.</li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Added link to Yoast KB about HTTPS when HTTPS is disabled.</li>\n 	<li>Improved code quality.</li>\n 	<li>Added Security Advisories package.</li>\n</ul>\n</li>\n</ul>\n<h2>7.5 (release: 2018-05-15):</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed a bug that caused the \'draggable\' option for the Store Locator not to work.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Add filter <code>yoast-local-seo-search-label</code> to edit Search Label for store locator.</li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Extend <code>WPSEO_Admin_Asset_Manager</code> class to manage assets.</li>\n 	<li>Update YoastSEO.js to 1.31.</li>\n</ul>\n</li>\n</ul>\n<h2>7.4 (release: 2018-05-01):</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed a bug where closed days were not hidden when the option was selected in the widget or shortcode.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Added option to set a custom \'closed\' label.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v7.3\">7.3 (release: 2018-04-17):</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed a bug where Select2 wasn\'t working on location pages.</li>\n 	<li>Fixed link to Locations CPT in shortcode dialog if no locations are present.</li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Converted knowledge base link to shortlink.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v7.2\">7.2 (release: 2018-04-03):</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed JSON-LD output for opening hours.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Extended JSON-LD with @id parameter.</li>\n 	<li>Automatically sets the Yoast SEO setting for <code>company or person</code> to <code>company</code>, in order to make full use of the JSON-LD output.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v7.1\">7.1 (release: 2018-03-20):</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed output of JSON+LD under widgets and shortcodes.</li>\n 	<li>Fixed undefined variable for options in Locations Repository class</li>\n 	<li>Cast location ID as an array to make it countable.</li>\n 	<li>Images on the shortcode buttons weren\'t showing due to a wrong path.</li>\n 	<li>Fixed a bug where the Local SEO Shortcode buttons no longer appeared when adding a new post/page/cpt.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Added two filters to disable enhanced search and enhanced search results: <code>yoast_local_seo_enhanced_search_enabled</code> and <code>yoast_local_seo_enhanced_search_result_enabled</code></li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Moved enhanced search functions to own class.</li>\n 	<li>Split the enhanced search <code>posts_clauses</code> function filter into <code>posts_where</code>, <code>posts_join</code> and <code>posts_orderby</code>.</li>\n 	<li>Updated YoastSEO.js to 1.30</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v7.0\">7.0 (release: 2018-02-13):</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed a bug where all scripts for the shortcode buttons were loaded on all the admin pages.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Optimised queries for getting locations in shortcode dialogs.</li>\n</ul>\n</li>\n 	<li>Other\n<ul>\n 	<li>Added deprecation notice to <code>wpseo_local_get_address_format()</code>.</li>\n 	<li>Moved from NPM to Yarn for dependency management.</li>\n 	<li>Changed the output of JSON+LD. In a single location setup the output is only done in the <code></code> on the front-page and also under every shortcode and widget. In a multi location setup, the output is done on every single location page and under every shortcode and widget.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v6.3\">6.3 (release: 2018-02-13):</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed a bug where you couldn\'t upload an SVG as business image.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Added filter <code>yoast_seo_local_cpt_with_front</code> to enable or disable prependeding the locations permalink with the front base.</li>\n 	<li>Replace schema.org markup with JSON-LD output.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v6.2\">6.2 (release: 2018-01-23):</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed an error whereby widgets were not show on \"current location\" pages (only appeared when using multiple locations).</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Add a filter <code>yoast_seo_local_change_map_location_url</code> to alter the URL for a location in the maps info window.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v6.1.1\">6.1.1 (release: 2018-01-16):</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed an error whereby widgets were not show on \"current location\" pages (only appeared when using multiple locations).</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v6.1\">6.1 (release: 2018-01-09):</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Added a check if the wpseo_locations locations exists to prevent a notice from being thrown.</li>\n 	<li>Check if a lat/long has a numeric value to prevent an error from being thrown.</li>\n 	<li>Added 2nd line of business address to .kml file.</li>\n 	<li>Changed <code>business:contact_data:country</code> to <code>business:contact_data:country_name</code> to resolve Open Graph error.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v6.0\">6.0 (release: 2017-12-20):</h2>\n<ul>\n 	<li>Enhancement:\n<ul>\n 	<li>Allow a maximum number of results to be set for the <code>Store Locator</code>, <code>Map</code> and <code>Address</code> shortcodes.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug where, if multiple ID\'s were passed to the Locations Repository, only 1 ID was returned.</li>\n 	<li>Only show a link to a location in the map or store locator when the location CPT is set to public</li>\n 	<li>Fixed a bug where location detection wasn\'t working in Firefox.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.9\">5.9 (release: 2017-12-05):</h2>\n<ul>\n 	<li>Enhancement:\n<ul>\n 	<li>The page will now automatically jump to the Store Locator form when a search is done.</li>\n 	<li>Added schema markup OpeningHoursSpecification from <a href=\"http://schema.org/OpeningHoursSpecification\">http://schema.org/OpeningHoursSpecification</a> to opening hours output.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>The 24h option is now also usable for multiple locations as well as single locations.</li>\n</ul>\n</li>\n 	<li>Other:\n<ul>\n 	<li>Changed Server Key description.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.8\">5.8 (release: 2017-11-15):</h2>\n<ul>\n 	<li>Enhancement:\n<ul>\n 	<li>The page will now automatically jump to the Store Locator form when a search is done.</li>\n 	<li>Show opengraphs tags on every page when using the single location setup.</li>\n 	<li>Added support for Beaver Builder front-end editing.</li>\n 	<li>Updated this readme for 3.3.1 version to make it clear that we removed the Tools section from the admin panel.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug where only an array of ID\'s could be passed to the Locations Repository. It can now also be a single ID.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.7\">5.7 (release: 2017-10-24):</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed undefined index issue for \'hide_closed\' option in WPSEO Opening Hours widget</li>\n 	<li>Fixed issue that caused \'show price range\' option to be unselectable in WPSEO Address widget</li>\n 	<li>Added Price Range asfield to Opening Hours stand-alone output</li>\n 	<li>Fixed a fatal error that occurred when Local SEO was deactivated and Yoast SEO (Free or premium) was not active.</li>\n</ul>\n</li>\n 	<li>Enhancement:\n<ul>\n 	<li>Added geotags for Single Location installs and singluar locations in Multi-location installs</li>\n 	<li>Added a dashicon for Yoast Local SEO.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.6\">5.6 (released: 2017-10-10):</h2>\n<ul>\n 	<li>Enhancement:\n<ul>\n 	<li>Make use of the new <code>wpseo_manage_options</code> capability. See https://github.com/Yoast/wordpress-seo/issues/7831 for more information.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.5\">5.5 (released: 2017-09-26):</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a notice when saving widgets.</li>\n 	<li>Fixed location detection.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.4\">5.4 (released: 2017-09-06):</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug where the ability to show or hide opening hours when using multiple locations wasn\'t available</li>\n 	<li>Notifications in the Yoast Notification Center created by Yoast Local SEO are now removed upon deactivating the plugin</li>\n</ul>\n</li>\n</ul>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Textual changes to benefit UX.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.3\">5.3 (released: 2017-08-22):</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Show country on correct position in map info popup</li>\n 	<li>Check on business city in URL didn\'t work correctly.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Flush KML transient cache after saving Local SEO options.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.2\">5.2</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Show country in info-popup of map, when it\'s set in the shortcode options.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Updated Travis config in order to match Yoast SEO\'s version.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.1\">5.1</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Company logo for a single location is now displaying correctly</li>\n 	<li>The open/closed widget in some cases threw a wp_error which caused a fatal error and the page to stop rendering.</li>\n 	<li>Enhancements:</li>\n 	<li>Added automatic location detection which was already present in the Store Locator to route planner in the map.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.0\">5.0</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug that caused the content analysis to show a red bullet for a address shortcode with valid schema.org, even though it was there.</li>\n 	<li>The company logo wasn\'t outputted, even though a logo was set in Yoast SEO.</li>\n 	<li>The URL in the Google Maps Info Window popup now is the correct one.</li>\n 	<li>VAT, Tax and COC id were not shown, they are now.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.9\">4.9</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a big that caused other locations in the \'copy from location\' select box to not show up.</li>\n 	<li>Removed duplicate second phone number from Google Maps info window</li>\n 	<li>Removed duplicate second e-mail address from Google Maps info window</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.8\">4.8</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug that prevented a correct calculation of the route to a location</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added phone number to .kml file for locations</li>\n 	<li>Add a &lt;meta&gt; with the location business name to output when business name is hidden.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.7.1\">4.7.1</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed an issues where some data, such as phone number, in the shortcodes wasn\'t outputted because of wrong variable checks.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.7\">4.7</h2>\n<ul>\n 	<li> Enhancements:\n<ul>\n 	<li>A rewrite of the way locations are fetched. A new Locatons Repository class is added. This class returns an array of all the location data and can be called by using <code>new WPSEO_Local_Locations_Repository();</code>. With the methods <code>get()</code> you can fetch the locations. Get accepts a number of arguements. Check the code in <code>/classes/class-locations-repository.php</code> for more detailed information.</li>\n 	<li>A business image is now scaled to medium size when displaying on the Local SEO settings page.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.6\">4.6</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Build in a check for touch devices, to avoid issues with map properties as draggable and gestureHandling.</li>\n 	<li>Changed to in the opening hours HTML output to achieve a correct HTML spec. The datetime attribute was invalid.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Make the route label in the store locator filterable by using <code>wpseo_local_location_route_label</code>.</li>\n 	<li>Added the shortcode buttons for address, map, storelocator and opening hours to other editor windows such as terms and categories.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.5\">4.5</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Added better content check when using the store locator. More info at: http://www.localseoguide.com/store-locator-sucks-dont-surprised-got-hammered-possum/</li>\n 	<li>Added a content check for using city in h1/h2 elements on location pages.</li>\n 	<li>Added a check to see whether Schema.org is used on location page.</li>\n 	<li>Added a check for the use of focus keyword in h1/h2 elements on location pages.</li>\n 	<li>Obfuscates email address to make harvesting by bots a bit harder.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.4\">4.4</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed fatal error when (de)activating Yoast SEO: Local when Yoast SEO is not *yet) activated.</li>\n 	<li>Fixed an issue with publish date of imported locations.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added second address to import/exort of locations.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.3\">4.3</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Moved textdomain call to make sure that if a user chooses a different backend language, everything is translated correctly.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added schema.org to infoWindow poup when showing a map</li>\n 	<li>Removed redundant title attributes from buttons in admin</li>\n 	<li>Added filters to admin labels so they can be altered to the users desire.</li>\n 	<li>Add a notification to shortcodes when multiple locations are used and no locations are added yet.</li>\n 	<li>Added gesture handling to Google Maps</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.2.1\">4.2.1</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixes fatal error due to yoast_i18n class</li>\n 	<li>Fixes notice in geo-sitemap</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.2\">4.2</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Added new WPSEO<em>Local</em>Timezone_Api class.</li>\n 	<li>Added a new function: <code>yoast_seo_local_is_location_open</code>. This function returns true of false whethere a location is currently open.</li>\n 	<li>Introduced a new widget that allows you to show a message when a location is open or closed.</li>\n 	<li>Added instructions about the usage of 2nd set of opening hours.</li>\n 	<li>When only using a single location, you can now see a preview map with draggable marker on the Yoast Local SEO settings page.</li>\n 	<li>Added a new option to upload a business image.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Replaced deprecated function <code>WPSEO_Utils::register_cache_clear_option</code> with <code>WPSEO_Sitemaps_Cache::register_clear_on_option_update</code></li>\n 	<li>Replaced deprecated function <code>wpseo_xml_sitemaps_base_url</code> with <code>WPSEO_Sitemaps_Router::get_base_url</code></li>\n 	<li>Added location<em>address</em>2 to the Yoast SEO Local default values to prevent undefined index notices.</li>\n 	<li>Fixed a bug where 2nd sets of opening hours were not shown immediately when the options was selected for single locations.</li>\n 	<li>Fixed styling bug for 2nd set of opening hours in the admin area.</li>\n 	<li>Remove opening hours from settings page when multiple locations are used.</li>\n 	<li>Switching between 12 and 24 hour time notations now works again.</li>\n 	<li>Business image was not shown correctly in schema.org markup in opening hours and address widgets and shortcodes</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.1\">4.1</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Added marker clustering as an option. If enabled markers within close proximity will be clustered. Marker clustering can be enabled or disabled by a specific setting in shortcodes (for map and store locator) and the map widget.</li>\n 	<li>Added a new filter for using custom cluster images <code>wpseo_local_marker_cluster_image_path</code>.</li>\n 	<li>To prevent a repeating world map (in most cases), the minimal zoom level for maps is now set at 1.</li>\n 	<li>Added price range fields for schema.org markup.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Resolved issue where only published locations were shown in the map for logged in users.</li>\n 	<li>Fixed a bug that prevented the Store Locator map to show up for non logged in users.</li>\n 	<li>Added missing datetime property for opening hours.</li>\n 	<li>Fixed wrong output from <code>wpseo_local_show_address()</code> when a logo was shown.</li>\n</ul>\n</li>\n</ul>\n<h2>4.0.1</h2>\n<ul>\n 	<li>Fixes a bug where a PHP notice was shown when a map was embedded for a site with only one location.</li>\n</ul>\n<h2 id=\"v4.0\">4.0</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Refactoring of the settings page.</li>\n 	<li>Added filtering for location categories to the map and store locator.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Selecting \'all locations\' caused the map not to show up in the widget. It does now.</li>\n 	<li>Fixed undefined index notice for a location country on a fresh install.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.9\">3.9</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Added sanitation for WPSEO Local options</li>\n 	<li>Added a second business address line that can be used for example for room numbers or floors.</li>\n 	<li>Times in the Local SEO settings are now updated in realtime when switching between 12 and 24h notation</li>\n 	<li>We did a massive overhaul for the import function and also added an export for Yoast Local SEO locations. For developers: functionality is moved from the WPSEO<em>Local</em>Admin class to new classes.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.8\">3.8</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Changed warning text about the required Yoast SEO installation</li>\n 	<li>Removed location detection checkbox if not on HTTPS</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.7\">3.7</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>In order to preserve consistency, London is changed as city in favor of New York in the address format examples.</li>\n 	<li>Added option to hide the business address in address shortcode and widget.</li>\n 	<li>Added a new widget to show locations by category</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug that caused a map not to show up when all locations were selected.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.6\">3.6</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Added option to automatically detect a users location for use in the route calculation or store locator. Note: HTTPS is required for this option!</li>\n 	<li>Added translator comments throughout the plugin, explaining the contextual meanings of %s and %d.</li>\n 	<li>Removed Chosen in favor of Select2 JS library</li>\n 	<li>Added an option in the map shortcode and widget to show the info window by default if you select a single location.</li>\n 	<li>From now on, on the init action, Yoast Local SEO default options are checked. If they are not set, they will be.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>When showing the address on one line and there is nog logo, the business name now gets a trailing comma and space</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.5\">3.5</h2>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Sitemap transient is now cleared upon (de-)activation of the plugin.</li>\n 	<li>Default opening hours are now set (if not set already) upon activation or updating the plugin from version 3.4 or below.</li>\n 	<li>You can now add a note in the address shortcode.</li>\n 	<li>Fixed a few undefined index warnings.</li>\n 	<li>Add ability to set Google Maps API keys by using the following constants: WPSEO_LOCAL_API_KEY_SERVER and WPSEO_LOCAL_API_KEY_BROWSER.</li>\n 	<li>If you are allowed to edit locations, you can now select draft posts in the Local SEO widgets, shortcodes and location data copier.</li>\n 	<li>Updated verbiage. The storelocator now reads \"Enter your postal code, city and / or state\".</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Removed wrongfully placed comma\'s in some address formats.</li>\n 	<li>Centering of map option is disabled by default when inserting Google Maps via shortcode on a location page, since a single location is centered by default.</li>\n 	<li>Hide the storelocator settings if not using multiple locations.</li>\n 	<li>Show alt text for logo\'s. Alt texts can be managed in the media library.</li>\n 	<li>City and state are now correctly shown in locations.kml.</li>\n 	<li>Removed the deprecated business type Attorney and replaced it with the new Legal Service. When updating from 3.4 or below the business types Attorney will all automaticly be replaced by Legal Service.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.4.1\">3.4.1</h2>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>UX: We no longer tell users they can drag the location marker unless they have set coordinates.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixes a bug where the address widget didn\'t correctly show the address if the address was displayed on one line and the company logo is shown.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.4\">3.4</h2>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Added Local SEO to admin menu onder SEO Settings</li>\n 	<li>Location category slug is now filterable using <code>wpseo_locations_category_label</code> filter</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Remove redundant comma when address is displayed in 1 line and business logo is shown.</li>\n 	<li>Default country was set too late, which caused notifications.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.3.1\">3.3.1</h2>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Introduced Browser API key in settings because Google now requires this to embed maps on your site.</li>\n 	<li>Introduced Help Center on settings tabs.</li>\n 	<li>Introduced notification for empty API key settings.</li>\n 	<li>Refactored the address format code, and introduced a class for it.</li>\n 	<li>Deprecated the wpseo_local_get_address_format() function. Use the new <code>WPSEO_Local_Address_Format</code> class now.</li>\n 	<li>Location taxonomy names are now based on post type singular name.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Zoomlevels 0 and 1 now work as intended in the WPSEO Show Map widget</li>\n 	<li>Flush rewrite rules after changing the location category slug to prevent a 404 on category pages</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.3\">3.3</h2>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Better explanation for search radius for store locator in widget</li>\n 	<li>Removed translations of \"Local SEO\" since it\'s a brand name</li>\n 	<li>Hide links to locations and locations category admin pages, when options aren\'t saved yet (caused 404 errors)</li>\n 	<li>Make translation possible for upload button</li>\n 	<li>Added translation promo box</li>\n</ul>\n</li>\n 	<li>Bugfixes\n<ul>\n 	<li>Location Category Custom Map Marker wasn\'t displayed.</li>\n 	<li>Company Logo didn\'t appear in Address Widget.</li>\n 	<li>Show address in one line showed comma when not needed.</li>\n 	<li>Error with localTitle and localURL assessments in page analysis fixed.</li>\n 	<li>Fixed the links to the location post type and taxonomy in admin, before saving themin the options.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.2.1\">3.2.1</h2>\n<small>April 20th, 2016</small>\n<ul>\n 	<li>Fixes a fatal error.</li>\n</ul>\n<h2 id=\"v3.2\">3.2</h2>\n<small>April 20th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Added a support beacon, so you can reach support directly from the Local SEO settings page.</li>\n 	<li>Make it possible to empty the \"default country\" field for the store locator, so it will not pollute the search results when you have locations in mutiple countries.</li>\n</ul>\n</li>\n</ul>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed a bug where Custom Marker Upload field was shown on all taxonomy and category edit pages.</li>\n 	<li>Fixed issue where routeplanner showed destination marker and location marker</li>\n 	<li>Fixed WooCommerce product search. Local search was interfering this product search with location details. Since location details are not needed in product search, this has been removed.</li>\n 	<li>In some cases the map was unable to find a route when only a zip code was entered. The default country from the options is added to the route calculation now.</li>\n 	<li>\"Show Locations Per Category\" is now also working at regular pages.</li>\n 	<li>itemprop=\"openingHours\" added to standalone Opening hours widget/shortcode.</li>\n 	<li>The comma displayed after city when \'Show State\' is not selected has now been removed.</li>\n 	<li>Don\'t show store locator when not having multiple locations.</li>\n 	<li>Disabled the store locator functionality when not having multiple locations (you could a regular map with route calculation instead).</li>\n 	<li>Location specific checks that were added to the content analysis would no longer work in combination with Yoast SEO 3.2 and higher.</li>\n 	<li>In Map widget: Show map widget: Location dropdown no longer hides/shows after saving.</li>\n 	<li>Opening hours widget for \"current location\" is working again.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.1\">3.1</h2>\n<small>March 2nd, 2016</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes deprecation warnings for filters that have been removed in Yoast SEO 3.0</li>\n 	<li>Fixed content error for Local admin page (iframe of lseo.com)</li>\n 	<li>Fixed mixed content issue for XSL</li>\n 	<li>Fixed grammar issues</li>\n 	<li>Fixed issue where not all data was copied from another location</li>\n 	<li>Fixed issue where \'show_email\' was not working in \'wpseo_map\' shortcode</li>\n 	<li>Removed undefined indexes throughout the plugin</li>\n 	<li>Fixed a bug that caused the store locator to only display one location if multiple locations with the same postal code were found.</li>\n 	<li>Fixed a bug in the enhanced search function that caused wrong pages to be returned in search</li>\n 	<li>Added XSS prevention measures.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Makes sure location specific content analysis checks work well with the Real Time content analysis tool in Yoast SEO 3.0.</li>\n 	<li>Added Email, Fax, Chamber of Commerce, VAT ID, Tax ID and 3 note fields to the import</li>\n 	<li>Added $atts as extra variable to the \'wpseo_opening_hours_time\' filter</li>\n 	<li>If either the opening or closing time is set to closed, opening hours wil now display this as closed.</li>\n 	<li>Added 4 new filters to filter shortcode attributes: shortcode_atts_wpseo_local_wpseo_local_show_map, shortcode_atts_wpseo_local_opening_hours, shortcode_atts_wpseo_local_show_address and shortcode_atts_wpseo_local_show_all_locations</li>\n 	<li>Use the WordPress option for \'first day of the week\' as first day in the opening hours widget</li>\n 	<li>Added feature where opening hours can now be shown per day (or multiple days)</li>\n 	<li>Updated widget constructors to be compatible with PHP 7</li>\n 	<li>Added a filter \'wpseo_local_search_custom_fields\' to alter the custom fields that should be searched</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.0\">3.0</h2>\n<small>November 18th, 2015</small>\n<ul>\n 	<li>Synchronized plugin version with all other Yoast SEO plugins for WordPress.</li>\n</ul>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes deprecation warnings for filters that have been removed in Yoast SEO 3.0</li>\n 	<li>Fixes content error for Local admin page (iframe of lseo.com).</li>\n 	<li>Fixed mixed content issue for XSL.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Makes sure location specific content analysis checks work well with the Real Time content analysis tool in Yoast SEO 3.0.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.3.8\">1.3.8</h2>\n<small>October 20th, 2015</small>\n<ul>\n 	<li>Bugfix:\n<ul>\n 	<li>Fixed bug where widgets no longer showed up when using a single location</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.3.7\">1.3.7</h2>\n<small>October 14th, 2015</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Don\'t show widget contents/title when no location has been entered</li>\n 	<li>Updated Widget constructor</li>\n 	<li>Fixed a bug where radius was display wrong in storelocator shortcode</li>\n 	<li>Fixed a bug where e-mail was no longer shown in address shortcode</li>\n 	<li>Hidden location category dropdown when there are no categories to select</li>\n 	<li>Fixed issue where page analysis did not recognize city in URL</li>\n 	<li>Map in storelocator is once again shown before a search</li>\n 	<li>Added (hidden) radius to store locator widget, so search will work properly again</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Changed naming from WordPress SEO to Yoast SEO</li>\n 	<li>Phone numbers are no longer formatted in</li>\n 	<li>Added option to center the map on a specific location</li>\n 	<li>Separated dragging and scrolling options for maps</li>\n 	<li>Added 3 note fields to locations and the import function</li>\n 	<li>Added option to upload a logo per location. The company logo can now be added to your address widget, the address shortcode or by the use of a newly added shortcode [wpseo_local_show_logo]. This shortcode accepts id as attribute.</li>\n 	<li>Added VAT, Tax and Chamber of Commerce ID fields</li>\n 	<li>Enhanced search by extending it with address, zip code and city parameters</li>\n 	<li>Locations found in search now display address details</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.3.6\">1.3.6</h2>\n<small>July 9th, 2015</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Removed condition shorthand due to POT file problems</li>\n 	<li>Fixed issue where allowing to scroll and zoom the map did not work as intended</li>\n 	<li>Removed some PHP notices</li>\n 	<li>Fixed issue where a custom \'Show route\' label was not correctly shown</li>\n 	<li>Route calculation is now based on lat/long</li>\n 	<li>Slide toggle for opening hours in admin reversed</li>\n 	<li>Missing space between input field and button</li>\n 	<li>Removed dash after one-line address if no other options are selected</li>\n 	<li>Extra span for telephone number, so Google picks it up</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added option to show email address in Google Maps info window</li>\n 	<li>Email address is no longer copied when copying data from other location</li>\n 	<li>Added a warning when a custom marker of larger than 100 x 100 pixels is used</li>\n 	<li>Added option to change the URL when using a single location.</li>\n 	<li>Added a \'wpseo_local_contact_details\' filter to change the labels and order of contact details</li>\n 	<li>Locations can now be shown per category</li>\n 	<li>If geocoding limit is reached, a notice will be shown.</li>\n 	<li>Added placeholder for \"Show route\" field</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.3.5\">1.3.5</h2>\n<small>March 25th, 2015</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Replaced all shorthand PHP tags that were being used.&lt;!--?php. Yep, really...</li>\n 	<li>Resolved some PHP 5.2 and 5.3 compatibilty issues</li>\n 	<li>Fixed the url for locations in locations.kml</li>\n 	<li>Added the + in url\'s for phone numbers</li>\n 	<li>Added map styles to the storelocator</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added support for Jetpack\'s Omnisearch</li>\n 	<li>Added support for Publicize and Markdown</li>\n 	<li>Added label fields. You can now determine your own labels for locations.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.3.4.1\">1.3.4.1</h2>\n<small>January 2nd, 2015</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixes a JS bug that was caused by a merge conflict</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.3.4\">1.3.4</h2>\n<small>December 22nd, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Wrong opening hours were added to meta-data when location is closed.</li>\n 	<li>Category sitemap was created when there were no location categories.</li>\n 	<li>Accept both \"value\" and \"nice name\" for Business Type in import.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added option for hiding (not using) opening hours.</li>\n 	<li>Added option for entering a Google Maps API key (useful when you have hundreds or more locations).</li>\n 	<li>We added a tab in the Options section, where we\'ve listed some great Local SEO tools.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.3.3\">1.3.3</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Updated translations for 10 languages.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.3.2\">1.3.2</h2>\n<small>October 8th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>When selecting quarters in opening hours, it isn\'t displayed as \"closed\" anymore</li>\n 	<li>Copying data from an existing location now works properly</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Custom markers for Google Maps, like this:\n<img class=\"nopadding alignnone wp-image-243529 size-full\" src=\"https://yoast.com/app/uploads/2013/03/custom-marker-google-maps-local-seo.png\" alt=\"Custom Marker in Google Maps, Local SEO\" width=\"434\" height=\"322\" /></li>\n 	<li>Custom markers per category (when using multiple locations)</li>\n 	<li>In the locations post edit screen, you can now drag the Google Maps pin to a different location</li>\n 	<li>Added an option to the store locator to show the nearest location if no locations are found in the searchradius</li>\n 	<li>Removed the current location from the \'copy data from another location\' drop down</li>\n 	<li>Expanded the importer with opening hours</li>\n 	<li>Added Business Type and URL to CSV import</li>\n 	<li>Added a nonce check to import</li>\n 	<li>Caching for sitemaps</li>\n</ul>\n<h2 id=\"v1.3.1\">1.3.1</h2>\n<small>July 2nd, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed unability to save 2 sets of openinghours</li>\n 	<li>Fixed issue where multiple locations or change of slug gave a 404.</li>\n 	<li>Fixed issue where business URL input field did not contain the correct URL</li>\n 	<li>Don\'t display number of results in store locator when no search is performed yet</li>\n 	<li>Fixed attachment upload when adding URL\'s for images in CSV import</li>\n 	<li>Fixed: Checkbox to use 24h format in metabox doesn\'t work when using multiple locations</li>\n 	<li>Fixed: business url was not being saved</li>\n 	<li>show_email wasn\'t being set to false, when not selecting it in the shortcode popup</li>\n 	<li>Business types were not saved correctly in metabox (musing ultiple locations)</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Hide import options when not using multiple locations</li>\n 	<li>Change link in Address (and store locator results) into \"Business URL\" option, with fallback to permalink</li>\n 	<li>Add option to make maps scrollable (or not)</li>\n 	<li>Added several new Schema.org markups (Residences, Governent Buildings, Chruches etc.)</li>\n 	<li>Added radius to \"Show store locator\" popup</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1302\">1.3.0.3</h2>\n<small>March 31th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>24-h format for opening hours works again</li>\n 	<li>Fixes sitemap URL\'s for servers which needs index.php in permalink structure</li>\n 	<li>Option added for hiding business name</li>\n 	<li>Hide \"Show route\" when not selected from popup.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Properly minify admin CSS scripts.</li>\n</ul>\n</li>\n 	<li>i18n\n<ul>\n 	<li>Updated es_ES, nl_NL and ru_RU</li>\n 	<li>Added de_DE, fr_FR and tr_TK</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1302\">1.3.0.2</h2>\n<small>March 17th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fix error that prevented properly recognizing current version.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1301\">1.3.0.1</h2>\n<small>March 13th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed fatal error when saving single location</li>\n 	<li>Fixed \"Non-static method\" notice</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v130\">1.3.0</h2>\n<small>March 11th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Mismatched <code>itemprop=\"email\"</code> for URL\'s now changed to <code>itemprop=\"url\"</code></li>\n 	<li>Manually changing lat/long coordinates is working again</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Add <code>{zipcode} {city}, {state}</code> address format</li>\n 	<li>Added html elements to address lines</li>\n 	<li>Added possibility to change author of location</li>\n 	<li>Added \"all locations\" option to Address button in edit-pages to show all locations</li>\n</ul>\n</li>\n 	<li>Code changes\n<ul>\n 	<li>Classes and instances of classes renamed to be more consistent with WP SEO</li>\n 	<li>Separated some functionality in different classes</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1222\">1.2.2.2</h2>\n<small>February 14th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Video sitemap was breaking after update 1.2.2.1. Fixed.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1221\">1.2.2.1</h2>\n<small>February 5th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Due to changes in sitemaps to be more in line with other WordPress SEO sitemaps, <code>geo_sitemap.xml</code> was not working anymore. Added now a redirect to redirect <code>geo_sitemap.xml</code> to <code>geo-sitemap.xml</code></li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v122\">1.2.2</h2>\n<small>January 31st, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixes fatal error in metabox when having no internet connection.</li>\n 	<li>Updates lat.long coordinates after changing address of location.</li>\n 	<li>Force slug for locations CPT, even when blank in admin bug.</li>\n 	<li>Notice fix in widget when location has no lat/long coordinates.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Possibility to add default country to improve searches from store locator (it adds the country to the search query).</li>\n 	<li>Show message when route cannot be calculated.</li>\n 	<li>Pre-select location when adding short codes via popup.</li>\n 	<li>Add filter to time-frame in Opening Hours.</li>\n 	<li>Added parameter to shortcode that prevents mouse scrolling.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v121\">1.2.1</h2>\n<small>December 10th, 2013</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed: Store locator gave unexpected results with a lot of locations.</li>\n 	<li>Store locator popup checkboxes didn\'t work correctly. Now they do. The scrollbar is gone too.</li>\n 	<li>Fixed: When some locations don\'t have geo locations, map with all locations fails.</li>\n 	<li>Fixed: Map failed when some locations don\'t have lat/long coordinates.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added documentation for CSV import</li>\n</ul>\n</li>\n 	<li>i18n\n<ul>\n 	<li>Updated .pot file</li>\n 	<li>Updated ru_RU translation</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v12\">1.2</h2>\n<small>December 4th, 2013</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Checkbox \'Hide closed days\' in widget-admin now works.</li>\n 	<li>Added filter \'wpseo_local_location_route_title_name\' for title \'route\' of widget and shortcode</li>\n 	<li>Added esc_html to filter \'wpseo_local_location_title_tag_name\'</li>\n 	<li>Replaced WPSEO_LOCAL_URL constants by using plugins_url() so that it can be filtered (where needed)</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added a store locator. Gives you the possibility to let people search for the neirest store/office</li>\n 	<li>Added a custom taxonomy for categorizing your locations</li>\n 	<li>You can enter custom URL\'s for your locations now</li>\n 	<li>Better icons for adding shortcodes</li>\n 	<li>Better UI for selecting the map style when adding a map shortcode</li>\n 	<li>Added possibility to add comma separated ID\'s to wpseo_map shortcode for selectively showing locations on a map</li>\n 	<li>Added a second field for a phone number (office, mobile etc.)</li>\n 	<li>Allow HTML in the \"Extra comment\" field in the Address and Opening Hours widgets</li>\n</ul>\n</li>\n 	<li>i18n:\n<ul>\n 	<li>Updated .pot file</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"117\">1.1.7</h2>\n<small>Sep 20th, 2013</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>When outputting opening hours on its own, don\'t add schema.org</li>\n 	<li>When using the \"insert address\" button it inserts the entire address with phone, country, fax, ect whether or not it\'s checked.</li>\n 	<li>When \"hide closing days\" isn\'t checked it still hides them.</li>\n 	<li>Added page layout options for Genesis themes</li>\n 	<li>Added quarters for the opening hours</li>\n 	<li>Added shortcode ( [wpseo_all_locations] ) to display all your locations at once.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added icons to shortcode buttons</li>\n 	<li>Added opening hours shortcode button\n<ul>\n 	<li>Allow license key to be set by constant WPSEO_LOCAL_LICENSE. Key will be hidden if valid.</li>\n</ul>\n</li>\n 	<li>Created option to show URL in address detail and in info-box in Google Map</li>\n 	<li>Deleted unnecessary files</li>\n</ul>\n</li>\n 	<li>i18n:\n<ul>\n 	<li>Updated hu_HU &amp; ru_RU</li>\n 	<li>Updated .pot file</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"116\">1.1.6</h2>\n<small>May 29th, 2013</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Apostrophe in company name created issues. Not anymore</li>\n 	<li>Setting Unit system works again</li>\n 	<li>When specifying a business type and saving, the chosen business type is now selected.</li>\n 	<li>Opening hours now display correctly if the opening hours are set to two sets, and only one set is used</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Shortcodes can now be inserted visually (button opens popup with settings)</li>\n 	<li>Google Maps is now responsive (fluid width)</li>\n 	<li>Hide link in popup box (Google Map) when there\'s just one location</li>\n 	<li>Added comment box in the address and opening hours widgets, for extra (optional) comments.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"115\">1.1.5</h2>\n<small>April 24th, 2013</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Make sure maps work on https.</li>\n 	<li>Improve JS output.</li>\n 	<li>Fix several widget bugs.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Remove jQuery dependency.</li>\n 	<li>Move JS to external file.</li>\n</ul>\n</li>\n 	<li>i18n:\n<ul>\n 	<li>Updated ru_RU translation.</li>\n 	<li>Added Swedish and Polish.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"114\">1.1.4</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Allow more values in shortcodes to set stuff to false.</li>\n 	<li>Fix bounds for Maps.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Make maps output search engine indexable links too.</li>\n</ul>\n</li>\n 	<li>i18n:\n<ul>\n 	<li>Added ru_RU translation.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"113\">1.1.3</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fix activation hook to work on add_option instead of just update_option, so activation works immediately.</li>\n 	<li>Multiple maps embedded on one page now work properly.</li>\n 	<li>Dropdowns with chosen script now line out properly.</li>\n 	<li>Google Maps geocoder script + maps embed scripts now properly enqueued and outputted in footer instead of within content.</li>\n 	<li>Maps shortcode output bug fixed.</li>\n</ul>\n</li>\n 	<li>Inline documentation:\n<ul>\n 	<li>Added link to FAQ entry about schema.org business types.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added back LocalBusiness business type to top of business type select.</li>\n 	<li>You can now use \"Current location\" for widgets, so you can use them on the locations pages. They\'ll output nothing outside of locations.</li>\n</ul>\n</li>\n</ul>\n<h2><a href=\"https://github.com/uprise10/wordpress-seo-local#112\" name=\"112\"></a></h2>\n<h2 id=\"112\">1.1.2</h2>\n<ul>\n 	<li>i18n\n<ul>\n 	<li>Added da_DK, hu_HU, it_IT and nl_NL translations.</li>\n</ul>\n</li>\n 	<li>Bugfixes\n<ul>\n 	<li>Fix <code>class_exists</code> check to actually check for the right class (props <a href=\"http://ryanmccue.info/\">Ryan McCue</a>).</li>\n 	<li>Make both front and backend classes global so methods can be used outside the plugin (props <a href=\"http://ryanmccue.info/\">Ryan McCue</a>).</li>\n 	<li>Fix overwriting of <code>$args</code> variable which broke widgets.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"111\">1.1.1</h2>\nFix the update functionality.\n<h2 id=\"11\">1.1</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Added hide_closed option to opening hours shortcode and widgets.</li>\n 	<li>Added option to show fax number and email address in both shortcode and widget.</li>\n 	<li>Improved UI for opening hours.</li>\n 	<li>Switched to a better endpoint for Google Maps Geocode API.</li>\n 	<li>Added state to KML file output.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>\"undefined\" URL in maps shortcode and widgets.</li>\n 	<li>Fixed several notices.</li>\n 	<li>Values \"off\" and \"no\" now properly work for shortcodes.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"10\">1.0</h2>\nInitial release.</li>\n</ul>\";}}i:2;O:8:\"stdClass\":3:{s:11:\"renewal_url\";s:0:\"\";s:11:\"expiry_date\";s:24:\"2037-02-01T05:00:00.000Z\";s:7:\"product\";O:8:\"stdClass\":7:{s:7:\"version\";s:4:\"11.1\";s:4:\"name\";s:30:\"Video SEO for WordPress plugin\";s:4:\"slug\";s:15:\"yoast-seo-video\";s:12:\"last_updated\";s:24:\"2019-04-30T11:23:39.000Z\";s:9:\"store_url\";s:56:\"https://yoast.com/uk/product/video-seo-wordpress-plugin/\";s:8:\"download\";s:58:\"https://yoast.com/app/uploads/2019/04/wpseo-video-11.1.zip\";s:9:\"changelog\";s:50056:\"<h2 id=\"v11.1\">11.1</h2>\n<small>April 30th, 2019</small>\nEnhancements:\n<ul>\n 	<li>Video SEO now uses Yoast SEO\'s new schema. <a href=\"https://yoa.st/video-schema\">Read more about the schema output in our documentation</a>.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a fatal error in the editor when the FV Flowplayer Video Player plugin is active.</li>\n</ul>\n<h2 id=\"v10.0\">11.0</h2>\n<small>April 16th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 11.0</li>\n</ul>\n<h2 id=\"v10.1\">10.1</h2>\n<small>April 2nd, 2019</small>\nOther:\n<ul>\n 	<li>Sets the minimum required Yoast SEO version to 10.1.</li>\n 	<li>Removes the deprecated methods ( &lt; 6.1 ).</li>\n</ul>\n<h2 id=\"v10.0\">10.0</h2>\n<small>March 12th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 10.0</li>\n</ul>\n<h2 id=\"v9.7\">9.7</h2>\n<small>February 26th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.7</li>\n</ul>\n<h2 id=\"v9.6.1\">9.6.1</h2>\n<small>February 12th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.6.1</li>\n</ul>\n<h2 id=\"v9.6\">9.6</h2>\n<small>February 12th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.6</li>\n</ul>\n<h2 id=\"v9.5\">9.5</h2>\n<small>January 22nd, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.5</li>\n</ul>\n<h2 id=\"v9.4\">9.4</h2>\n<small>January 8th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.4</li>\n</ul>\n<h2 id=\"v9.3\">9.3</h2>\n<small>December 18th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.3</li>\n</ul>\n<h2 id=\"v9.2\">9.2</h2>\n<small>November 20th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.2</li>\n</ul>\n<h2 id=\"v9.1\">9.1</h2>\n<small>November 6th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.1</li>\n</ul>\n<h2 id=\"v9.0\">9.0</h2>\n<small>October 23th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.0</li>\n</ul>\n<h2 id=\"v8.4\">8.4</h2>\n<small>October 9th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the changelog would not show up when the plugin was updated.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 8.4</li>\n</ul>\n<h2 id=\"v8.3\">8.3</h2>\n<small>September 25th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 8.3</li>\n</ul>\n<h2 id=\"v8.2\">8.2</h2>\n<small>September 11th, 2018</small>\n<ul>\n 	<li>Fixes a bug where the video thumbnail would be used as the OpenGraph image instead of the image set in the Social Preview section, resulting in Facebook displaying the wrong image.</li>\n 	<li>Compatibility with Yoast SEO 8.2</li>\n</ul>\n<h2 id=\"v8.1\">8.1</h2>\n<small>August 28th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 8.1</li>\n</ul>\n<h2 id=\"v8.0.1\">8.0.1</h2>\n<small>August 21st, 2018</small>\n<ul>\n 	<li>Fixes a bug where a file was being referenced by an incorrect name, resulting in it never being loaded properly.</li>\n</ul>\n<h2 id=\"v8.0\">8.0</h2>\n<small>August 14th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 8.0</li>\n</ul>\n<h2 id=\"v7.9.1\">7.9.1</h2>\n<small>August 7th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.9.1</li>\n</ul>\n<h2 id=\"v7.9\">7.9</h2>\n<small>July 24th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.9</li>\n</ul>\n<h2 id=\"v7.8\">7.8</h2>\n<small>July 10th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.8</li>\n</ul>\n<h2 id=\"v7.7\">7.7</h2>\n<small>June 26th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.7</li>\n</ul>\n<h2 id=\"v7.6\">7.6</h2>\n<small>Junge 5th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.6</li>\n</ul>\n<h2 id=\"v7.5\">7.5</h2>\n<small>May 15th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.5</li>\n</ul>\n<h2 id=\"v7.4\">7.4</h2>\n<small>May 3rd, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.4</li>\n</ul>\n<h2 id=\"v7.3\">7.3</h2>\n<small>April 17th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.3</li>\n</ul>\n<h2 id=\"v7.2\">7.2</h2>\n<small>April 3rd, 2018</small>\n<ul>\n 	<li>Security hardening.</li>\n 	<li>Compatibility with Yoast SEO 7.2</li>\n</ul>\n<h2 id=\"v7.1\">7.1</h2>\n<small>March 20th, 2018</small>\n<ul>\n 	<li>Adds messages to all soft-deprecated methods, actions, hooks or filters. Added deprecation messages to four functions that didn\'t have a message yet.</li>\n 	<li>Compatibility with Yoast SEO 7.1</li>\n</ul>\n<h2 id=\"v7.0\">7.0</h2>\n<small>March 6th, 2018</small>\n\nCopy:\n<ul>\n 	<li>Changes activation warning to no longer suggest that activation failed, but rather that features won\'t be properly available as long as Yoast SEO is not active.</li>\n</ul>\nOther:\n<ul>\n 	<li>Requires Yoast SEO 7.0 or higher to be installed.</li>\n 	<li>Removes support for the <a href=\"http://vzaar.com/\">Vzaar video platform</a>.</li>\n 	<li>Removes support for videos added through the following plugins and themes which are no longer available, no longer (actively) maintained or have been deprecated by the plugin author:\n<ul>\n 	<li><a href=\"https://wordpress.org/plugins/embedplus-for-wordpress/\">Advanced YouTube Embed Plugin by Embed Plus</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/iframe-embed-for-youtube/\">IFrame Embed for YouTube</a></li>\n 	<li><a href=\"http://instabuilder.com/v2.0/launch/\">Instabuilder</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/kiss-youtube/\">KISS Youtube plugin</a></li>\n 	<li>PluginBuddy VidEmbed</li>\n 	<li><a href=\"https://wordpress.org/plugins/simple-video-embedder/\">Simple Video Embedder</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/sublimevideo-official/\">Sublime Video</a></li>\n 	<li><a href=\"http://www.wplocker.com/plugins/codecanyon/656-codecanyon-titan-lightbox-for-wordpress.html\">Titan Lightbox</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/videojs-html5-video-player-for-wordpress/\">VideoJS - HTML5 Video Player for WordPress</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/video/\">VideoPress</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/vipers-video-quicktags/\">Viper Video Quicktags</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/vippy/\">Vippy</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/vzaar-media-management/\">Vzaar Media Management</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/vzaar-official-plugin/\">Vzaar Official Media Manager</a></li>\n 	<li>Weaver theme</li>\n 	<li><a href=\"https://wordpress.org/plugins/wordpress-video-plugin/\">WordPress Video Plugin</a></li>\n 	<li>WP OS FLV</li>\n 	<li><a href=\"https://wordpress.org/plugins/wp-youtube-player/\">WP YouTube Player</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/youtube-insert-me/\">YouTube Insert Me</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/youtube-shortcode/\">YouTube Shortcode</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/youtube-white-label-shortcode/\">YouTube White Label Shortcode</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/youtube-with-style/\">YouTube with Style</a></li>\n 	<li><a href=\"https://wordpress.org/plugins/youtuber/\">YouTuber</a></li>\n 	<li>Premise</li>\n 	<li><a href=\"https://wordpress.org/plugins/automatic-youtube-video-posts/\">WordPress Automatic Youtube Video Post</a></li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v6.3\">6.3</h2>\n<small>February 13th, 2018</small>\n<ul>\n 	<li>Load the XSL stylesheet from a static file when home and site URL are the same.</li>\n 	<li>Compatibility with Yoast SEO 6.3</li>\n</ul>\n<h2 id=\"v6.2\">6.2</h2>\n<small>January 23rd, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 6.2</li>\n</ul>\n<h2 id=\"v6.1\">6.1</h2>\n<small>January 9th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 6.1</li>\n</ul>\n<h2 id=\"v6.0\">6.0</h2>\n<small>December 20th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 6.0</li>\n</ul>\n<h2 id=\"v5.9\">5.9</h2>\n<small>December 5th, 2017</small>\nChanges:\n<ul>\n 	<li>Removes deactivation of this plugin when Yoast SEO Premium is inactive.</li>\n 	<li>Compatibility with Yoast SEO 5.9</li>\n</ul>\n<h2 id=\"v5.8\">5.8</h2>\n<small>November 15th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.8</li>\n</ul>\n<h2 id=\"v5.7\">5.7</h2>\n<small>October 24th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.7.</li>\n</ul>\n<h2 id=\"v5.6\">5.6</h2>\n<small>October 10th, 2017</small>\n<ul>Changes:\n 	<li style=\"list-style-type: none\">\n<ul>\n 	<li>Changes the capability on which the submenu is registered to <code>wpseo_manage_options</code></li>\n 	<li>Changes the way the submenu is registered to use the <code>wpseo_submenu_pages</code> filter</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixes a bug where the license check endpoint was using an incorrect URL</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.5\">5.5</h2>\n<small>September 26th, 2017</small>\n<ul>\n 	<li>Updated the internationalization module to version 3.0.</li>\n 	<li>Compatibility with Yoast SEO 5.5.</li>\n</ul>\n<h2 id=\"v5.4\">5.4</h2>\n<small>September 6th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.4.</li>\n</ul>\n<h2 id=\"v5.3\">5.3</h2>\n<small>August 22nd, 2017</small>\n<ul>\n 	<li>Fixes a call to a deprecated method when generating the video sitemap.</li>\n 	<li>Removed <code>wp_installing</code> polyfill.</li>\n</ul>\n<h2 id=\"v5.2\">5.2</h2>\n<small>August 8th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.2.</li>\n</ul>\n<h2 id=\"v5.1\">5.1</h2>\n<small>July 25th, 2017</small>\n<ul>\n 	<li>Fixes a bug where the <code>isFamilyFriendly</code> meta property is not set properly.</li>\n</ul>\n<h2 id=\"v5.0\">5.0</h2>\n<small>July 6th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.0.</li>\n</ul>\n<h2 id=\"v4.9\">4.9</h2>\n<small>June 7th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.9.</li>\n</ul>\n<h2 id=\"v4.8\">4.8</h2>\n<small>May 23rd, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.8.</li>\n</ul>\n<h2 id=\"v4.7\">4.7</h2>\n<small>May 2nd, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.7.</li>\n</ul>\n<h2 id=\"v4.6\">4.6</h2>\n<small>April 11th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.6.</li>\n</ul>\n<h2 id=\"v4.5\">4.5</h2>\n<small>March 21st, 2017</small>\n<ul>\n 	<li>Only invalidate sitemaps on configured post types.</li>\n 	<li>Fixes a bug where there was a fatal error thrown when the plugin was active without Yoast SEO or Yoast SEO Premium.</li>\n</ul>\n<h2 id=\"v4.4\">4.4</h2>\n<small>February 28th, 2017</small>\n<ul>\n 	<li>Adds a minimum and maximum value to the video rating field.</li>\n 	<li>Adds the <code>og:video:secure_url</code> meta tag.</li>\n</ul>\n<h2>4.3</h2>\n<small>February 14th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.3.</li>\n</ul>\n<h2 id=\"v4.2.1\">4.2.1</h2>\n<small>February 3rd, 2017</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes \"Fatal error: Class \'yoast_i18n\' not found\".</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.2\">4.2</h2>\n<small>January 31st, 2017</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes translator comments that were missing or didn\'t follow the guidelines.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.1\">4.1</h2>\n<small>January 17th, 2017</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes link to google article about video sitemaps.</li>\n 	<li>Fixes a bug where the video-seo menu would overwrite the go premium menu item.</li>\n 	<li>Fixes: If a post uses a custom title/description template with variables, the variables were not being replaced correctly for the Video sitemap.</li>\n 	<li>Minor spelling &amp; grammar fixes.</li>\n 	<li>If a video was previously detected, but the post type has since been excluded from VideoSEO, the video opengraph and schema tags would still be added to the front-end page. This has been fixed now.</li>\n 	<li>Fix case-sensitivity issues with video object meta tags.</li>\n 	<li>Minor XHTML syntax fix.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Improves styling for notices.</li>\n 	<li>Minor improvements for compatibility with Yoast SEO.</li>\n 	<li>Minor UI improvements for buttons and translations.</li>\n 	<li>Add the video:duration tag to video page headers.</li>\n 	<li>Clarify what effect the option to allow videos to be embedded by other sites has.</li>\n 	<li>Clarify the description of the \"Family Friendly\" option used in the metabox.</li>\n 	<li>Improve support for the Yandex search engine by adding some Yandex specific tags. This can be turned off using the new wpseo<em>video</em>yandex_support filter (return false to turn it off).</li>\n 	<li>Allow for adding additional schema meta tags - such as transcript to a video object using the new wpseo<em>video</em>object<em>meta</em>content filter.</li>\n 	<li>Clarify the description for the family friendly checkbox.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.0\">4.0</h2>\n<small>December 13th, 2016</small>\n<ul>\n 	<li>Fixes the YouTube video player URL to always use a protocol. This solves issues where the Google invalidates the sitemap and where Facebook does not recognize the player. (needs force re-index for existing posts)</li>\n</ul>\n<h2 id=\"v3.9\">3.9</h2>\n<small>November 29th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Added support for the additional Wistia video urls and embed codes. If you use the Wistia video service, re-indexing your videos is highly recommended.</li>\n 	<li>Added fallback for the detail retrieval of private Vimeo videos. This will allow these to be recognized. (needs force re-index for existing posts).</li>\n 	<li>Added recognition of //player.vimeo.com/... type URLs. (needs force re-index for existing posts).</li>\n 	<li>Change the \'og:type\' meta value to the more accurate \'video.other\'.</li>\n 	<li>Change the \'og:video:type\' meta value HTML5 which is now more accurate than Flash in most cases.</li>\n 	<li>Minor improvements in behaviour when installed on WP multi-site.</li>\n</ul>\n</li>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed the YouTube video player URL. This should solve black screens and/or \"Unable to resolve DNS\" errors when embedding videos on Facebook and other sites. (needs force re-index for existing posts)</li>\n 	<li>Updated the Vimeo video player URL to the new HTML5 player format (with Flash fallback). This should solve black screens and/or \"Unable to resolve DNS\" errors when embedding these videos on Facebook and other sites. (needs force re-index for existing posts).</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.8\">3.8</h2>\n<small>November 8th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>The wpseo_sitemaps_base_url filter will now be respected by the VideoSEO plugin.</li>\n 	<li>Makes the oEmbed recognition compatible with the upcoming WP 4.7.</li>\n</ul>\n</li>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a fatal error when adding a YouTube video.</li>\n 	<li>Fixes a bug where adding a video in a custom post type would show an undefined index.</li>\n 	<li>Fixes support for Advanced Responsive Video Embedder plugin.</li>\n 	<li>Fixes a bug where the sitemap had the wrong style when a custom post type \'video\' exists.</li>\n 	<li>Makes sure that the video sitemap will be available as soon as this plugin is activated and unavailable after deactivation.</li>\n 	<li>Fixes \"Disable video for this post\" per-post setting not being respected for the og: meta tags which led to Facebook still displaying the video even if the video for the post was disabled.</li>\n 	<li>If an invalid date is encountered for the publication date of a video post, the publication date will be re-evaluated.</li>\n 	<li>If a video post title or content/excerpt is - or has been - updated, this will now be reflected in the sitemap and the video meta data. (needs force re-index for existing posts)</li>\n 	<li>If a video post SEO title or SEO description is - or has been - added/adjusted, this will now be reflected in the sitemap. (needs force re-index for existing posts)</li>\n 	<li>If a SEO description template had been set for the post type which includes the video, this will now be respected. (needs force re-index for existing posts)</li>\n 	<li>If a video post was first saved as draft and only published later, the publication date would be stuck on the draft date in the sitemap, this has been fixed. (needs force re-index for existing posts)</li>\n 	<li>The \"Force re-index\" functionality was broken with the implementation of the progress bar. This has now been fixed. Checking the \"Force re-index\" checkbox will now work again as expected, including the regeneration of thumbnails.</li>\n 	<li>The \"Re-index\" functionality did not properly respect the post types to be indexed for the Video sitemap as set on the VideoSEO settings page, which unintentionally led to fewer items being re-indexed than they should. This has now been fixed.</li>\n 	<li>The re-index functionality has been made more efficient and should now - for the same number of posts - be faster.</li>\n 	<li>The sitemap cache was not automatically cleared after a re-index. This has now been fixed.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.7\">3.7</h2>\n<small>October 11th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Added iframe-based support for uStudio videos.</li>\n 	<li>Added missing index.php files.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.6\">3.6</h2>\n<small>September 27th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li><a href=\"https://github.com/Yoast/wpseo-news/pull/238\">General accessibility improvements</a></li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.5\">3.5</h2>\n<small>September 7th, 2016 </small>\n<ul>\n 	<li>Changes\n<ul>\n 	<li>Adds support for Featured Video Plugin, props <a href=\"https://github.com/ahoereth\">ahoereth</a></li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.4\">3.4</h2>\n<small>July 19th, 2016</small>\n<ul>\n 	<li>Changes\n<ul>\n 	<li>Updated translations.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.3\">3.3</h2>\n<small>June 14th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Adds the Yoast i18n module to the Yoast SEO Video settings page, which informs users the plugin isn\'t available in their language and what they can do about it.</li>\n 	<li>Bugfixes</li>\n 	<li>Fixes a bug where the support beacon for Yoast SEO Video was added to all Yoast SEO settings pages.</li>\n 	<li>Fixes a bug where updates were not working reliably when multiple paid Yoast plugins were active.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.2\">3.2</h2>\n<small>April 20th, 2016</small>\n<ul>\n 	<li>Fixes a bug where the video sitemap cache wasn\'t cleared on activation.</li>\n 	<li>Fixes a bug where video specific checks that were added to the content analysis would no longer work in combination with Yoast SEO 3.2 and higher.</li>\n 	<li>Fixes a bug where clicking the \'Update now\' button on the plugin page didn\'t update correctly.</li>\n</ul>\n<h2 id=\"v3.1\">3.1</h2>\n<small>March 1st, 2015</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a JS error on the post edit page causing the content analysis to break in combination with Yoast SEO versions higher than 3.0.7.</li>\n 	<li>Fixes a bug where our license manager could sometimes not reach our licensing system due to problems with ssl.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Makes sure users don\'t have to reactivate their license after updating or disabling/enabling the plugin.</li>\n 	<li>Adds a support beacon on the Video SEO settings page enabling users to ask for support from the WordPress backend.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.0\">3.0</h2>\n<small>November 18th, 2015</small>\n<ul>\n 	<li>Synchronized plugin version with all other Yoast SEO plugins for WordPress.</li>\n</ul>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a fatal error that could occur while reïndexing the video sitemap.</li>\n 	<li>Fixes the video metabox that was broken in combination with Yoast SEO 3.0.</li>\n 	<li>Fixes deprecation warnings for filters that have been removed in Yoast SEO 3.0.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Makes sure video specific content analysis checks work well with the Real Time content analysis tool in Yoast SEO 3.0.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.0.4\">2.0.4</h2>\n<small>June 23rd, 2015</small>\n<ul>\n 	<li>Bug fixes\n<ul>\n 	<li>Fixes a bug where https YouTube URLs weren\'t recognized.</li>\n 	<li>Fixes a bug where the sitemap cache wouldn\'t be cleared when saving options.</li>\n 	<li>Changed to the YouTube v3 API, making the YouTube integration work again.</li>\n 	<li>Fixes a bug where the scrollbar wouldn\'t get the right color.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.0.3\">2.0.3</h2>\n<small>March 25th, 2015</small>\n<ul>\n 	<li>Bug fixes\n<ul>\n 	<li>Fixes a bug where the video sitemap could contain wrongly formatted date times.</li>\n 	<li>Fixes an undefined index notice for the $post global that was fired when creating a new product in WooCommerce.</li>\n 	<li>Fixes a bug where title variables weren\'t parsed well in the Video Sitemap.</li>\n 	<li>Fixes a bug where the video thumbnails were saved without an extension.</li>\n</ul>\n</li>\n 	<li>Enhancement\n<ul>\n 	<li>Added 5 new languages: en_GB, es_MX, fr_FR, nl_NL and tr_TR.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.0.2\">2.0.2</h2>\n<small>Dec 17th, 2014</small>\n<ul>\n 	<li>Bug fixes:\n<ul>\n 	<li>Fix for notice on the snippet preview</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Showing progress bar on re-indexing the video sitemap</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.0.1\">2.0.1</h2>\n<small>Nov 11th, 2014</small>\n<ul>\n 	<li>Bug fixes:\n<ul>\n 	<li>Fixed: Vixxy shortcode/url combi not recognized</li>\n 	<li>Fixed: Missing stylesheet error</li>\n 	<li>Fixed: Limiting issue on sitemap</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added translations for Persian and Brazilian Portuguese</li>\n 	<li>Removed translations for French, Dutch and Swedish. If you would like to help translate these languages, please sign up at translate.yoast.com!</li>\n 	<li>Improved translations for Danish, German, Hungarian and Italian</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.0\">2.0</h2>\n<small>Oct 7th, 2014</small>\n<ul>\n 	<li>Bug fixes:\n<ul>\n 	<li>Fixed: shortcode list would often not be reset properly.</li>\n 	<li>Fixed: escaped shortcodes would still be searched for video.</li>\n 	<li>Fixed: no name shortcode attributes wouldn\'t always be recognized.</li>\n 	<li>Fixed: Flickr video detail retrieval was failing, SSL now required.</li>\n 	<li>Fixed: Compatibility issue between support for the <a href=\"http://wordpress.org/extend/plugins/jw-player-plugin-for-wordpress/\">JW Player</a> plugin and fitvids.js.</li>\n 	<li>Fixed: only the first shortcode found would be checked to see if it was a video shortcode, then it would fall back to other methods, now all shortcodes are checked until a video shortcode is found. If none is found, it will still fall back to other methods of finding video.</li>\n 	<li>Fixed: small regression where wordpress.tv video details would not always be retrieved.</li>\n 	<li>Fixed: <code>[videopress]</code> shortcode - while supported by plugins - was still not recognized.</li>\n 	<li>Fixed: regression where numeric video ids would sometimes prevent video detail retrieval.</li>\n 	<li>Fixed: most of vidyard detail retrieval failed.</li>\n 	<li>Fixed: bug where content of the last recognized meta field would overrule earlier found information.</li>\n 	<li>Fixed: bug where a meta field containing a mixture of html/text and a url at the end could be accepted as content_loc.</li>\n 	<li>Fixed: the VideoSEO plugin would auto-de-activate on an upgrade of WPSEO. This should no longer happen.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added support for recognizing video attachments without additional plugins.</li>\n 	<li>Added support for recognizing <code>.ogv</code> files as video files.</li>\n 	<li>Added support for custom Wistia domains.</li>\n 	<li>A lot more video URLs will be recognized as such.</li>\n 	<li>Better support for protocol-less urls all round.</li>\n 	<li>Add Video SEO menu item to the admin bar</li>\n 	<li>WP 4.0 removes oembed support for Viddler videos as <a href=\"https://gigaom.com/2014/02/07/viddler-gets-ready-to-delete-personal-videos/\">Viddler no longer supports free personal accounts</a>. For those users who still use Viddler, Video SEO will continue to support both the OEmbedding as well as - of course - the SEO aspect.</li>\n</ul>\n</li>\n 	<li>Supported Services:\n<ul>\n 	<li>Added support for 23Video videos (retrieval of video details).</li>\n 	<li>Added support for Archive.org videos (retrieval of video details).</li>\n 	<li>Added support for CollegeHumor.com videos (retrieval of video details).</li>\n 	<li>Added support for Funnyordie.com videos (retrieval of video details - unfortunately this does not (yet) work for short urls).</li>\n 	<li>Added support for Hulu.com videos (retrieval of video details).</li>\n 	<li>Added support for Revision3 videos (retrieval of video details).</li>\n 	<li>Added support for TED videos (retrieval of video details).</li>\n 	<li>Added support for VideoJug videos (retrieval of video details).</li>\n 	<li>Added support for Snotr videos via Embedly (limited video details).</li>\n 	<li>Added support for Spike.com/IFilm videos via Embedly (retrieval of video details).</li>\n 	<li>Added support for Vine videos via Embedly (retrieval of video details).</li>\n 	<li>If no video detail retrieval is available, Embedly will be used to try and retrieve details anyway.</li>\n 	<li>Much improved support for uploaded/locally hosted videos (retrieval of video details).</li>\n 	<li>Improved support for YouTube (country) sub-domains and alternative protocols (httpvhd, httpvhp, youtube::). Removed support for audio-only embeds as, well, audio is not video.</li>\n 	<li>Improved support for Animoto videos (recognition of urls).</li>\n 	<li>Improved support for Blip.tv videos (improved recognition leading to better retrieval of video details).</li>\n 	<li>Improved support for Dailymotion.com videos (recognition of short urls).</li>\n 	<li>Improved support for Flickr videos (recognition of short urls and better retrieval of video details).</li>\n 	<li>Improved support for Viddler videos (retrieval of video details).</li>\n 	<li>Improved support for VideoPress and WordPress.tv (retrieval of video details).</li>\n 	<li>Improved support for Vimeo videos (url recognition and retrieval of video details).</li>\n 	<li>Improved support for Vzaar videos (url recognition and retrieval of video details).</li>\n 	<li>Improved support for Wistia videos (recognition of urls and retrieval of video details).</li>\n 	<li>Slightly improved support for YouTube videos (retrieval of video details).</li>\n</ul>\n</li>\n 	<li>Supported Plugins:\n<ul>\n 	<li>Added support for the <a href=\"http://wordpress.org/plugins/flowplayer5/\">Flowplayer HTML5</a> plugin.</li>\n 	<li>Added support for the <a href=\"http://wordpress.org/plugins/jetpack/\">JetPack</a> plugin shortcodes module.</li>\n 	<li>Added support for the <a href=\"http://wordpress.org/plugins/video/\">VideoPress</a> plugin.</li>\n 	<li>Added support for the <a href=\"http://wordpress.org/plugins/youtube-embed-plus/\">YouTube Embed Plus</a> plugin.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/plugins/advanced-responsive-video-embedder/\">Advanced Responsive Video Embedder</a> plugin - a large number of shortcodes were not recognized.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/extend/plugins/iframe-embed-for-youtube/\">IFrame Embed for YouTube</a> plugin - shortcode was not recognized.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/plugins/simple-video-embedder/\">Simple Video Embedder</a> plugin - shortcode was recognized, better handling of custom fields.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/extend/plugins/sublimevideo-official/\">Sublime Video</a> plugin - not all possible video sources were recognized.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/extend/plugins/tubepress/\">TubePress</a> plugin - added Vimeo support.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/extend/plugins/vipers-video-quicktags/\">Viper Video Quicktags</a> plugin - a large number of shortcodes were not recognized.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/extend/plugins/wp-video-lightbox/\">WP Video Lightbox</a> plugin - thumbnail image was not supported.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/extend/plugins/wp-youtube-player/\">WP YouTube Player</a> plugin - added support for id instead of url and for width, height attributes.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/extend/plugins/youtuber/\">YouTuber</a> plugin - shortcode was not supported.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/extend/plugins/youtube-embed/\">YouTube Embed</a> plugin - alternative protocols recognition.</li>\n 	<li>Improved support for the <a href=\"http://wordpress.org/extend/plugins/youtube-with-style/\">YouTube with Style</a> plugin - playlist syntax would break support.</li>\n 	<li>Removed support for the <a href=\"http://wordpress.org/extend/plugins/dirtysuds-embed-youtube-iframe/\">Better Youtube Embeds</a> plugin as the plugin functionality is now included in WP core and the plugin is no longer active.</li>\n 	<li>Removed support for the <a href=\"http://instabuilder.com/\">Instabuilder</a> plugin.</li>\n 	<li>Removed explicit support for the <a href=\"http://getpremise.com/\">Premise</a> plugin.</li>\n 	<li>Removed explicit support for the <a href=\"http://wordpress.org/extend/plugins/youtube-brackets/\">Youtube Brackets</a> plugin as the plugin hasn\'t been updated in eight years.</li>\n</ul>\n</li>\n 	<li>Other:\n<ul>\n 	<li>Minimum requirement for WP now 3.6.</li>\n 	<li>Added license information</li>\n 	<li>Applied some best practices</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.7.2\">1.7.2</h2>\n<small>July 17th, 2014</small>\n<ul>\n 	<li>Fix added whitespace after content cause in 1.7 update.</li>\n</ul>\n<h2 id=\"v1.7.1\">1.7.1</h2>\n<small>July 15th, 2014</small>\n<ul>\n 	<li>Fix error in update caused by missing the version number update in 1.7.</li>\n</ul>\n<h2 id=\"v1.7\">1.7</h2>\n<small>July 14th, 2014</small>\n<ul>\n 	<li>Bug fixes:\n<ul>\n 	<li>Fixed: bug where <code>$content</code> would be empty for an <code>mrss_item</code>.</li>\n 	<li>Fixed: minor bug in upgrade routine.</li>\n 	<li>Fixed: bugs in Animoto and Screenr oembed provider addition.</li>\n 	<li>Fixed: issue with sitemap errors when conflicting http protocols were given.</li>\n 	<li>Fixed: video sitemap could show in sitemap index even when no posts with videos were found.</li>\n 	<li>Fixed: video description generated from content could break off in the middle of a word or html entity.</li>\n 	<li>Fixed: error on plugin activation.</li>\n 	<li>Fixed: sitemap conflict when a custom post type named \'video\' would exist.</li>\n 	<li>Fixed: issue where durations would not be shown correctly in the metabox/</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Add oembed support for wistia.net domain and wistia protocol-relative urls.</li>\n 	<li>Moved language file loading to the init hook to allow for translation overloading.</li>\n 	<li>Improved clean-up of uploaded files.</li>\n 	<li>Update snippet preview to use latest Google design changes in line with the earlier update to WP SEO. This fixes the javascript error some people were experiencing.</li>\n 	<li>Auto-deactivate plugin in circumstances that it can\'t work.</li>\n 	<li>Increased size of YouTube thumbnail image being retrieved.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"162\">1.6.3</h2>\n<small>March 31th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a warning for a missing variable in sanitize_rating.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"162\">1.6.2</h2>\n<small>March 17th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a warning for a missing variable.</li>\n 	<li>Updated Fitvids.js to fix some issues with it.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Fitvids will now be included unminified when&nbsp;<code>SCRIPT_DEBUG</code>&nbsp;is on.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"161\">1.6.1</h2>\n<small>March 11th, 2014</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fix wrong boolean check.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"16\">1.6</h2>\n<small>March 11th, 2014</small>\n\nCompatibility with WPSEO 1.5 and implementation of the same options &amp; meta philosophy\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed: Non-static methods should not be called statically</li>\n 	<li>Fixed: noindex setting wasn\'t being respected properly</li>\n 	<li>Fixed: some inconsistent admin form texts</li>\n 	<li>Fixed: Warning when loading new post.</li>\n 	<li>Fixed: Always re-validate license key on change.</li>\n</ul>\n</li>\n 	<li>i18n\n<ul>\n 	<li>Updated .pot file</li>\n 	<li>Updated it_IT</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"1551\">1.5.5.1</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Make sure thumbnail image is available.</li>\n 	<li>Move initialisation of plugin to earlier hook to make sure it\'s there when XML sitemap is generated.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"155\">1.5.5</h2>\n<small>Nov 22nd, 2013</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Remove dependency on&nbsp;<code>WPSEO_URL</code>&nbsp;constant.</li>\n 	<li>Fix use of wrong image in OpenGraph and Schema.org output when a thumbnail is manually selected.</li>\n 	<li>Restore <code>$shortcode_tags</code> to original after&nbsp;<code>index_content()</code>.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Use media uploader to change video thumbnail.</li>\n 	<li>Add setting to allow video playback directly on Facebook (defaults to on).</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"1546\">1.5.4.6</h2>\n<small>Sep 20th, 2013</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Prevent warning on line 4169, for unset video taxonomies.</li>\n 	<li>Prevent issues with custom fields that have spaces in their keys.</li>\n 	<li>Added support for more Dailymotion URLs.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Remove CDATA in favor of proper encoding of entities.</li>\n 	<li>Force 200 status codes and proper caching on both video sitemap XML and XSL.</li>\n 	<li>Add support for WP YouTube Lyte shortcode.</li>\n</ul>\n</li>\n 	<li>i18n\n<ul>\n 	<li>Renamed wpseo-video.pot to yoast-video-seo.pot</li>\n 	<li>Updated fr_FR</li>\n 	<li>Added hu_HU</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"1545\">1.5.4.5</h2>\n<ul>\n 	<li>To make best use of the new features in this update, please reindex your videos.</li>\n 	<li>Bugfixes\n<ul>\n 	<li>Several i18n namespace fixes.</li>\n 	<li>Make video\'s in taxonomy descriptions pick up properly again.</li>\n 	<li>Fix for Wistia popover embeds and Wistia https URLs.</li>\n 	<li>Prevent output of hd attribute for video\'s in XML Video sitemap.</li>\n 	<li>Make sure opengraph image is always set to \"full\" size.</li>\n 	<li>Add width and height for Youtube vids.</li>\n 	<li>Prevent notice in sitemap when video from taxonomy term is displayed.</li>\n 	<li>Prevent wrong or empty dates in XML video sitemap.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Add option to manually add tags per video.</li>\n 	<li>Add option to override video category (normally defaults to first post category).</li>\n 	<li>Order videos in XML video sitemap by date modified, ascending.</li>\n 	<li>Add \"proper\" Facebook video integration.</li>\n 	<li>Added support for&nbsp;<a href=\"http://wordpress.org/plugins/advanced-responsive-video-embedder/\">Advanced Responsive Video Embedder</a>.</li>\n 	<li>Added support for muzu.tv.</li>\n 	<li>Allow for custom fields that hold arrays to be detected too.</li>\n 	<li>Add support for custom Vimeo URLs. (eg&nbsp;<a href=\"http://vimeo.com/yoast/video-seo\">http://vimeo.com/yoast/video-seo</a>)</li>\n 	<li>Make sure the video thumbnail is always put out as an og:image too.</li>\n 	<li>Added support for Instabuilder video shortcodes</li>\n 	<li>Added support for Vidyard</li>\n 	<li>Set license key with a constant</li>\n 	<li>Added support for Cincopa</li>\n 	<li>Added support for Brightcove</li>\n 	<li>Added support for videos in the \'Archive Intro Text\' (Genesis) in the video sitemap</li>\n 	<li>Added support for WP OS FLV plugin</li>\n 	<li>Added support for&nbsp;<a href=\"http://wordpress.org/plugins/automatic-youtube-video-posts/\">Wordpress Automatic Youtube Video Post</a></li>\n</ul>\n</li>\n</ul>\n<h2><a href=\"https://github.com/Yoast/wpseo-video/blob/master/readme.md#1544\" name=\"1544\"></a></h2>\n<h2 id=\"1544\">1.5.4.4</h2>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Spaces in custom fields settings are now properly trimmed.</li>\n 	<li>Fix for Vzaar URLs.</li>\n 	<li>Wistia embed with extra classes now properly detected.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Video sitemap now adheres to same pagination as post sitemap.</li>\n 	<li>Add initial Screenr support.</li>\n 	<li>Video XML Sitemap date now properly retrieved from last modified post with movie.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"1543\">1.5.4.3</h2>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Add support for&nbsp;<code>fvplayer</code>&nbsp;shortcode.</li>\n 	<li>Add option to manually change or enter duration.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"1542\">1.5.4.2</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Properly allow normale meta description length when video has been disabled for post.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added option to disable RSS enhancements, to prevent clashes with podcasting plugins.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"1541\">1.5.4.1</h2>\n<ul>\n 	<li>Move loading of the plugin to prio 20, in line with upgrades of the core WordPress SEO plugin.</li>\n</ul>\n<h2 id=\"154\">1.5.4</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Added support for&nbsp;<a href=\"http://fitvidsjs.com/\">fitvids.js</a>, enable it in the Video SEO settings to make your Youtube / Vimeo / Blip.tv / Viddler / Wistia videos responsive, meaning they\'ll become fluid. This might not work with all embed codes, let us know when it doesn\'t work for a particular one.</li>\n 	<li>Removed the ping functionality as that\'s fixed within the core plugin.</li>\n 	<li>Added code that forces you to update WordPress to 3.4 or higher and the WordPress SEO plugin to 1.4 or higher to use the plugin.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug that would prevent the time last modified of the video sitemap to update.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"153\">1.5.3</h2>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Improved defaults: now enables all public post-types by default on install.</li>\n 	<li>Option to change the basename of the video sitemap, from video-sitemap.xml to whatever-sitemap.xml by setting the<code>YOAST_VIDEO_SITEMAP_BASENAME</code>&nbsp;constant.</li>\n 	<li>If post meta values are encoded, the plugin now decodes them.</li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>No longer override opengraph image when one has already been set.</li>\n 	<li>Add extra newlines before video schema to allow oEmbed to work.</li>\n 	<li>No longer depends on response from Vzaar servers to create sitemap, properly uses the referer to authenticate requests and adds option in settings to add your Vzaar CNAME.</li>\n 	<li>When there\'s a post-type with the slug&nbsp;<code>video</code>, the plugin now automatically changes the basename to&nbsp;<code>yoast-video</code>.</li>\n 	<li>No longer print empty&nbsp;<code>&lt;p&gt;</code>&nbsp;for empty description in meta box.</li>\n 	<li>Improve logic whereby \"this image\" link is shown correctly and only when the video thumb is not overridden.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#152\" name=\"152\"></a>1.5.2</h2>\n<ul>\n 	<li>Enhacements:\n<ul>\n 	<li>Added support for Vzaar video\'s, embedded with either iframe, object embed or shortcode through 1 of 2 plugins.</li>\n 	<li>Added TubePress support.</li>\n</ul>\n</li>\n 	<li>Bugfixes\n<ul>\n 	<li>Wistia.net support added (not just .com).</li>\n 	<li>Fixed bug in parsing youtube_sc shortcodes.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#151\" name=\"151\"></a>1.5.1</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Improved activation.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Add support for titan lightbox.</li>\n 	<li>Prevented some notices.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#15\" name=\"15\"></a>1.5</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Make&nbsp;<code>mrss_gallery_lookup</code>&nbsp;public to prevent notices.</li>\n 	<li>Fix some forms of object detection for youtube and others.</li>\n 	<li>Fix detection of[video]shortcodes.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Allow deactivation of license key so it can be used on another domain.</li>\n 	<li>Add link to detected thumbnail on video tab.</li>\n 	<li>Changed text-domain from&nbsp;<code>wordpress-seo</code>&nbsp;to&nbsp;<code>yoast-video-seo</code>.</li>\n 	<li>Made sure all the strings are translateable.</li>\n 	<li>Touch up admin sections styling.</li>\n</ul>\n</li>\n 	<li>i18n:\n<ul>\n 	<li>You can now translate the plugin to your native language should you need a translation, check&nbsp;<a href=\"http://translate.yoast.com/projects/yoast-video-seo\">translate.yoast.com</a>&nbsp;for details.</li>\n 	<li>Changed text-domain from&nbsp;<code>wordpress-seo</code>&nbsp;to&nbsp;<code>yoast-video-seo</code>.</li>\n 	<li>Added .pot file to repository.</li>\n 	<li>Added Dutch translation.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#144\" name=\"144\"></a>1.4.4</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Prevent issues with content_width global.</li>\n 	<li>Prevent trying to activate an already activated license.</li>\n 	<li>Prevent a notice for custom fields.</li>\n 	<li>A fix for wistia popover embeds.</li>\n</ul>\n</li>\n 	<li>New features:\n<ul>\n 	<li>Add PluginBuddy VidEmbed support.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#143\" name=\"143\"></a>1.4.3</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Now matches multiple iframes / objects on a page.</li>\n 	<li>Fix several bugs where embeds without quotes around the URL wouldn\'t be recognized.</li>\n</ul>\n</li>\n 	<li>New features:\n<ul>\n 	<li>Added an option to set the content width for your theme if your theme doesn\'t set it.</li>\n 	<li>Added support for Sublime video and its official WordPress plugin.</li>\n 	<li>Added SEO &amp; oEmbed support for Animoto.</li>\n 	<li>Added ping for Bing with the video sitemap.</li>\n 	<li>Added a <em>bunch</em> of supported plugins &amp; shortcodes for YouTube embeds.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#142\" name=\"142\"></a>1.4.2</h2>\n<ul>\n 	<li>Bugfixes / Enhancements:\n<ul>\n 	<li>Try to prevent timeout on license validation.</li>\n 	<li>Clean up of a lot of regexes in the plugin.</li>\n 	<li>Prevent relative image URL paths and images set as just \'h\'.</li>\n 	<li>Prevent double output of posts.</li>\n 	<li>Fixed small bug that would prevent youtube URLs with the video ID in a weird place in the URL from working.</li>\n 	<li>Improve Wistia embed support.</li>\n 	<li>Lengthen timeout for video info requests.</li>\n</ul>\n</li>\n 	<li>New features:\n<ul>\n 	<li>Added support for html5 video elements (d\'0h!).</li>\n 	<li>Add support for [vimeo id= and [youtube id= embed codes</li>\n 	<li>Added support for self-hosted videos with just a file URL in custom field. In these cases the featured image is used as thumbnail.</li>\n 	<li>Added generic fallback to post thumbnail image if there is no video thumbnail.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#14\" name=\"14\"></a>1.4</h2>\n<ul>\n 	<li>Bugfixes / Enhancements:\n<ul>\n 	<li>Fix Vimeo embed detection.</li>\n 	<li>Switch Vimeo to oEmbed API.</li>\n 	<li>When available, use html5_file for jwplayer embeds.</li>\n</ul>\n</li>\n 	<li>New features:\n<ul>\n 	<li>Added video content optimization tips in the page analysis tab of WordPress SEO.</li>\n 	<li>Added support for WP Video Lightbox plugin.</li>\n 	<li>Added initial support for Flowplayer plugin.</li>\n 	<li>Added support for Wistia video hosting platform.</li>\n 	<li>Added support for Vippy video hosting platform (thanks to Ronald Huereca).</li>\n 	<li>Added support for shortcodes from Weaver theme.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#134\" name=\"134\"></a>1.3.4</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed Viddler check.</li>\n 	<li>Fix strip tags for videoObject output.</li>\n 	<li>Don\'t filter content when in a feed.</li>\n 	<li>Improve parsing of VideoPress embed ID\'s.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added support for checking custom fields for video\'s.</li>\n 	<li>Added support for Press75\'s Simple Video Embedder (and thus for all their themes).</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#133\" name=\"133\"></a>1.3.3</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Properly catch thumbnail images when the path is relative instead of absolute.</li>\n 	<li>Strip shortcodes for plugins that don\'t register them properly as well.</li>\n 	<li>Prevent empty titles.</li>\n 	<li>Wrap XML sitemap and MediaRSS textual content in CDATA tags, this solves about 900.000 issues with encoding.</li>\n 	<li>Fixed <a href=\"http://www.veoh.com/\">Veoh</a> support.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>When a post is in more than one category, the excess categories are now used as tags.</li>\n 	<li>Don\'t print sitemap lines for video\'s that have no thumbnail and either a content location or a player location.</li>\n 	<li>If the description and excerpt are empty, use the title for the description, as an empty description is invalid.</li>\n 	<li>Changed the name of the family friendly variable, so it can\'t go \"wrong\" with old data.</li>\n 	<li>Added support for the <code>video:uploader</code> tag. This automatically links to the post authors posts page.</li>\n 	<li>Make terms use their own name as category in XML sitemap.</li>\n 	<li>Added support for jwplayer shortcode embeds with file and image attributes instead of mediaid.</li>\n 	<li>Added support for the <a href=\"http://wordpress.org/extend/plugins/wordpress-video-plugin/\">WordPress Video Plugin</a>.</li>\n 	<li>Added support for the <a href=\"http://wordpress.org/extend/plugins/media-element-html5-video-and-audio-player/\">MediaElements.js</a> plugin.</li>\n 	<li>Added support for the <a href=\"http://wordpress.org/extend/plugins/wp-youtube-player/\">WP YouTube Player</a> plugin.</li>\n 	<li>Added support for the <a href=\"http://wordpress.org/extend/plugins/embedplus-for-wordpress/\">Advanced YouTube Embed Plugin by Embed Plus</a> plugin.</li>\n 	<li>Added support for the <a href=\"http://wordpress.org/extend/plugins/videojs-html5-video-player-for-wordpress/\">VideoJS - HTML5 Video Player for WordPress</a> plugin.</li>\n 	<li>Added support for the <a href=\"http://wordpress.org/extend/plugins/youtube-shortcode/\">YouTube Shortcode</a> plugin.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#132\" name=\"132\"></a>1.3.2</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fix XSLT URL issue, for real this time. Sometimes you have to ignore WordPress internals because they are just\nplain wrong. This is such a time. The path to the XSL file should now always be correct. Note the word \"should\"\nthough.</li>\n 	<li>Improve matching of Youtube ID\'s, apparently those can contain underscores too.</li>\n 	<li>Improve reindexation process by running through consecutive loops of 100 posts, to avoid memory issues.</li>\n 	<li>Fixed very annoying bug where video\'s would be mark as non-family-frienldy by default.</li>\n 	<li>Force view count to be an integer.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Switched around the logic for family friendliness. It now assumes all video\'s are family friendly by default and\nyou have to check the box to make it NON family friendly.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#131\" name=\"131\"></a>1.3.1</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Prevent relative paths to images</li>\n 	<li>Prevent post_id from showing up in XML Video Sitemap</li>\n 	<li>Fix wrong URL to XSLT</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added support for <a href=\"http://wordpress.org/extend/plugins/jw-player-plugin-for-wordpress/\">JW Player Plugin</a> embeds (only embeds with <code>mediaid=&lt;number&gt;</code> will work for now).</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#13\" name=\"13\"></a>1.3</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Even more YouTube embed fixes, also fixes empty Youtube ID issue.</li>\n 	<li>Properly grab thumbnail from YouTube instead of \"assuming\" a URL.</li>\n 	<li>Improve code that grabs duration from YouTube API.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Add support for searching through category / tag / term descriptions for video content.</li>\n 	<li>Get viewcount from YouTube API.</li>\n 	<li>Add option to hide sitemap from everyone except admins and Googlebot.</li>\n 	<li>Add option to disable the video integration on a single post and page by adding a checkbox on the Video tab.</li>\n 	<li>Changed the way reindex gets called, so the admin keeps working immediately after a reindex without a refresh.</li>\n 	<li>Added option to force reindexation of old posts that have already been indexed as having video (normally\nthey\'re just refreshed but no external calls are being done).</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#122\" name=\"122\"></a>1.2.2</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Properly work with [youtube]video-id[/youtube] type embed shortcodes.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Option to only show the XML video sitemap to admins and to googlebot, not to any other visitors. This prevents\nother visitors from downloading your video files.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#121\" name=\"121\"></a>1.2.1</h2>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Properly works with index.php URLs.</li>\n 	<li>Sends right URL for video sitemap on Google ping at all times.</li>\n 	<li>Correctly clean up video descriptions &amp; tags for display in the XML sitemap.</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added support for Smart Youtube Pro.</li>\n 	<li>Added support for Viddler iframe embeds.</li>\n 	<li>Added support for youtu.be oEmbeds.</li>\n 	<li>Preliminary Brightcove support.</li>\n</ul>\n</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#12\" name=\"12\"></a>1.2</h2>\n<ul>\n 	<li>The Video tab in the meta box now works, so you can change the preview image.</li>\n 	<li>The plugin now adds full support for the videoObject schema.</li>\n 	<li>Several fixes to video recognition, especially for youtube iframe embeds, be sure to click re-index on the Video SEO page if you have those.</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#11\" name=\"11\"></a>1.1</h2>\n<ul>\n 	<li>This version should work better on activation.</li>\n 	<li>The plugin settings are now moved into its own SEO -&gt; Video SEO admin page and out of the XML Sitemaps page.</li>\n 	<li>The plugin now recognizes youtube and vimeo embeds with an object tag or an iframe, to use this just click reindex video\'s.</li>\n 	<li>Improved the snippet preview date display.</li>\n 	<li>Fixed a few notices.</li>\n</ul>\n<h2><a class=\"anchor\" href=\"#10\" name=\"10\"></a>1.0</h2>\n<ul>\n 	<li>Initial version</li>\n</ul>\";}}i:3;O:8:\"stdClass\":3:{s:11:\"renewal_url\";s:0:\"\";s:11:\"expiry_date\";s:24:\"1970-01-01T05:00:00.000Z\";s:7:\"product\";O:8:\"stdClass\":7:{s:7:\"version\";s:4:\"11.1\";s:4:\"name\";s:28:\"Yoast WooCommerce SEO plugin\";s:4:\"slug\";s:21:\"yoast-seo-woocommerce\";s:12:\"last_updated\";s:24:\"2019-04-30T10:38:35.000Z\";s:9:\"store_url\";s:55:\"https://yoast.com/product/yoast-woocommerce-seo-plugin/\";s:8:\"download\";s:64:\"https://yoast.com/app/uploads/2019/04/wpseo-woocommerce-11.1.zip\";s:9:\"changelog\";s:16396:\"<h2 id=\"v11.1\">11.1</h2>\n<small>April 30th, 2019</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where a PHP warning would occur on a product page when a review is added.</li>\n 	<li>Fixes bug where a fatal crash would occur on the checkout page when WooCommerce is not active.</li>\n</ul>\nOther:\n<ul>\n 	<li>Disables plugin when WooCommerce is not active.</li>\n 	<li>Compatibility with Yoast SEO 11.1</li>\n</ul>\n<h2 id=\"v11.0\">11.0</h2>\n<small>April 16th, 2019</small>\nEnhancements:\n<ul>\n 	<li>Improves the integration of Woo &amp; Yoast\'s Schema output, bringing it to a whole new level.</li>\n 	<li>Schema: Changes page type on Checkout to <code>CheckoutPage</code>.</li>\n 	<li>Schema: Changes page type on Product to <code>ItemPage</code>.</li>\n</ul>\nOther:\n<ul>\n 	<li>Removes Woo breadcrumbs Schema output.</li>\n 	<li>Sets the minimum required Yoast SEO version to 11.0.</li>\n</ul>\n<h2 id=\"v10.1\">10.1</h2>\n<small>April 2nd, 2019</small>\nEnhancements:\n<ul>\n 	<li>Changes <code>og:brand</code> to <code>product:brand</code> to match the OpenGraph specifications better.</li>\n</ul>\nOther:\n<ul>\n 	<li>Sets the minimum required Yoast SEO version to 10.1.</li>\n 	<li>Removes an empty method that has been deprecated since version 5.6.</li>\n</ul>\n<h2 id=\"v10.0\">10.0</h2>\n<small>March 12th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 10.0</li>\n</ul>\n<h2 id=\"v9.7\">9.7</h2>\n<small>February 26th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.7</li>\n</ul>\n<h2 id=\"v9.6.1\">9.6.1</h2>\n<small>February 12th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.6.1</li>\n</ul>\n<h2 id=\"v9.6\">9.6</h2>\n<small>February 12th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.6</li>\n</ul>\n<h2 id=\"v9.5\">9.5</h2>\n<small>January 22nd, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.5</li>\n</ul>\n<h2 id=\"v9.4\">9.4</h2>\n<small>January 8th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.4</li>\n</ul>\n<h2 id=\"v9.3\">9.3</h2>\n<small>December 18th, 2018</small>\nEnhancements:\n<ul>\n 	<li>The short product description assessment in the SEO analysis is now updated whenever the description gets changed inside the Text-based editor (previously only in the Visual editor).</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the WooCommerce breadcrumbs were not replaced by the Yoast SEO breadcrumbs.</li>\n 	<li>Fixes a bug where switching to the visual editor with the text editor active could cause the Product editor to crash.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.3</li>\n</ul>\n<h2 id=\"v9.2\">9.2</h2>\n<small>November 20th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 9.2</li>\n</ul>\n<h2 id=\"v9.1\">9.1</h2>\n<small>November 6th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the <code>Yoast SEO Breadcrumbs</code> settings page link did not go to the correct page.</li>\n 	<li>Fixes a bug where a PHP warning would be displayed when <code>php_uname</code> has been disabled for security reasons.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.1</li>\n</ul>\n<h2 id=\"v9.0\">9.0</h2>\n<small>October 9th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 9.0</li>\n</ul>\n<h2 id=\"v8.4\">8.4</h2>\n<small>October 9th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 8.4</li>\n</ul>\n<h2 id=\"v8.3\">8.3</h2>\n<small>September 25th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 8.3</li>\n</ul>\n<h2 id=\"v8.2\">8.2</h2>\n<small>September 11th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 8.2</li>\n</ul>\n<h2 id=\"v8.1\">8.1</h2>\n<small>August 28th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 8.1</li>\n</ul>\n<h2 id=\"v8.0\">8.0</h2>\n<small>August 14th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 8.0</li>\n</ul>\n<h2 id=\"v7.9.1\">7.9.1</h2>\n<small>August 7th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.9.1</li>\n</ul>\n<h2 id=\"v7.9\">7.9</h2>\n<small>July 24th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.9</li>\n</ul>\n<h2 id=\"v7.8\">7.8</h2>\n<small>July 10th, 2018</small>\n<ul>\n 	<li>Excludes the WooCommerce core pages from the sitemap, as they are set to <code>noindex</code> by WooCommerce.</li>\n 	<li>Hides excluded catalog products from the products sitemap.</li>\n 	<li>Compatibility with Yoast SEO 7.8</li>\n</ul>\n<h2 id=\"v7.7\">7.7</h2>\n<small>June 26th, 2018</small>\n<ul>\n 	<li>Adds recommended templates with replacements variables for WooCommerce pages.</li>\n 	<li>Compatibility with Yoast SEO 7.7</li>\n</ul>\n<h2 id=\"v7.6\">7.6</h2>\n<small>June 5th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.6</li>\n</ul>\n<h2 id=\"v7.5\">7.5</h2>\n<small>May 15th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.5</li>\n</ul>\n<h2 id=\"v7.4\">7.4</h2>\n<small>May 3rd, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.4</li>\n</ul>\n<h2 id=\"v7.3\">7.3</h2>\n<small>April 17th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.3</li>\n</ul>\n<h2 id=\"v7.2\">7.2</h2>\n<small>April 3rd, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.2</li>\n</ul>\n<h2 id=\"v7.1\">7.1</h2>\n<small>March 20th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.1</li>\n</ul>\n<h2 id=\"v7.0\">7.0</h2>\n<small>March 6th, 2018</small>\n<ul>\n 	<li>Removes backfill for <code>wp_installing()</code> as this was introduced in WordPress 4.4.</li>\n 	<li>Requires WordPress 4.8 or higher to be installed.</li>\n 	<li>Requires Yoast SEO 7.0 or higher to be installed.</li>\n 	<li>Security hardening.</li>\n</ul>\n<h2 id=\"v6.3\">6.3</h2>\n<small>February 13th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 6.3</li>\n</ul>\n<h2 id=\"v6.2\">6.2</h2>\n<small>January 23rd, 2018</small>\nEnhancements:\n<ul>\n 	<li>Adds <code>%%wc_price%%</code>, <code>%%wc_sku%%</code>, <code>%%wc_shortdesc%%</code> and <code>%%wc_brand%%</code> replacement variables for titles and meta description.</li>\n</ul>\n<h2 id=\"v6.1\">6.1</h2>\n<small>January 9th, 2018</small>\nEnhancements:\n<ul>\n 	<li>Excludes product names from being translated.</li>\n</ul>\n<h2 id=\"v6.0\">6.0</h2>\n<small>December 20th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 6.0</li>\n</ul>\n<h2 id=\"v5.9\">5.9</h2>\n<small>December 5th, 2017</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where product gallery images were being placed above the featured image in the OpenGraph output. This caused an unexpected image to be used when sharing the page.</li>\n 	<li>Fixes a bug where the Yoast SEO link count columns where not removed from the product page when the setting <code>Remove Yoast SEO columns</code> is used.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 5.9</li>\n</ul>\n<h2 id=\"v5.8\">5.8</h2>\n<small>November 15th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.8</li>\n</ul>\n<h2 id=\"v5.7\">5.7</h2>\n<small>October 24th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.7.</li>\n</ul>\n<h2 id=\"v5.6\">5.6</h2>\n<small>October 10th, 2017</small>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Changes the capability on which the submenu is registered to <code>wpseo_manage_options</code></li>\n 	<li>Changes the way the submenu is registered to use the <code>wpseo_submenu_pages</code> filter</li>\n</ul>\n</li>\n</ul>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixes a bug where the short product description was cut after 156 characters in the meta description</li>\n 	<li>Fixes a bug where the license check endpoint was using an incorrect URL</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.5\">5.5</h2>\n<small>September 26th, 2017</small>\n<ul>\n 	<li>Updated the internationalization module to version 3.0.</li>\n 	<li>Compatibility with Yoast SEO 5.5</li>\n</ul>\n<h2 id=\"v5.4\">5.4</h2>\n<small>September 6th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.4</li>\n</ul>\n<h2 id=\"v5.3\">5.3</h2>\n<small>August 22th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.3</li>\n</ul>\n<h2 id=\"v5.2\">5.2</h2>\n<small>August 8th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.2</li>\n</ul>\n<h2 id=\"v5.1\">5.1</h2>\n<small>July 25th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.1</li>\n</ul>\n<h2 id=\"v5.0\">5.0</h2>\n<small>July 6th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.0.</li>\n</ul>\n<h2 id=\"v4.9\">4.9</h2>\n<small>June 7th, 2017</small>\n<ul>\n 	<li>Adds a filter to set the primary category in the permalink.</li>\n 	<li>Adds fallbacks for several deprecated warnings.</li>\n 	<li>Fixes a bug where not all Yoast SEO columns were hidden when the columns output by Yoast were removed.</li>\n</ul>\n<h2 id=\"v4.8\">4.8</h2>\n<small>May 23rd, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.8.</li>\n</ul>\n<h2 id=\"v4.7\">4.7</h2>\n<small>May 2nd, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.7.</li>\n</ul>\n<h2 id=\"v4.6\">4.6</h2>\n<small>April 11th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.6.</li>\n</ul>\n<h2 id=\"v4.5\">4.5</h2>\n<small>March 21st, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.5.</li>\n</ul>\n<h2 id=\"v4.4\">4.4</h2>\n<small>February 28th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.4</li>\n</ul>\n<h2>4.3</h2>\n<small>February 14th, 2017</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where duplicate opengraph image tags were added to product categories.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.2.1\">4.2.1</h2>\n<small>February 3rd, 2017</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes \"Fatal error: Class \'yoast_i18n\' not found\".</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.2\">4.2</h2>\n<small>January 31th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.2</li>\n</ul>\n<h2 id=\"v4.1\">4.1</h2>\n<small>January 17th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.1</li>\n</ul>\n<h2 id=\"v4.0\">4.0</h2>\n<small>December 13th, 2016</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.0</li>\n</ul>\n<h2 id=\"v3.9\">3.9</h2>\n<small>November 29th, 2016</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 3.9</li>\n</ul>\n<h2 id=\"v3.8\">3.8</h2>\n<small>November 8th, 2016</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 3.8</li>\n</ul>\n<h2 id=\"v3.7\">3.7</h2>\n<small>October 11th, 2016</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 3.7</li>\n</ul>\n<h2 id=\"v3.6\">3.6</h2>\n<small>September 27th, 2016</small>\n<ul>\n 	<li>Changes\n<ul>\n 	<li>Updated translations.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.5\">3.5</h2>\n<small>September 7th, 2016</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 3.5</li>\n</ul>\n<h2 id=\"v3.4\">3.4</h2>\n<small>July 19th, 2016</small>\n<ul>\n 	<li>Changes\n<ul>\n 	<li>Updated translations.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.3\">3.3</h2>\n<small>June 14th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Adds the Yoast i18n module to the Yoast SEO WooCommerce settings page, which informs users the plugin isn\'t available in their language and what they can do about it.</li>\n</ul>\n</li>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where the support beacon for Yoast SEO WooCommerce was added to all Yoast SEO settings pages.</li>\n 	<li>Fixes a bug where updates were not working reliably when multiple paid Yoast plugins were active.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.2.1\">3.2.1</h2>\n<small>April 28th, 2016</small>\n<ul>\n 	<li>Bug fixes</li>\n 	<li>Fixes a bug where the rel=next and rel=prev links were not displayed on shop archive pages 2 and up.</li>\n</ul>\n<h2 id=\"v3.2\">3.2</h2>\n<small>April 20th, 2016</small>\n<ul>\n 	<li>Bug fixes</li>\n 	<li>Fixes a bug where clicking the \'Update now\' button on the plugin page didn\'t update correctly.</li>\n 	<li>Fixes a bug where product specific checks that were added to the content analysis would no longer work in combination with Yoast SEO 3.2 and higher.</li>\n</ul>\n<h2 id=\"v3.1.1\">3.1.1</h2>\n<small>March 2nd, 2016</small>\n<ul>\n 	<li>Bug fixes\n<ul>\n 	<li>Fixes a bug where the Yoast content analysis would break on product edit pages when Yoast WooCommerce SEO and Yoast SEO (Premium) 3.1+ are both active.</li>\n</ul>\n<h2 id=\"v3.1\">3.1</h2>\n<small>March 2nd, 2016</small>\n<ul>\n 	<li>Bug fixes\n<ul>\n 	<li>Fixes a bug where our license manager could sometimes not reach our licensing system due to problems with ssl.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Makes sure users don\'t have to reactivate their license after updating or disabling/enabling the plugin.</li>\n 	<li>Adds a support beacon on the WooCommerce SEO settings page enabling users to ask for support from the WordPress backend.</li>\n 	<li>Makes license calls a bit faster.</li>\n 	<li>Removed all Twitter card functionality since the Product twitter card no longer exists.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.0\">3.0</h2>\n<small>November 18th, 2015</small>\n<ul>\n 	<li>Synchronized plugin version with all other Yoast SEO plugins for WordPress.</li>\n</ul>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes deprecation warnings for filters and functions that have been removed in Yoast SEO</li>\n 	<li>Fixes a fatal on the frontend when WooCommerce SEO is active but WooCommerce isn\'t.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Makes sure WooCommerce specific content analysis checks work well with the Real Time content analysis tool in Yoast SEO 3.0.</li>\n 	<li>Makes sure the product image galleries are still analyzed as part of the content by the Real Time content analysis tool in Yoast SEO 3.0.</li>\n 	<li>Improves the order in which Opengraph images are output. First the Facebook image, then the featured image, then the product gallery images.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.1.6\">1.1.6</h2>\n<small>March 25th, 2014</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where a Fatal error was being raised on the frontend when WooCommerce is not activated.</li>\n 	<li>Fixes a bug where Open Graph image tags for featured images and facebook images were not included first when a product image gallery existed.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Defaults to the short description for the meta description when no meta description is set.</li>\n 	<li>Added 8 new languages: da_DK, en_GB, es_ES, es_MX, it_IT, nb_NO, nl_NL and tr_TR.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v1.1.5\">1.1.5</h2>\n<small>September 9th, 2014</small>\n<ul>\n 	<li>Bugfix: prevent adding WooCommerce product archive link to XML sitemap.</li>\n</ul>\n<h2 id=\"v1.1.4\">1.1.4</h2>\n<small>July 15th, 2014</small>\n<ul>\n 	<li>Add <code>wpseo_woocommerce_og_price</code> filter. Returning false on it prevents price from being put out in OpenGraph tags.</li>\n 	<li>Add attribute to breadcrumbs when attribute is selected.</li>\n 	<li>Removed unused breadcrumb option.</li>\n 	<li>Only initiate plugin when WP is not installing.</li>\n</ul>\n<h2>1.1.3</h2>\n<small>June 24th, 2014</small>\n<ul>\n 	<li>Improved how WooCommerce breadcrumbs are replaced.</li>\n 	<li>Fixed double class instantiation within same method.</li>\n 	<li>Add call to <code>load_plugin_textdomain()</code>.</li>\n 	<li>Make sure we recognize WooCommerce product gallery images in page analysis.</li>\n 	<li>Add images from product gallery to XML sitemap.</li>\n 	<li>Use product category thumbnail for <code>og:image</code>.</li>\n 	<li>Make sure short description length test also soft errors when short description is too long.</li>\n 	<li>Use WooCommerce price formatting functions for price in Twitter card.</li>\n</ul>\n<h2>1.1.2</h2>\n<small>March 21st, 2014</small>\n<ul>\n 	<li>Fixed a bug where the breadcrumb caused a fatal error.</li>\n</ul>\n<h2>1.1.1</h2>\n<small>March 21st, 2014</small>\n<ul>\n 	<li>Added Yoast license manager to plugin.</li>\n</ul>\n<h2>1.1</h2>\n<small>March 11th, 2014</small>\n<ul>\n 	<li>Compatibility update for WP SEO v1.5 including application of a number of best practices.</li>\n 	<li>Bugfixes</li>\n 	<li>Fixed shortcodes should be removed from ogdesc.</li>\n 	<li>Fixed duplicate twitter domain meta tag</li>\n 	<li>Fixed error loading stylesheet (WPSEO_URL no longer defined).</li>\n 	<li>Additional enhancements</li>\n 	<li>Change the minimum content length requirements to 200, instead of the WP SEO default of 300.</li>\n 	<li>Add a length test for the products short description.</li>\n 	<li>Make sure the content analysis tests use the product images as well.</li>\n 	<li>If a product category has a description, use it for the OpenGraph description.</li>\n 	<li>Switch to general WP SEO Licensing class</li>\n</ul>\n<h2>1.0.1</h2>\n<small>February 17th, 2014</small>\n<ul>\n 	<li>Add check whether WordPress and WordPress SEO by Yoast are installed and up-to-date</li>\n</ul>\n<h2>1.0</h2>\n<small>April 8th, 2013</small>\n<ul>\n 	<li>Initial version.</li>\n</ul>\n<h2>Upgrade Notice</h2>\n<h2>1.1</h2>\n<small>March 11th, 2014</small>\n<ul>\n 	<li>Please upgrade the WordPress SEO plugin to version 1.5 as well for compatibility.</li>\n</ul>\n</li>\n</ul>\";}}i:4;O:8:\"stdClass\":3:{s:11:\"renewal_url\";s:0:\"\";s:11:\"expiry_date\";s:24:\"1970-01-01T05:00:00.000Z\";s:7:\"product\";O:8:\"stdClass\":7:{s:7:\"version\";s:4:\"11.1\";s:4:\"name\";s:29:\"News SEO for WordPress plugin\";s:4:\"slug\";s:14:\"yoast-seo-news\";s:12:\"last_updated\";s:24:\"2019-04-30T10:42:24.000Z\";s:9:\"store_url\";s:52:\"https://yoast.com/product/news-seo-wordpress-plugin/\";s:8:\"download\";s:57:\"https://yoast.com/app/uploads/2019/04/wpseo-news-11.1.zip\";s:9:\"changelog\";s:19058:\"<h2 id=\"v11.1\">11.1</h2>\n<small>April 30th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 11.1</li>\n</ul>\n<h2 id=\"v11.0\">11.0</h2>\n<small>April 16th, 2019</small>\nEnhancements:\n<ul>\n 	<li>Schema: Adds Schema.org <code>NewsArticle</code> markup to all post types that you\'ve selected as News.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixed Sitemap image URLs to use href instead of guid to prevent relative URLs in the Sitemap. Props to <a href=\"https://github.com/ChristophKnopf\">ChristophKnopf</a></li>\n</ul>\nOther:\n<ul>\n 	<li>Sets the minimum required Yoast SEO version to 11.0.</li>\n</ul>\n<h2 id=\"v10.1\">10.1</h2>\n<small>April 2nd, 2019</small>\nOther:\n<ul>\n 	<li>Sets the minimum required Yoast SEO version to 10.1.</li>\n 	<li>Removes the deprecated methods ( &lt; 6.1 ).</li>\n</ul>\n<h2 id=\"v10.0\">10.0</h2>\n<small>March 12th, 2019</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the news sitemap would show a blank page due to an internal server error.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 10.0</li>\n</ul>\n<h2 id=\"v9.7\">9.7</h2>\n<small>February 26th, 2019</small>\nEnhancements:\n<ul>\n 	<li>Changes the titles in the news sitemap to default to the SEO title, with a fallback to the post title. (props: @timnolte)</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where it was possible the 48 hour selection range for posts in the news sitemap was slightly off. (props: @timnolte)</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.7</li>\n</ul>\n<h2 id=\"v9.6.1\">9.6.1</h2>\n<small>February 12th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.6.1</li>\n</ul>\n<h2 id=\"v9.6\">9.6</h2>\n<small>February 12th, 2019</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.6</li>\n</ul>\n<h2 id=\"v9.5\">9.5</h2>\n<small>January 22nd, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.5</li>\n</ul>\n<h2 id=\"v9.4\">9.4</h2>\n<small>January 8th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the last modified date for the sitemap index has been displayed with the wrong time zone.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.4</li>\n</ul>\n<h2 id=\"v9.3\">9.3</h2>\n<small>December 18th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.3</li>\n</ul>\n<h2 id=\"v9.2\">9.2</h2>\n<small>November 20th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.2</li>\n</ul>\n<h2 id=\"v9.1\">9.1</h2>\n<small>November 6th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where a PHP warning would be displayed when <code>php_uname</code> has been disabled for security reasons.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.1</li>\n</ul>\n<h2 id=\"v9.0\">9.0</h2>\n<small>October 23rd, 2018</small>\nEnhancements:\n<ul>\n 	<li>Allows term based exclusion in the news sitemap for all taxonomies connected to enabled post types.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where terms with <code>show_ui</code> set to false would be shown in the list of terms to be excluded from the news sitemap.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 9.0</li>\n</ul>\n<h2 id=\"v8.4\">8.4</h2>\n<small>October 9th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the changelog would not show up when the plugin was updated.</li>\n</ul>\nEnhancements:\n<ul>\n 	<li>Makes it possible to exclude posts with post type \'post\' from the the news sitemap.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 8.4</li>\n</ul>\n<h2 id=\"v8.3\">8.3</h2>\n<small>September 25th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the XML of the news sitemap would contain an incorrect publication time when the user would use a location-based timezone.</li>\n 	<li>Fixes a bug where posts with the post type of Post would always be included in the sitemap.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 8.3</li>\n</ul>\n<h2 id=\"v8.2\">8.2</h2>\n<small>September 11th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 8.2</li>\n</ul>\n<h2 id=\"v8.1\">8.1</h2>\n<small>August 28th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 8.1</li>\n</ul>\n<h2 id=\"v8.0\">8.0</h2>\n<small>August 14th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 8.0</li>\n</ul>\n<h2 id=\"v7.9.1\">7.9.1</h2>\n<small>August 7th, 2018</small>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 7.9.1</li>\n</ul>\n<h2 id=\"v7.9\">7.9</h2>\n<small>July 24th, 2018</small>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where news posts set to no-index would still appear in the XML News Sitemap.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 7.9</li>\n</ul>\n<h2 id=\"v7.8\">7.8</h2>\n<small>July 10th, 2018</small>\nOther:\n<ul>\n 	<li>Removes functionality for original-source as Google has confirmed they\'re no longer using it.</li>\n 	<li>Compatibility with Yoast SEO 7.8</li>\n</ul>\n<h2 id=\"v7.7\">7.7</h2>\n<small>June 26th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.7</li>\n</ul>\n<h2 id=\"v7.6\">7.6</h2>\n<small>June 5th, 2018</small>\n\nEnhancements:\n<ul>\n 	<li>Removes support for standout tag.</li>\n 	<li>Removes support for editor\'s pick RSS.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the news image sitemap did not correctly handle protocol relative URLs.</li>\n</ul>\n<h2 id=\"v7.5\">7.5</h2>\n<small>May 15th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.4</li>\n</ul>\n<h2 id=\"v7.4\">7.4</h2>\n<small>May 3rd, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.4</li>\n</ul>\n<h2 id=\"v7.3\">7.3</h2>\n<small>April 17th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.3</li>\n</ul>\n<h2 id=\"v7.2\">7.2</h2>\n<small>April 3rd, 2018</small>\nEnhancements:\n<ul>\n 	<li>Removes the use of meta news keywords everywhere as Google no longer supports them.</li>\n 	<li>Renews compatibility with the <a href=\"http://wordpress.org/plugins/plugin-dependencies/\">Plugin Dependencies</a> plugin.</li>\n</ul>\nBugfixes:\n<ul>\n 	<li>Fixes a bug where the page link was missing on the plugin settings page.</li>\n</ul>\nOther:\n<ul>\n 	<li>Compatibility with Yoast SEO 7.2</li>\n 	<li>Adds warnings for deprecated functions.</li>\n 	<li>Security hardening.</li>\n</ul>\n<h2 id=\"v7.1\">7.1</h2>\n<small>March 20th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 7.1</li>\n</ul>\n<h2 id=\"v7.0\">7.0</h2>\n<small>March 6th, 2018</small>\n<ul>\n 	<li>Requires Yoast SEO 7.0 or higher to be installed.</li>\n 	<li>Moves each sitemap class to its own file instead of having multiple classes in one single file.</li>\n</ul>\n<h2 id=\"v6.3\">6.3</h2>\n<small>February 13th, 2018</small>\n<ul>\n 	<li>Load the XSL stylesheet from a static file when home and site URL are the same.</li>\n 	<li>Compatibility with Yoast SEO 6.3</li>\n</ul>\n<h2 id=\"v6.2.1\">6.2.1</h2>\n<small>January 23rd, 2018</small>\n<ul>\n 	<li>Bump version to make sure it displays correctly in the plugin list.</li>\n</ul>\n<h2 id=\"v6.2\">6.2</h2>\n<small>January 23rd, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 6.2</li>\n</ul>\n<h2 id=\"v6.1\">6.1</h2>\n<small>January 9th, 2018</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 6.1</li>\n</ul>\n<h2 id=\"v6.0\">6.0</h2>\n<small>December 20th, 2017</small>\nBugfixes:\n<ul>\n 	<li>Fixes a problem where the sitemap table could not be sorted.</li>\n 	<li>Compatibility with Yoast SEO 6.0</li>\n</ul>\n<h2 id=\"v5.9\">5.9</h2>\n<small>December 5th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.9</li>\n</ul>\n<h2 id=\"v5.8\">5.8</h2>\n<small>November 15th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.8</li>\n</ul>\n<h2 id=\"v5.7\">5.7</h2>\n<small>October 24th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.7</li>\n</ul>\n<h2 id=\"v5.6\">5.6</h2>\n<small>October 10th, 2017</small>\n<ul>\n 	<li>Enhancements:\n<ul>\n 	<li>Changes the capability on which the submenu is registered to <code>wpseo_manage_options</code></li>\n</ul>\n</li>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixes a bug where the license check endpoint was using an incorrect URL</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v5.5\">5.5</h2>\n<small>September 26th, 2017</small>\n<ul>\n 	<li>Updated the internationalization module to version 3.0.</li>\n 	<li>Compatibility with Yoast SEO 5.5</li>\n</ul>\n<h2 id=\"v5.4\">5.4</h2>\n<small>September 5th, 2017</small>\n<ul>\n 	<li>Updated the internationalization module to version 2.0.</li>\n 	<li>Compatibility with Yoast SEO 5.4</li>\n</ul>\n<h2 id=\"v5.3\">5.3</h2>\n<small>August 22th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.3</li>\n</ul>\n<h2 id=\"v5.2\">5.2</h2>\n<small>August 8th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 5.2</li>\n</ul>\n<h2 id=\"v5.1\">5.1</h2>\n<small>July 25th, 2017</small>\n<ul>\n 	<li>Fixes a bug where the wrong timezone was used in the sitemap.</li>\n</ul>\n<h2 id=\"v5.0\">5.0</h2>\n<small>July 6th, 2017</small>\n<ul>\n 	<li>Adds post type name (attachment) after the label to clarify the post type.</li>\n 	<li>Fixes a fatal error when Piklist and Yoast News SEO are both active.</li>\n 	<li>Fixes a fatal error when Liveblog and Yoast News SEO are both active.</li>\n 	<li>Fixes a warning in the News sitemap when bbPress and Yoast News SEO are both active.</li>\n</ul>\n<h2 id=\"v4.9\">4.9</h2>\n<small>June 7th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.9.</li>\n</ul>\n<h2 id=\"v4.8\">4.8</h2>\n<small>May 23rd, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.8.</li>\n</ul>\n<h2 id=\"v4.7\">4.7</h2>\n<small>May 2nd, 2017</small>\n<ul>\n 	<li>Fixes a bug where there were a deprecated function was being called, resulting in a warning.</li>\n</ul>\n<h2 id=\"v4.6\">4.6</h2>\n<small>April 11th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.6.</li>\n</ul>\n<h2 id=\"v4.5\">4.5</h2>\n<small>March 21st, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.5.</li>\n</ul>\n<h2 id=\"v4.4\">4.4</h2>\n<small>February 28th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.4.</li>\n</ul>\n<h2 id=\"v4.3\">4.3</h2>\n<small>February 14th, 2017</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.3.</li>\n</ul>\n<h2 id=\"v4.2.1\">4.2.1</h2>\n<small>February 3rd, 2017</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes \"Fatal error: Class \'yoast_i18n\' not found\".</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.2\">4.2</h2>\n<small>January 31st, 2017</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where a deprecated function was being called, resulting in a warning.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.1\">4.1</h2>\n<small>January 17th, 2017</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes W3C validation error on &lt;link attribute \'original-source\'.</li>\n 	<li>Fixed broken link in news sitemap.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v4.0\">4.0</h2>\n<small>December 13th, 2016</small>\n<ul>\n 	<li>Compatibility with Yoast SEO 4.0</li>\n</ul>\n<h2 id=\"v3.9\">3.9</h2>\n<small>November 29th, 2016</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where the editor\'s pick checkbox was reset after inline editing a post.</li>\n</ul>\n</li>\n 	<li>Updates translations.</li>\n</ul>\n<h2 id=\"v3.8\">3.8</h2>\n<small>November 8th, 2016</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where the editor\'s pick would be unset when quick editing.</li>\n 	<li>Fixes a bug where Google News would report an unexpected publication name in sitemaps.</li>\n</ul>\n</li>\n 	<li>Updates translations.</li>\n</ul>\n<h2 id=\"v3.7\">3.7</h2>\n<small>October 11th, 2016</small>\n<ul>\n 	<li>Updates translations</li>\n</ul>\n<h2 id=\"v3.6\">3.6</h2>\n<small>September 27th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li><a href=\"https://github.com/Yoast/wpseo-news/pull/238\">General accessibility improvements</a></li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.5.1\">3.5.1</h2>\n<small>September 16th, 2016</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where a page or post type with the slug <em>news</em> would be inaccessible.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.5\">3.5</h2>\n<small>September 7th, 2016</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where sitemaps would not be generated if a post with the same name existed.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.4\">3.4</h2>\n<small>July 19th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Introduced noindex meta tag for the Google News bot.</li>\n</ul>\n</li>\n 	<li>Bugfixes\n<ul>\n 	<li>Sitemaps need a real timezone instead of a UTC timezone because daylight saving time is not included in UTC.</li>\n 	<li>Google News Genre global default could not be overridden by page setting.</li>\n 	<li>The news keyword counting, for a maximum of 10 keywords, no longer counts empty keywords.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.3\">3.3</h2>\n<small>June 14th, 2016</small>\n<ul>\n 	<li>Enhancements\n<ul>\n 	<li>Adds the Yoast i18n module to the Yoast SEO News settings page, which informs users the plugin isn\'t available in their language and what they can do about it.</li>\n</ul>\n</li>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where the support beacon for Yoast SEO News was added to all Yoast SEO settings pages.</li>\n 	<li>Fixes a bug where updates were not working reliably when multiple paid Yoast plugins were active.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.2\">3.2</h2>\n<small>April 20th, 2016</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where the news sitemap would be shown in the index even if the sitemap itself was empty.</li>\n 	<li>Fixes a bug where clicking the \'Update now\' button on the plugin page didn\'t update correctly.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.1\">3.1</h2>\n<small>March 2nd, 2016</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where our license manager could sometimes not reach our licensing system due to problems with ssl.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Makes sure users don\'t have to reactivate their license after updating or disabling/enabling the plugin.</li>\n 	<li>Adds a support beacon on the News SEO settings page enabling users to ask for support from the WordPress backend.</li>\n 	<li>Contains a few performance optimizations.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v3.0\">3.0</h2>\n<small>November 18th, 2015</small>\n<ul>\n 	<li>Synchronized plugin version with all other Yoast SEO plugins for WordPress.</li>\n</ul>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where the links in the sitemap would \'randomly\' change from https to http or the other way around (in very rare circumstances).</li>\n 	<li>Fixes the news metabox that was broken in combination with Yoast SEO 3.0.</li>\n 	<li>Fixes deprecation warnings for filters that have been removed in Yoast SEO 3.0.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.2.5\">2.2.5</h2>\n<small>June 10th, 2015</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where the news sitemap cache was not cleared when the News SEO settings were updated.</li>\n 	<li>Added 1 new translation: en_AU.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.2.4\">2.2.4</h2>\n<small>April 29th, 2015</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where the news sitemap cache was not cleared when a news item was edited or added.</li>\n 	<li>Fixes a bug where the stylesheets for the news sitemap were not included when the sitemap was served from cache.</li>\n 	<li>Fixes a bug where specialchars were escaped in the news sitemap.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.2.3\">2.2.3</h2>\n<small>March 25th, 2015</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixes a bug where an invalid argument error could be raised when visiting the sitemap.</li>\n 	<li>Fixes a bug where the sitemap could contain wrongly formatted publication dates.</li>\n 	<li>Fixes a bug where the <code>wpseo_news_sitemap_url</code> filter wasn\'t working properly.</li>\n 	<li>Fixes a bug where the News sitemap genre wasn\'t saved on posts.</li>\n 	<li>Fixes a bug where the sitemap didn\'t always contain the correct image url, props <a href=\"https://github.com/mjaschen\">Marcus Jaschen</a>.</li>\n 	<li>Fixes a bug with duplicate keywords in the news sitemap.</li>\n 	<li>Fixes an issue where the Editor\'s pick RSS took very long to load, by only fetching the selected post types from the database.</li>\n 	<li>Fixes a bug where the default keywords and the meta news keywords weren\'t added to the sitemap.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Introduces a few string improvements.</li>\n 	<li>Added 9 new languages: en_GB, es_ES, es_MX, fr_FR, he_IL, it_IT, nl_NL, ro_RO and tr_TR.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.2.2\">2.2.2</h2>\n<small>December 17th, 2014</small>\n<ul>\n 	<li>Bugfixes</li>\n 	<li>The stock tickers didn\'t work properly, these are fixed.</li>\n 	<li>Setting correct HTTP header to be sure output is executed as a RSS-feed.</li>\n 	<li>Enhancements</li>\n 	<li>Hide the standout meta-tag automatically after seven days (you can still see standout was used in admin but it won\'t be displayed)</li>\n 	<li>Show the total number of used standout meta-tags (for the last seven days) in the post-admin</li>\n</ul>\n<h2 id=\"v2.2.1\">2.2.1</h2>\n<small>November 11th, 2014</small>\n<ul>\n 	<li>Bugfixes:\n<ul>\n 	<li>Fixed a bug where button to Editors\' Pick RSS didn\'t work.</li>\n 	<li>Fixed a bug where the wrong image url ended up in the image:loc in the Editor\'s Pick RSS</li>\n 	<li>Fixed a bug where the wrong http header was set for the Editor\'s Pick RSS</li>\n</ul>\n</li>\n 	<li>Enhancements:\n<ul>\n 	<li>Added translations for Polish</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.2\">2.2</h2>\n<small>October 7th, 2014</small>\n<ul>\n 	<li>Bugfixes\n<ul>\n 	<li>Fixed a bug where button to Editors\' Pick RSS didn\'t work.</li>\n 	<li>Fixed bug where plugin would give a white screen of death in certain installations.</li>\n 	<li>Improve using the right image for the news sitemap.</li>\n</ul>\n</li>\n 	<li>Enhancements\n<ul>\n 	<li>Added <code>pubDate</code> to editors pick RSS feed.</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"v2.1\">2.1</h2>\n<small>July 9th, 2014</small>\n<ul>\n 	<li>Several performance optimizations for sitemap generation.</li>\n 	<li>Added button that links to news sitemap on admin page.</li>\n 	<li>Added an option to include only the featured image in the XML News sitemap.</li>\n 	<li>Introduced filter <code>wpseo_locale</code> for locale/language of the XML News sitemap.</li>\n 	<li>Introduced filter <code>wpseo_news_sitemap_url</code> to allow changing the XML News sitemap URL.</li>\n</ul>\n<h2>2.0.6</h2>\n<small>June 10th, 2014</small>\n<ul>\n 	<li>Removed the wptexturize filter from the_title and the_content in the Editors\' Pick feed because corrupts our output.</li>\n 	<li>Added guid elements to item elements in the Editors\' Pick feed.</li>\n 	<li>Added an atom:link element as recommended by the RSS Advisory Board to identifying a feed\'s URL within the feed.</li>\n 	<li>Added the WPSEO News fields to the WPSEO meta fields class to fix a bug where the post meta genre field isn\'t saved.</li>\n</ul>\n<h2>2.0.5</h2>\n<small>June 5th, 2014</small>\n<ul>\n 	<li>Fixed a publication_date timezone bug.</li>\n</ul>\n<h2>2.0.4</h2>\n<small>May 15th, 2014</small>\n<ul>\n 	<li>Add CDATA tags to RSS feed text output.</li>\n 	<li>Now using the same title for the Editors\' Pick title as the channel title.</li>\n</ul>\n<h2>2.0.3</h2>\n<small>April 23rd, 2014</small>\n<ul>\n 	<li>Sitemaps now use creation dates instead of modified dates.</li>\n</ul>\n<h2>2.0.2</h2>\n<small>April 22nd, 2014</small>\n<ul>\n 	<li>Fixed a bug with version_compare.</li>\n 	<li>Adds sanitize callback to register_settings.</li>\n</ul>\n<h2>2.0.1</h2>\n<small>April 22nd, 2014</small>\n<ul>\n 	<li>Changed EDD product name to \'News SEO\'.</li>\n</ul>\n<h2>2.0</h2>\n<small>April 22nd, 2014</small>\n<ul>\n 	<li>Initial release</li>\n</ul>\";}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(17040, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(17041, '_transient_timeout_wc_term_counts', '1559579972', 'no'),
(17042, '_transient_wc_term_counts', 'a:9:{i:19;s:1:\"9\";i:24;s:1:\"1\";i:21;s:1:\"1\";i:32;s:1:\"1\";i:29;s:1:\"2\";i:23;s:1:\"4\";i:27;s:2:\"11\";i:25;s:1:\"1\";i:22;s:1:\"2\";}', 'no'),
(17156, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1557012408', 'no'),
(17157, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4575;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3412;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2616;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2486;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1918;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1728;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1723;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1467;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1432;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1430;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1425;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1360;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1307;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1291;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1137;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1102;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1092;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1056;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:998;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:928;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:852;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:841;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:831;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:783;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:730;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:726;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:724;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:709;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:701;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:698;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:685;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:681;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:667;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:652;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:651;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:649;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:628;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:620;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:618;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:618;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:585;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:569;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:569;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:563;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:560;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:553;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:539;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:536;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:528;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:525;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:523;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:515;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:509;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:504;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:501;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:494;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:477;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:474;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:471;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:470;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:468;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:463;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:457;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:449;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:430;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:429;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:420;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:417;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:416;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:412;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:406;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:398;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:391;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:390;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:390;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:386;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:378;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:378;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:375;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:368;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:361;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:359;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:358;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:355;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:353;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:347;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:346;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:344;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:335;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:327;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:327;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:325;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:322;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:318;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:317;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:315;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:310;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:310;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:309;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:309;}}', 'no'),
(17159, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.1.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557064515;s:15:\"version_checked\";s:5:\"5.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(17162, 'ai1wm_secret_key', 'mkFHScE2zdLm', 'yes'),
(17164, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:293:\"<a href=\"http://localhost/wp-content/ai1wm-backups/localhost-20190504-202752-443.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-20190504-202752-443.wpress\"><span>Загрузить localhost</span><em>Размер: 91 MB</em></a>\";}', 'yes'),
(17168, 'ai1wm_updater', 'a:0:{}', 'yes'),
(17169, '_transient_timeout__woocommerce_helper_subscriptions', '1557008817', 'no'),
(17170, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(17175, 'wp-phpmyadmin-extension', 'a:26:{s:16:\"randomCookieName\";s:20:\"pma_HnwpizGRo1fsjtd7\";s:17:\"randomCookieValue\";s:20:\"pma_fJiSZCopwUKEb7Tl\";s:18:\"RandomFolderSuffix\";s:24:\"_htbEepaNljQ0TBgC65JLcxS\";s:20:\"manual_pma_login_url\";s:0:\"\";s:10:\"require_ip\";b:1;s:16:\"hide_phma_errors\";b:0;s:13:\"strip_slashes\";b:0;s:9:\"use_https\";b:1;s:12:\"is_localhost\";b:1;s:15:\"has_pro_version\";i:0;s:9:\"show_opts\";b:1;s:19:\"show_rating_message\";b:1;s:12:\"display_tabs\";b:0;s:13:\"required_role\";s:15:\"install_plugins\";s:15:\"default_managed\";s:7:\"network\";s:17:\"menu_button_level\";s:8:\"mainmenu\";s:9:\"menu_icon\";s:107:\"http://localhost/wp-content/plugins/wp-phpmyadmin-extension//assets/media/menu_icon.png\" style=\"width:30px;\";s:16:\"menu_button_name\";s:13:\"WP-phpMyAdmin\";s:4:\"name\";s:13:\"WP phpMyAdmin\";s:5:\"title\";s:61:\"<a href=\"https://puvox.software/wordpress/\">WP phpMyAdmin</a>\";s:7:\"version\";s:3:\"2.3\";s:16:\"last_update_time\";i:1557007961;s:12:\"last_updates\";a:0:{}s:17:\"fist_install_date\";i:1557007961;s:12:\"last_version\";s:3:\"2.3\";s:15:\"ssl_error_shown\";i:1;}', 'yes'),
(17176, 'transl_lastvers', '2.3', 'no'),
(17203, '_site_transient_timeout_theme_roots', '1557066317', 'no'),
(17204, '_site_transient_theme_roots', 'a:4:{s:19:\"html_vosim_wp_theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(17205, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557064520;s:7:\"checked\";a:4:{s:19:\"html_vosim_wp_theme\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.3.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(17206, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557064522;s:7:\"checked\";a:14:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.92\";s:9:\"hello.php\";s:5:\"1.7.1\";s:27:\"leaflet-map/leaflet-map.php\";s:6:\"2.14.0\";s:25:\"menu-image/menu-image.php\";s:5:\"2.9.1\";s:25:\"relevanssi/relevanssi.php\";s:5:\"4.1.3\";s:33:\"simple-sitemap/simple-sitemap.php\";s:3:\"2.9\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.5.7\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.5.1.3\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.4.2\";s:33:\"wp-php-console/wp-php-console.php\";s:5:\"1.5.2\";s:33:\"wp-phpmyadmin-extension/index.php\";s:3:\"2.3\";s:38:\"yith-woocommerce-catalog-mode/init.php\";s:5:\"1.6.5\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"10.1.2\";}s:8:\"response\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"relevanssi/relevanssi.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:24:\"w.org/plugins/relevanssi\";s:4:\"slug\";s:10:\"relevanssi\";s:6:\"plugin\";s:25:\"relevanssi/relevanssi.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/relevanssi/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/relevanssi.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/relevanssi/assets/icon-256x256.png?rev=2025044\";s:2:\"1x\";s:63:\"https://ps.w.org/relevanssi/assets/icon-128x128.png?rev=2025044\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/relevanssi/assets/banner-1544x500.jpg?rev=1647178\";s:2:\"1x\";s:65:\"https://ps.w.org/relevanssi/assets/banner-772x250.jpg?rev=1647180\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:83:\"<ul>\n<li>Restrict Content Pro support, bug fixes and small improvements.</li>\n</ul>\";s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"simple-sitemap/simple-sitemap.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/simple-sitemap\";s:4:\"slug\";s:14:\"simple-sitemap\";s:6:\"plugin\";s:33:\"simple-sitemap/simple-sitemap.php\";s:11:\"new_version\";s:3:\"3.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/simple-sitemap/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/simple-sitemap.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/simple-sitemap/assets/icon.svg?rev=1411764\";s:3:\"svg\";s:59:\"https://ps.w.org/simple-sitemap/assets/icon.svg?rev=1411764\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/simple-sitemap/assets/banner-1544x500.png?rev=1413087\";s:2:\"1x\";s:69:\"https://ps.w.org/simple-sitemap/assets/banner-772x250.png?rev=1413087\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.5.2.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.5.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";s:5:\"5.3.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:38:\"yith-woocommerce-catalog-mode/init.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:43:\"w.org/plugins/yith-woocommerce-catalog-mode\";s:4:\"slug\";s:29:\"yith-woocommerce-catalog-mode\";s:6:\"plugin\";s:38:\"yith-woocommerce-catalog-mode/init.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/yith-woocommerce-catalog-mode/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/yith-woocommerce-catalog-mode.1.6.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/yith-woocommerce-catalog-mode/assets/icon-128x128.jpg?rev=1466776\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/yith-woocommerce-catalog-mode/assets/banner-1544x500.jpg?rev=1461232\";s:2:\"1x\";s:84:\"https://ps.w.org/yith-woocommerce-catalog-mode/assets/banner-772x250.jpg?rev=1461232\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"11.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.11.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.92\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.92.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2075535\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2075535\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2075535\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2075535\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"leaflet-map/leaflet-map.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/leaflet-map\";s:4:\"slug\";s:11:\"leaflet-map\";s:6:\"plugin\";s:27:\"leaflet-map/leaflet-map.php\";s:11:\"new_version\";s:6:\"2.14.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/leaflet-map/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/leaflet-map.2.14.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/leaflet-map/assets/icon-256x256.png?rev=1693083\";s:2:\"1x\";s:64:\"https://ps.w.org/leaflet-map/assets/icon-128x128.png?rev=1693083\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/leaflet-map/assets/banner-1544x500.png?rev=1693083\";s:2:\"1x\";s:66:\"https://ps.w.org/leaflet-map/assets/banner-772x250.png?rev=1693083\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"menu-image/menu-image.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/menu-image\";s:4:\"slug\";s:10:\"menu-image\";s:6:\"plugin\";s:25:\"menu-image/menu-image.php\";s:11:\"new_version\";s:5:\"2.9.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/menu-image/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/menu-image.2.9.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/menu-image_d8ebf6.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/menu-image/assets/banner-772x250.png?rev=916173\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.1.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1982773\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1982773\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-php-console/wp-php-console.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-php-console\";s:4:\"slug\";s:14:\"wp-php-console\";s:6:\"plugin\";s:33:\"wp-php-console/wp-php-console.php\";s:11:\"new_version\";s:5:\"1.5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-php-console/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-php-console.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-php-console/assets/icon-256x256.png?rev=1070278\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-php-console/assets/icon-128x128.png?rev=1070278\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-php-console/assets/banner-1544x500.png?rev=1070278\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-php-console/assets/banner-772x250.png?rev=1070278\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-phpmyadmin-extension/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/wp-phpmyadmin-extension\";s:4:\"slug\";s:23:\"wp-phpmyadmin-extension\";s:6:\"plugin\";s:33:\"wp-phpmyadmin-extension/index.php\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/wp-phpmyadmin-extension/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/wp-phpmyadmin-extension.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/wp-phpmyadmin-extension/assets/icon-128x128.png?rev=1990133\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/wp-phpmyadmin-extension/assets/banner-1544x500.png?rev=1943735\";s:2:\"1x\";s:78:\"https://ps.w.org/wp-phpmyadmin-extension/assets/banner-772x250.png?rev=1943736\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(17208, '_transient_doing_cron', '1557074218.8303399085998535156250', 'yes');

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
(3, 1, '_edit_lock', '1550534067:1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1556643273:1'),
(7, 7, '_wp_attached_file', '2019/02/advant.png'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:32;s:4:\"file\";s:18:\"2019/02/advant.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_wp_attached_file', '2019/02/advant2.png'),
(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:19:\"2019/02/advant2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 7, '_edit_lock', '1550542929:1'),
(17, 8, '_edit_lock', '1550542911:1'),
(18, 13, '_wp_attached_file', '2019/02/arrow_btn.png'),
(19, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:16;s:6:\"height\";i:12;s:4:\"file\";s:21:\"2019/02/arrow_btn.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 1336, '_wp_attached_file', '2019/02/license.txt'),
(70, 1337, '_wp_attached_file', '2019/02/advant3.png'),
(71, 1337, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:38;s:4:\"file\";s:19:\"2019/02/advant3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 1338, '_edit_last', '1'),
(78, 1338, '_wp_page_template', 'template-parts/serv2.php'),
(79, 1338, '_edit_lock', '1555224736:1'),
(80, 1340, '_edit_last', '1'),
(81, 1340, '_wp_page_template', 'default'),
(82, 1340, '_edit_lock', '1555866133:1'),
(83, 1342, '_menu_item_type', 'post_type'),
(84, 1342, '_menu_item_menu_item_parent', '1551'),
(85, 1342, '_menu_item_object_id', '1340'),
(86, 1342, '_menu_item_object', 'page'),
(87, 1342, '_menu_item_target', ''),
(88, 1342, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 1342, '_menu_item_xfn', ''),
(90, 1342, '_menu_item_url', ''),
(92, 1343, '_menu_item_type', 'post_type'),
(93, 1343, '_menu_item_menu_item_parent', '1551'),
(94, 1343, '_menu_item_object_id', '1338'),
(95, 1343, '_menu_item_object', 'page'),
(96, 1343, '_menu_item_target', ''),
(97, 1343, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 1343, '_menu_item_xfn', ''),
(99, 1343, '_menu_item_url', ''),
(119, 1342, '_menu_item_image_size', 'menu-36x36'),
(120, 1342, '_menu_item_image_title_position', 'after'),
(121, 1343, '_menu_item_image_size', 'menu-36x36'),
(122, 1343, '_menu_item_image_title_position', 'after'),
(123, 1346, '_wp_attached_file', '2019/02/rent.png'),
(124, 1346, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:86;s:4:\"file\";s:16:\"2019/02/rent.png\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"rent-100x86.png\";s:5:\"width\";i:100;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:14:\"rent-24x16.png\";s:5:\"width\";i:24;s:6:\"height\";i:16;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:14:\"rent-36x24.png\";s:5:\"width\";i:36;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:14:\"rent-48x32.png\";s:5:\"width\";i:48;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 1347, '_edit_last', '1'),
(128, 1347, '_edit_lock', '1554294261:1'),
(129, 1348, '_wp_attached_file', '2019/02/discounts_rent.jpg'),
(130, 1348, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:201;s:4:\"file\";s:26:\"2019/02/discounts_rent.jpg\";s:5:\"sizes\";a:5:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"discounts_rent-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"discounts_rent-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:24:\"discounts_rent-24x19.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:19;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:24:\"discounts_rent-36x28.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:28;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:24:\"discounts_rent-48x38.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:38;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(146, 1359, '_edit_last', '1'),
(147, 1359, '_edit_lock', '1556385321:1'),
(148, 1359, '_wp_page_template', 'page-news.php'),
(149, 1364, '_edit_last', '1'),
(150, 1364, '_edit_lock', '1556643447:1'),
(153, 1366, '_edit_last', '1'),
(154, 1366, '_edit_lock', '1556634331:1'),
(193, 1364, '_wp_page_template', 'page.php'),
(202, 1366, '_wp_page_template', 'page.php'),
(211, 1364, '_wp_old_date', '2019-02-22'),
(214, 5, '_wp_page_template', 'default'),
(217, 1404, '_wp_attached_file', '2019/02/slider_main.jpg'),
(218, 1404, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:683;s:6:\"height\";i:250;s:4:\"file\";s:23:\"2019/02/slider_main.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"slider_main-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"slider_main-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"slider_main-600x220.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"slider_main-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"slider_main-300x110.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:20:\"slider_main-24x9.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:9;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:21:\"slider_main-36x13.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:13;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:21:\"slider_main-48x18.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(227, 1404, '_edit_lock', '1551066535:1'),
(243, 1416, '_edit_last', '1'),
(244, 1416, '_edit_lock', '1556397320:1'),
(245, 1416, '_wp_page_template', 'template-parts/serv1.php'),
(269, 1420, '_edit_last', '1'),
(270, 1420, '_edit_lock', '1555228333:1'),
(271, 1420, '_wp_page_template', 'default'),
(284, 1424, '_wp_attached_file', '2019/02/rent2.png'),
(285, 1424, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:146;s:6:\"height\";i:87;s:4:\"file\";s:17:\"2019/02/rent2.png\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"rent2-100x87.png\";s:5:\"width\";i:100;s:6:\"height\";i:87;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"rent2-24x14.png\";s:5:\"width\";i:24;s:6:\"height\";i:14;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"rent2-36x21.png\";s:5:\"width\";i:36;s:6:\"height\";i:21;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"rent2-48x29.png\";s:5:\"width\";i:48;s:6:\"height\";i:29;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(306, 1428, '_wp_attached_file', '2019/02/spec.jpg'),
(307, 1428, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:100;s:4:\"file\";s:16:\"2019/02/spec.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"spec-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:14:\"spec-24x18.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:14:\"spec-36x28.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:28;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:14:\"spec-48x37.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(356, 1438, '_wp_attached_file', '2019/02/spec2.jpg'),
(357, 1438, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:100;s:4:\"file\";s:17:\"2019/02/spec2.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"spec2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"spec2-24x18.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"spec2-36x28.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:28;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"spec2-48x37.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(359, 1439, '_wp_attached_file', '2019/02/spec3.jpg'),
(360, 1439, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:100;s:4:\"file\";s:17:\"2019/02/spec3.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"spec3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"spec3-24x18.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"spec3-36x28.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:28;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"spec3-48x37.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(362, 1440, '_wp_attached_file', '2019/02/spec4.jpg'),
(363, 1440, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:100;s:4:\"file\";s:17:\"2019/02/spec4.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"spec4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"spec4-24x18.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"spec4-36x28.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:28;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"spec4-48x37.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(367, 1442, '_wp_attached_file', '2019/02/spec5.jpg'),
(368, 1442, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:100;s:4:\"file\";s:17:\"2019/02/spec5.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"spec5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"spec5-24x18.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"spec5-36x28.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:28;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"spec5-48x37.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(376, 1450, '_edit_last', '1'),
(377, 1450, '_edit_lock', '1552257280:1'),
(378, 1450, '_wp_page_template', 'template-parts/confirmation-page_submit.php'),
(379, 1456, '_wc_review_count', '0'),
(380, 1456, '_wc_rating_count', 'a:0:{}'),
(381, 1456, '_wc_average_rating', '0'),
(382, 1456, '_edit_last', '1'),
(383, 1456, '_edit_lock', '1556983120:1'),
(427, 1456, '_thumbnail_id', '1346'),
(428, 1456, '_wp_page_template', 'template-parts/card.php'),
(429, 1456, '_sku', ''),
(432, 1456, '_sale_price_dates_from', ''),
(433, 1456, '_sale_price_dates_to', ''),
(434, 1456, 'total_sales', '0'),
(435, 1456, '_tax_status', 'taxable'),
(436, 1456, '_tax_class', ''),
(437, 1456, '_manage_stock', 'no'),
(438, 1456, '_backorders', 'no'),
(439, 1456, '_low_stock_amount', ''),
(440, 1456, '_sold_individually', 'no'),
(441, 1456, '_weight', ''),
(442, 1456, '_length', ''),
(443, 1456, '_width', ''),
(444, 1456, '_height', ''),
(445, 1456, '_upsell_ids', 'a:0:{}'),
(446, 1456, '_crosssell_ids', 'a:0:{}'),
(447, 1456, '_purchase_note', ''),
(448, 1456, '_default_attributes', 'a:0:{}'),
(449, 1456, '_virtual', 'no'),
(450, 1456, '_downloadable', 'no'),
(451, 1456, '_product_image_gallery', ''),
(452, 1456, '_download_limit', '-1'),
(453, 1456, '_download_expiry', '-1'),
(454, 1456, '_stock', NULL),
(455, 1456, '_stock_status', 'instock'),
(456, 1456, '_product_version', '3.5.7'),
(458, 1456, '_product_attributes', 'a:2:{s:134:\"%d0%bc%d0%b8%d0%bd%d0%b8%d0%bc%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Минимальное время заказа\";s:5:\"value\";s:10:\"3 часа\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:115:\"%d0%bf%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%be-%d0%bc%d0%be%d0%b4%d0%b5%d0%bb%d0%b5%d0%b9\";a:6:{s:4:\"name\";s:39:\"Представлено моделей\";s:5:\"value\";s:1:\"4\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(462, 1460, '_sku', ''),
(465, 1460, '_sale_price_dates_from', ''),
(466, 1460, '_sale_price_dates_to', ''),
(467, 1460, 'total_sales', '0'),
(468, 1460, '_tax_status', 'taxable'),
(469, 1460, '_tax_class', ''),
(470, 1460, '_manage_stock', 'no'),
(471, 1460, '_backorders', 'no'),
(472, 1460, '_low_stock_amount', ''),
(473, 1460, '_sold_individually', 'no'),
(474, 1460, '_weight', ''),
(475, 1460, '_length', ''),
(476, 1460, '_width', ''),
(477, 1460, '_height', ''),
(478, 1460, '_upsell_ids', 'a:0:{}'),
(479, 1460, '_crosssell_ids', 'a:0:{}'),
(480, 1460, '_purchase_note', ''),
(481, 1460, '_default_attributes', 'a:0:{}'),
(482, 1460, '_virtual', 'no'),
(483, 1460, '_downloadable', 'no'),
(484, 1460, '_product_image_gallery', ''),
(485, 1460, '_download_limit', '-1'),
(486, 1460, '_download_expiry', '-1'),
(487, 1460, '_thumbnail_id', '1424'),
(488, 1460, '_stock', NULL),
(489, 1460, '_stock_status', 'instock'),
(490, 1460, '_wc_average_rating', '0'),
(491, 1460, '_wc_rating_count', 'a:0:{}'),
(492, 1460, '_wc_review_count', '0'),
(493, 1460, '_downloadable_files', 'a:0:{}'),
(494, 1460, '_product_attributes', 'a:2:{s:134:\"%d0%bc%d0%b8%d0%bd%d0%b8%d0%bc%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Минимальное время заказа\";s:5:\"value\";s:10:\"2 часа\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:115:\"%d0%bf%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%be-%d0%bc%d0%be%d0%b4%d0%b5%d0%bb%d0%b5%d0%b9\";a:6:{s:4:\"name\";s:39:\"Представлено моделей\";s:5:\"value\";s:1:\"3\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(495, 1460, '_product_version', '3.5.7'),
(497, 1460, '_wp_page_template', 'template-parts/card.php'),
(498, 1460, '_edit_lock', '1556983136:1'),
(499, 1460, '_edit_last', '1'),
(500, 1460, '_wp_old_slug', '%d0%ba%d1%80%d0%b0%d0%bd%d1%8b-%d0%bc%d0%b0%d0%bd%d0%b8%d0%bf%d1%83%d0%bb%d1%8f%d1%82%d0%be%d1%80%d1%8b-copy'),
(501, 1456, '_wp_old_date', '2019-03-10'),
(502, 1462, '_sku', ''),
(503, 1462, '_regular_price', '1200'),
(504, 1462, '_sale_price', ''),
(505, 1462, '_sale_price_dates_from', ''),
(506, 1462, '_sale_price_dates_to', ''),
(507, 1462, 'total_sales', '0'),
(508, 1462, '_tax_status', 'taxable'),
(509, 1462, '_tax_class', ''),
(510, 1462, '_manage_stock', 'no'),
(511, 1462, '_backorders', 'no'),
(512, 1462, '_low_stock_amount', ''),
(513, 1462, '_sold_individually', 'no'),
(514, 1462, '_weight', ''),
(515, 1462, '_length', ''),
(516, 1462, '_width', ''),
(517, 1462, '_height', ''),
(518, 1462, '_upsell_ids', 'a:0:{}'),
(519, 1462, '_crosssell_ids', 'a:0:{}'),
(520, 1462, '_purchase_note', ''),
(521, 1462, '_default_attributes', 'a:0:{}'),
(522, 1462, '_virtual', 'no'),
(523, 1462, '_downloadable', 'no'),
(524, 1462, '_product_image_gallery', ''),
(525, 1462, '_download_limit', '-1'),
(526, 1462, '_download_expiry', '-1'),
(527, 1462, '_thumbnail_id', '1424'),
(528, 1462, '_stock', NULL),
(529, 1462, '_stock_status', 'instock'),
(530, 1462, '_wc_average_rating', '0'),
(531, 1462, '_wc_rating_count', 'a:0:{}'),
(532, 1462, '_wc_review_count', '0'),
(533, 1462, '_downloadable_files', 'a:0:{}'),
(534, 1462, '_product_attributes', 'a:3:{s:134:\"%d0%bc%d0%b8%d0%bd%d0%b8%d0%bc%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Минимальное время заказа\";s:5:\"value\";s:10:\"2 часа\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:115:\"%d0%bf%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%be-%d0%bc%d0%be%d0%b4%d0%b5%d0%bb%d0%b5%d0%b9\";a:6:{s:4:\"name\";s:39:\"Представлено моделей\";s:5:\"value\";s:1:\"3\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:36:\"%d1%81%d0%ba%d0%b8%d0%b4%d0%ba%d0%b0\";a:6:{s:4:\"name\";s:12:\"скидка\";s:5:\"value\";s:4:\"true\";s:8:\"position\";i:2;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(535, 1462, '_product_version', '3.5.5'),
(536, 1462, '_price', '1200'),
(537, 1462, '_wp_page_template', 'default'),
(538, 1462, '_edit_lock', '1554017489:1'),
(539, 1462, '_edit_last', '1'),
(540, 1462, '_wp_old_slug', '%d1%8d%d1%81%d0%ba%d0%b0%d0%b2%d0%b0%d1%82%d0%be%d1%80%d1%8b-%d0%bf%d0%be%d0%b3%d1%80%d1%83%d0%b7%d1%87%d0%b8%d0%ba%d0%b8-1'),
(541, 1460, '_wp_old_date', '2019-03-10'),
(542, 1463, '_sku', ''),
(543, 1463, '_regular_price', '750'),
(544, 1463, '_sale_price', ''),
(545, 1463, '_sale_price_dates_from', ''),
(546, 1463, '_sale_price_dates_to', ''),
(547, 1463, 'total_sales', '0'),
(548, 1463, '_tax_status', 'taxable'),
(549, 1463, '_tax_class', ''),
(550, 1463, '_manage_stock', 'no'),
(551, 1463, '_backorders', 'no'),
(552, 1463, '_low_stock_amount', ''),
(553, 1463, '_sold_individually', 'no'),
(554, 1463, '_weight', ''),
(555, 1463, '_length', ''),
(556, 1463, '_width', ''),
(557, 1463, '_height', ''),
(558, 1463, '_upsell_ids', 'a:0:{}'),
(559, 1463, '_crosssell_ids', 'a:0:{}'),
(560, 1463, '_purchase_note', ''),
(561, 1463, '_default_attributes', 'a:0:{}'),
(562, 1463, '_virtual', 'no'),
(563, 1463, '_downloadable', 'no'),
(564, 1463, '_product_image_gallery', ''),
(565, 1463, '_download_limit', '-1'),
(566, 1463, '_download_expiry', '-1'),
(567, 1463, '_thumbnail_id', '1464'),
(568, 1463, '_stock', NULL),
(569, 1463, '_stock_status', 'instock'),
(570, 1463, '_wc_average_rating', '0'),
(571, 1463, '_wc_rating_count', 'a:0:{}'),
(572, 1463, '_wc_review_count', '0'),
(573, 1463, '_downloadable_files', 'a:0:{}'),
(574, 1463, '_product_attributes', 'a:2:{s:134:\"%d0%bc%d0%b8%d0%bd%d0%b8%d0%bc%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Минимальное время заказа\";s:5:\"value\";s:10:\"2 часа\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:115:\"%d0%bf%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%be-%d0%bc%d0%be%d0%b4%d0%b5%d0%bb%d0%b5%d0%b9\";a:6:{s:4:\"name\";s:39:\"Представлено моделей\";s:5:\"value\";s:1:\"3\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(575, 1463, '_product_version', '3.5.7'),
(576, 1463, '_price', '750'),
(577, 1463, '_wp_page_template', 'template-parts/card.php'),
(578, 1463, '_wp_old_date', '2019-03-10'),
(579, 1463, '_edit_lock', '1557001459:1'),
(580, 1463, '_edit_last', '1'),
(581, 1464, '_wp_attached_file', '2019/03/rent3.png'),
(582, 1464, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:92;s:4:\"file\";s:17:\"2019/03/rent3.png\";s:5:\"sizes\";a:5:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"rent3-24x17.png\";s:5:\"width\";i:24;s:6:\"height\";i:17;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"rent3-36x25.png\";s:5:\"width\";i:36;s:6:\"height\";i:25;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"rent3-48x34.png\";s:5:\"width\";i:48;s:6:\"height\";i:34;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"rent3-100x92.png\";s:5:\"width\";i:100;s:6:\"height\";i:92;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"rent3-100x92.png\";s:5:\"width\";i:100;s:6:\"height\";i:92;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(583, 1465, '_sku', ''),
(584, 1465, '_regular_price', '1200'),
(585, 1465, '_sale_price', ''),
(586, 1465, '_sale_price_dates_from', ''),
(587, 1465, '_sale_price_dates_to', ''),
(588, 1465, 'total_sales', '0'),
(589, 1465, '_tax_status', 'taxable'),
(590, 1465, '_tax_class', ''),
(591, 1465, '_manage_stock', 'no'),
(592, 1465, '_backorders', 'no'),
(593, 1465, '_low_stock_amount', ''),
(594, 1465, '_sold_individually', 'no'),
(595, 1465, '_weight', ''),
(596, 1465, '_length', ''),
(597, 1465, '_width', ''),
(598, 1465, '_height', ''),
(599, 1465, '_upsell_ids', 'a:0:{}'),
(600, 1465, '_crosssell_ids', 'a:0:{}'),
(601, 1465, '_purchase_note', ''),
(602, 1465, '_default_attributes', 'a:0:{}'),
(603, 1465, '_virtual', 'no'),
(604, 1465, '_downloadable', 'no'),
(605, 1465, '_product_image_gallery', ''),
(606, 1465, '_download_limit', '-1'),
(607, 1465, '_download_expiry', '-1'),
(608, 1465, '_thumbnail_id', '1466'),
(609, 1465, '_stock', NULL),
(610, 1465, '_stock_status', 'instock'),
(611, 1465, '_wc_average_rating', '0'),
(612, 1465, '_wc_rating_count', 'a:0:{}'),
(613, 1465, '_wc_review_count', '0'),
(614, 1465, '_downloadable_files', 'a:0:{}'),
(615, 1465, '_product_attributes', 'a:2:{s:134:\"%d0%bc%d0%b8%d0%bd%d0%b8%d0%bc%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Минимальное время заказа\";s:5:\"value\";s:10:\"2 часа\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:115:\"%d0%bf%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%be-%d0%bc%d0%be%d0%b4%d0%b5%d0%bb%d0%b5%d0%b9\";a:6:{s:4:\"name\";s:39:\"Представлено моделей\";s:5:\"value\";s:1:\"3\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(616, 1465, '_product_version', '3.5.7'),
(617, 1465, '_price', '1200'),
(618, 1465, '_wp_page_template', 'template-parts/card.php'),
(619, 1465, '_wp_old_date', '2019-03-10'),
(620, 1465, '_edit_lock', '1556983171:1'),
(621, 1466, '_wp_attached_file', '2019/03/rent4.png'),
(622, 1466, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:90;s:4:\"file\";s:17:\"2019/03/rent4.png\";s:5:\"sizes\";a:5:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"rent4-24x17.png\";s:5:\"width\";i:24;s:6:\"height\";i:17;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"rent4-36x25.png\";s:5:\"width\";i:36;s:6:\"height\";i:25;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"rent4-48x33.png\";s:5:\"width\";i:48;s:6:\"height\";i:33;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"rent4-100x90.png\";s:5:\"width\";i:100;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"rent4-100x90.png\";s:5:\"width\";i:100;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(623, 1465, '_edit_last', '1'),
(624, 1467, '_sku', ''),
(627, 1467, '_sale_price_dates_from', ''),
(628, 1467, '_sale_price_dates_to', ''),
(629, 1467, 'total_sales', '0'),
(630, 1467, '_tax_status', 'taxable'),
(631, 1467, '_tax_class', ''),
(632, 1467, '_manage_stock', 'no'),
(633, 1467, '_backorders', 'no'),
(634, 1467, '_low_stock_amount', ''),
(635, 1467, '_sold_individually', 'no'),
(636, 1467, '_weight', ''),
(637, 1467, '_length', ''),
(638, 1467, '_width', ''),
(639, 1467, '_height', ''),
(640, 1467, '_upsell_ids', 'a:0:{}'),
(641, 1467, '_crosssell_ids', 'a:0:{}'),
(642, 1467, '_purchase_note', ''),
(643, 1467, '_default_attributes', 'a:0:{}'),
(644, 1467, '_virtual', 'no'),
(645, 1467, '_downloadable', 'no'),
(646, 1467, '_product_image_gallery', ''),
(647, 1467, '_download_limit', '-1'),
(648, 1467, '_download_expiry', '-1'),
(649, 1467, '_thumbnail_id', '1468'),
(650, 1467, '_stock', NULL),
(651, 1467, '_stock_status', 'instock'),
(652, 1467, '_wc_average_rating', '0'),
(653, 1467, '_wc_rating_count', 'a:0:{}'),
(654, 1467, '_wc_review_count', '0'),
(655, 1467, '_downloadable_files', 'a:0:{}'),
(656, 1467, '_product_attributes', 'a:3:{s:134:\"%d0%bc%d0%b8%d0%bd%d0%b8%d0%bc%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Минимальное время заказа\";s:5:\"value\";s:10:\"2 часа\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:115:\"%d0%bf%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%be-%d0%bc%d0%be%d0%b4%d0%b5%d0%bb%d0%b5%d0%b9\";a:6:{s:4:\"name\";s:39:\"Представлено моделей\";s:5:\"value\";s:1:\"3\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:42:\"%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba%d0%b0\";a:6:{s:4:\"name\";s:14:\"Метрика\";s:5:\"value\";s:6:\"р/м3\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(657, 1467, '_product_version', '3.5.7'),
(659, 1467, '_wp_page_template', 'template-parts/card.php'),
(660, 1467, '_wp_old_date', '2019-03-10'),
(661, 1467, '_edit_lock', '1556983192:1'),
(662, 1468, '_wp_attached_file', '2019/03/rent5.png'),
(663, 1468, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:88;s:4:\"file\";s:17:\"2019/03/rent5.png\";s:5:\"sizes\";a:5:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"rent5-24x16.png\";s:5:\"width\";i:24;s:6:\"height\";i:16;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"rent5-36x24.png\";s:5:\"width\";i:36;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"rent5-48x32.png\";s:5:\"width\";i:48;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"rent5-100x88.png\";s:5:\"width\";i:100;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"rent5-100x88.png\";s:5:\"width\";i:100;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(664, 1467, '_edit_last', '1'),
(665, 1460, '_children', 'a:0:{}'),
(668, 1467, '_children', 'a:0:{}'),
(669, 1467, '_regular_price', '1200'),
(670, 1467, '_sale_price', ''),
(671, 1456, '_children', 'a:0:{}'),
(672, 1456, '_regular_price', '1200'),
(673, 1456, '_sale_price', ''),
(678, 1460, '_regular_price', '1200'),
(679, 1460, '_sale_price', ''),
(680, 1469, '_sku', ''),
(681, 1469, '_regular_price', '1000'),
(682, 1469, '_sale_price', ''),
(683, 1469, '_sale_price_dates_from', ''),
(684, 1469, '_sale_price_dates_to', ''),
(685, 1469, 'total_sales', '0'),
(686, 1469, '_tax_status', 'taxable'),
(687, 1469, '_tax_class', ''),
(688, 1469, '_manage_stock', 'no'),
(689, 1469, '_backorders', 'no'),
(690, 1469, '_low_stock_amount', ''),
(691, 1469, '_sold_individually', 'no'),
(692, 1469, '_weight', ''),
(693, 1469, '_length', ''),
(694, 1469, '_width', ''),
(695, 1469, '_height', ''),
(696, 1469, '_upsell_ids', 'a:0:{}'),
(697, 1469, '_crosssell_ids', 'a:0:{}'),
(698, 1469, '_purchase_note', ''),
(699, 1469, '_default_attributes', 'a:0:{}'),
(700, 1469, '_virtual', 'no'),
(701, 1469, '_downloadable', 'no'),
(702, 1469, '_product_image_gallery', ''),
(703, 1469, '_download_limit', '-1'),
(704, 1469, '_download_expiry', '-1'),
(705, 1469, '_thumbnail_id', '1474'),
(706, 1469, '_stock', NULL),
(707, 1469, '_stock_status', 'instock'),
(708, 1469, '_wc_average_rating', '0'),
(709, 1469, '_wc_rating_count', 'a:0:{}'),
(710, 1469, '_wc_review_count', '0'),
(711, 1469, '_downloadable_files', 'a:0:{}'),
(712, 1469, '_product_attributes', 'a:4:{s:134:\"%d0%bc%d0%b8%d0%bd%d0%b8%d0%bc%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Минимальное время заказа\";s:5:\"value\";s:12:\"1.5 часа\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:134:\"%d0%be%d0%b1%d1%8a%d0%b5%d0%bc-%d0%bf%d0%b5%d1%80%d0%b5%d0%b2%d0%be%d0%b7%d0%b8%d0%bc%d0%be%d0%b3%d0%be-%d0%b3%d1%80%d1%83%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Объем перевозимого груза\";s:5:\"value\";s:7:\"3.5 м3\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:96:\"%d0%b3%d1%80%d1%83%d0%b7%d0%be%d0%bf%d0%be%d0%b4%d1%8a%d0%b5%d0%bc%d0%bd%d0%be%d1%81%d1%82%d1%8c\";a:6:{s:4:\"name\";s:32:\"Грузоподъемность\";s:5:\"value\";s:4:\"6 т\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:60:\"%d0%ba%d0%be%d0%bb%d0%b8%d1%87%d0%b5%d1%81%d1%82%d0%b2%d0%be\";a:6:{s:4:\"name\";s:20:\"Количество\";s:5:\"value\";s:7:\"6 шт.\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(713, 1469, '_product_version', '3.5.5'),
(714, 1469, '_price', '1000'),
(715, 1469, '_wp_page_template', 'default'),
(716, 1469, '_edit_lock', '1553930029:1'),
(717, 1469, '_edit_last', '1'),
(718, 1469, '_wp_old_slug', '%d1%81%d0%b0%d0%bc%d0%be%d1%81%d0%b2%d0%b0%d0%bb%d1%8b-%d0%bd%d0%b0-%d0%b1%d0%b0%d0%b7%d0%b5-%d0%b0%d0%b2%d1%82%d0%be-%d0%b3%d0%b0%d0%b7'),
(719, 1470, '_sku', ''),
(720, 1470, '_regular_price', '1200'),
(721, 1470, '_sale_price', ''),
(722, 1470, '_sale_price_dates_from', ''),
(723, 1470, '_sale_price_dates_to', ''),
(724, 1470, 'total_sales', '0'),
(725, 1470, '_tax_status', 'taxable'),
(726, 1470, '_tax_class', ''),
(727, 1470, '_manage_stock', 'no'),
(728, 1470, '_backorders', 'no'),
(729, 1470, '_low_stock_amount', ''),
(730, 1470, '_sold_individually', 'no'),
(731, 1470, '_weight', ''),
(732, 1470, '_length', ''),
(733, 1470, '_width', ''),
(734, 1470, '_height', ''),
(735, 1470, '_upsell_ids', 'a:0:{}'),
(736, 1470, '_crosssell_ids', 'a:0:{}'),
(737, 1470, '_purchase_note', ''),
(738, 1470, '_default_attributes', 'a:0:{}'),
(739, 1470, '_virtual', 'no'),
(740, 1470, '_downloadable', 'no'),
(741, 1470, '_product_image_gallery', ''),
(742, 1470, '_download_limit', '-1'),
(743, 1470, '_download_expiry', '-1'),
(744, 1470, '_thumbnail_id', '1473'),
(745, 1470, '_stock', NULL),
(746, 1470, '_stock_status', 'instock'),
(747, 1470, '_wc_average_rating', '0'),
(748, 1470, '_wc_rating_count', 'a:0:{}'),
(749, 1470, '_wc_review_count', '0'),
(750, 1470, '_downloadable_files', 'a:0:{}'),
(751, 1470, '_product_attributes', 'a:4:{s:134:\"%d0%bc%d0%b8%d0%bd%d0%b8%d0%bc%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Минимальное время заказа\";s:5:\"value\";s:12:\"1.5 часа\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:134:\"%d0%be%d0%b1%d1%8a%d0%b5%d0%bc-%d0%bf%d0%b5%d1%80%d0%b5%d0%b2%d0%be%d0%b7%d0%b8%d0%bc%d0%be%d0%b3%d0%be-%d0%b3%d1%80%d1%83%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Объем перевозимого груза\";s:5:\"value\";s:7:\"3,5 м3\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:96:\"%d0%b3%d1%80%d1%83%d0%b7%d0%be%d0%bf%d0%be%d0%b4%d1%8a%d0%b5%d0%bc%d0%bd%d0%be%d1%81%d1%82%d1%8c\";a:6:{s:4:\"name\";s:32:\"Грузоподъемность\";s:5:\"value\";s:4:\"6 т\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:60:\"%d0%ba%d0%be%d0%bb%d0%b8%d1%87%d0%b5%d1%81%d1%82%d0%b2%d0%be\";a:6:{s:4:\"name\";s:20:\"Количество\";s:5:\"value\";s:7:\"6 шт.\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(752, 1470, '_product_version', '3.5.5'),
(753, 1470, '_price', '1200'),
(754, 1470, '_wp_page_template', 'default'),
(755, 1470, '_edit_lock', '1554018884:1'),
(756, 1470, '_edit_last', '1'),
(761, 1473, '_wp_attached_file', '2019/03/dump2.jpg'),
(762, 1473, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:102;s:4:\"file\";s:17:\"2019/03/dump2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"dump2-150x102.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"dump2-24x15.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:15;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"dump2-36x23.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:23;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"dump2-48x31.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:31;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"dump2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"dump2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(763, 1474, '_wp_attached_file', '2019/03/dump.jpg'),
(764, 1474, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:192;s:6:\"height\";i:143;s:4:\"file\";s:16:\"2019/03/dump.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"dump-150x143.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:14:\"dump-24x18.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:14:\"dump-36x27.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:27;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:14:\"dump-48x36.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"dump-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"dump-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(765, 1475, '_sku', ''),
(766, 1475, '_regular_price', '1400'),
(767, 1475, '_sale_price', ''),
(768, 1475, '_sale_price_dates_from', ''),
(769, 1475, '_sale_price_dates_to', ''),
(770, 1475, 'total_sales', '0'),
(771, 1475, '_tax_status', 'taxable'),
(772, 1475, '_tax_class', ''),
(773, 1475, '_manage_stock', 'no'),
(774, 1475, '_backorders', 'no'),
(775, 1475, '_low_stock_amount', ''),
(776, 1475, '_sold_individually', 'no'),
(777, 1475, '_weight', ''),
(778, 1475, '_length', ''),
(779, 1475, '_width', ''),
(780, 1475, '_height', ''),
(781, 1475, '_upsell_ids', 'a:0:{}'),
(782, 1475, '_crosssell_ids', 'a:0:{}'),
(783, 1475, '_purchase_note', ''),
(784, 1475, '_default_attributes', 'a:0:{}'),
(785, 1475, '_virtual', 'no'),
(786, 1475, '_downloadable', 'no'),
(787, 1475, '_product_image_gallery', ''),
(788, 1475, '_download_limit', '-1'),
(789, 1475, '_download_expiry', '-1'),
(790, 1475, '_thumbnail_id', '1474'),
(791, 1475, '_stock', NULL),
(792, 1475, '_stock_status', 'instock'),
(793, 1475, '_wc_average_rating', '0'),
(794, 1475, '_wc_rating_count', 'a:0:{}'),
(795, 1475, '_wc_review_count', '0'),
(796, 1475, '_downloadable_files', 'a:0:{}'),
(797, 1475, '_product_attributes', 'a:2:{s:134:\"%d0%bc%d0%b8%d0%bd%d0%b8%d0%bc%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7%d0%b0\";a:6:{s:4:\"name\";s:46:\"Минимальное время заказа\";s:5:\"value\";s:10:\"2 часа\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:115:\"%d0%bf%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%be-%d0%bc%d0%be%d0%b4%d0%b5%d0%bb%d0%b5%d0%b9\";a:6:{s:4:\"name\";s:39:\"Представлено моделей\";s:5:\"value\";s:1:\"3\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(798, 1475, '_product_version', '3.5.5'),
(799, 1475, '_price', '1400'),
(800, 1475, '_wp_page_template', 'template-parts/card.php'),
(801, 1475, '_edit_lock', '1556481448:1'),
(802, 1475, '_edit_last', '1'),
(803, 1475, '_wp_old_slug', '%d1%81%d0%b0%d0%bc%d0%be%d1%81%d0%b2%d0%b0%d0%bb%d1%8b-%d0%ba%d0%b8%d1%82%d0%b0%d0%b9%d1%86%d1%8b'),
(845, 1460, '_price', '1200'),
(846, 1467, '_price', '1200'),
(847, 1456, '_price', '1200'),
(884, 1481, '_menu_item_type', 'post_type'),
(885, 1481, '_menu_item_menu_item_parent', '1512'),
(886, 1481, '_menu_item_object_id', '1467'),
(887, 1481, '_menu_item_object', 'product'),
(888, 1481, '_menu_item_target', ''),
(889, 1481, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(890, 1481, '_menu_item_xfn', ''),
(891, 1481, '_menu_item_url', ''),
(893, 1482, '_menu_item_type', 'post_type'),
(894, 1482, '_menu_item_menu_item_parent', '1512'),
(895, 1482, '_menu_item_object_id', '1465'),
(896, 1482, '_menu_item_object', 'product'),
(897, 1482, '_menu_item_target', ''),
(898, 1482, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(899, 1482, '_menu_item_xfn', ''),
(900, 1482, '_menu_item_url', ''),
(902, 1483, '_menu_item_type', 'post_type'),
(903, 1483, '_menu_item_menu_item_parent', '1512'),
(904, 1483, '_menu_item_object_id', '1463'),
(905, 1483, '_menu_item_object', 'product'),
(906, 1483, '_menu_item_target', ''),
(907, 1483, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(908, 1483, '_menu_item_xfn', ''),
(909, 1483, '_menu_item_url', ''),
(911, 1484, '_menu_item_type', 'post_type'),
(912, 1484, '_menu_item_menu_item_parent', '1512'),
(913, 1484, '_menu_item_object_id', '1456'),
(914, 1484, '_menu_item_object', 'product'),
(915, 1484, '_menu_item_target', ''),
(916, 1484, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(917, 1484, '_menu_item_xfn', ''),
(918, 1484, '_menu_item_url', ''),
(920, 1485, '_menu_item_type', 'post_type'),
(921, 1485, '_menu_item_menu_item_parent', '1512'),
(922, 1485, '_menu_item_object_id', '1460'),
(923, 1485, '_menu_item_object', 'product'),
(924, 1485, '_menu_item_target', ''),
(925, 1485, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(926, 1485, '_menu_item_xfn', ''),
(927, 1485, '_menu_item_url', ''),
(929, 1484, '_menu_item_image_size', 'menu-36x36'),
(930, 1484, '_menu_item_image_title_position', 'after'),
(931, 1485, '_menu_item_image_size', 'menu-36x36'),
(932, 1485, '_menu_item_image_title_position', 'after'),
(933, 1483, '_menu_item_image_size', 'menu-36x36'),
(934, 1483, '_menu_item_image_title_position', 'after'),
(935, 1482, '_menu_item_image_size', 'menu-36x36'),
(936, 1482, '_menu_item_image_title_position', 'after'),
(937, 1481, '_menu_item_image_size', 'menu-36x36'),
(938, 1481, '_menu_item_image_title_position', 'after'),
(939, 1484, '_thumbnail_id', '1346'),
(940, 1485, '_thumbnail_id', '1424'),
(941, 1483, '_thumbnail_id', '1464'),
(942, 1482, '_thumbnail_id', '1466'),
(944, 1481, '_thumbnail_id', '1468'),
(945, 1420, '_yoast_wpseo_content_score', '30'),
(958, 1463, '_yoast_wpseo_primary_product_cat', '23'),
(959, 1463, '_yoast_wpseo_content_score', '30'),
(960, 1467, '_yoast_wpseo_primary_product_cat', '27'),
(961, 1467, '_yoast_wpseo_content_score', '30'),
(962, 1465, '_yoast_wpseo_primary_product_cat', '27'),
(963, 1465, '_yoast_wpseo_content_score', '30'),
(964, 1456, '_yoast_wpseo_primary_product_cat', '19'),
(965, 1456, '_yoast_wpseo_content_score', '30'),
(966, 1460, '_yoast_wpseo_primary_product_cat', '19'),
(967, 1460, '_yoast_wpseo_content_score', '30'),
(968, 1487, '_edit_last', '1'),
(969, 1487, '_edit_lock', '1556093067:1'),
(970, 1487, '_wp_page_template', 'default'),
(971, 1487, '_yoast_wpseo_content_score', '30'),
(972, 1416, '_yoast_wpseo_content_score', '30'),
(995, 1338, '_yoast_wpseo_content_score', '30'),
(996, 1340, '_yoast_wpseo_content_score', '30'),
(997, 1491, '_menu_item_type', 'post_type'),
(998, 1491, '_menu_item_menu_item_parent', '0'),
(999, 1491, '_menu_item_object_id', '1460'),
(1000, 1491, '_menu_item_object', 'product'),
(1001, 1491, '_menu_item_target', ''),
(1002, 1491, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1003, 1491, '_menu_item_xfn', ''),
(1004, 1491, '_menu_item_url', ''),
(1006, 1491, '_thumbnail_id', '1438'),
(1007, 1491, '_menu_item_image_size', 'medium'),
(1008, 1491, '_menu_item_image_title_position', 'after'),
(1009, 1492, '_menu_item_type', 'post_type'),
(1010, 1492, '_menu_item_menu_item_parent', '0'),
(1011, 1492, '_menu_item_object_id', '1467'),
(1012, 1492, '_menu_item_object', 'product'),
(1013, 1492, '_menu_item_target', ''),
(1014, 1492, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1015, 1492, '_menu_item_xfn', ''),
(1016, 1492, '_menu_item_url', ''),
(1018, 1493, '_menu_item_type', 'post_type'),
(1019, 1493, '_menu_item_menu_item_parent', '0'),
(1020, 1493, '_menu_item_object_id', '1465'),
(1021, 1493, '_menu_item_object', 'product'),
(1022, 1493, '_menu_item_target', ''),
(1023, 1493, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1024, 1493, '_menu_item_xfn', ''),
(1025, 1493, '_menu_item_url', ''),
(1027, 1494, '_menu_item_type', 'post_type'),
(1028, 1494, '_menu_item_menu_item_parent', '0'),
(1029, 1494, '_menu_item_object_id', '1463'),
(1030, 1494, '_menu_item_object', 'product'),
(1031, 1494, '_menu_item_target', ''),
(1032, 1494, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1033, 1494, '_menu_item_xfn', ''),
(1034, 1494, '_menu_item_url', ''),
(1036, 1495, '_menu_item_type', 'post_type'),
(1037, 1495, '_menu_item_menu_item_parent', '0'),
(1038, 1495, '_menu_item_object_id', '1456'),
(1039, 1495, '_menu_item_object', 'product'),
(1040, 1495, '_menu_item_target', ''),
(1041, 1495, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1042, 1495, '_menu_item_xfn', ''),
(1043, 1495, '_menu_item_url', ''),
(1045, 1492, '_thumbnail_id', '1442'),
(1046, 1493, '_thumbnail_id', '1440'),
(1047, 1494, '_thumbnail_id', '1439'),
(1048, 1495, '_thumbnail_id', '1428'),
(1049, 1492, '_menu_item_image_size', 'medium'),
(1050, 1492, '_menu_item_image_title_position', 'after'),
(1051, 1493, '_menu_item_image_size', 'medium'),
(1052, 1493, '_menu_item_image_title_position', 'after'),
(1053, 1494, '_menu_item_image_size', 'medium'),
(1054, 1494, '_menu_item_image_title_position', 'after'),
(1055, 1495, '_menu_item_image_size', 'medium'),
(1056, 1495, '_menu_item_image_title_position', 'after'),
(1057, 1496, '_edit_last', '1'),
(1058, 1496, '_edit_lock', '1556359242:1'),
(1059, 1496, '_wp_page_template', 'template-parts/sitemap.php'),
(1060, 1496, '_yoast_wpseo_content_score', '30'),
(1081, 1512, '_menu_item_type', 'post_type'),
(1082, 1512, '_menu_item_menu_item_parent', '1551'),
(1083, 1512, '_menu_item_object_id', '1416'),
(1084, 1512, '_menu_item_object', 'page'),
(1085, 1512, '_menu_item_target', ''),
(1086, 1512, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1087, 1512, '_menu_item_xfn', ''),
(1088, 1512, '_menu_item_url', ''),
(1090, 1512, '_menu_item_image_size', 'menu-36x36'),
(1091, 1512, '_menu_item_image_title_position', 'after'),
(1092, 1513, '_wc_review_count', '0'),
(1093, 1513, '_wc_rating_count', 'a:0:{}'),
(1094, 1513, '_wc_average_rating', '0'),
(1095, 1513, '_edit_last', '1'),
(1096, 1513, '_edit_lock', '1554747582:1'),
(1097, 1513, '_wp_page_template', 'template-parts/serv1.php'),
(1098, 1513, '_sku', ''),
(1101, 1513, '_sale_price_dates_from', ''),
(1102, 1513, '_sale_price_dates_to', ''),
(1103, 1513, 'total_sales', '0'),
(1104, 1513, '_tax_status', 'taxable'),
(1105, 1513, '_tax_class', ''),
(1106, 1513, '_manage_stock', 'no'),
(1107, 1513, '_backorders', 'no'),
(1108, 1513, '_low_stock_amount', ''),
(1109, 1513, '_sold_individually', 'no'),
(1110, 1513, '_weight', ''),
(1111, 1513, '_length', ''),
(1112, 1513, '_width', ''),
(1113, 1513, '_height', ''),
(1114, 1513, '_upsell_ids', 'a:0:{}'),
(1115, 1513, '_crosssell_ids', 'a:0:{}'),
(1116, 1513, '_purchase_note', ''),
(1117, 1513, '_default_attributes', 'a:0:{}'),
(1118, 1513, '_virtual', 'no'),
(1119, 1513, '_downloadable', 'no'),
(1120, 1513, '_product_image_gallery', ''),
(1121, 1513, '_download_limit', '-1'),
(1122, 1513, '_download_expiry', '-1'),
(1123, 1513, '_stock', NULL),
(1124, 1513, '_stock_status', 'instock'),
(1125, 1513, '_product_version', '3.5.7'),
(1127, 1513, '_yoast_wpseo_primary_product_cat', '27'),
(1128, 1513, '_yoast_wpseo_content_score', '30');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1129, 1513, '_wp_old_slug', '%d0%b0%d1%80%d0%b5%d0%bd%d0%b4%d0%b0-%d1%81%d0%bf%d0%b5%d1%86%d1%82%d0%b5%d1%85%d0%bd%d0%b8%d0%ba%d0%b8'),
(1141, 1513, '_children', 'a:2:{i:0;i:1456;i:1;i:1460;}'),
(1146, 1513, '_price', ''),
(1147, 1513, '_price', ''),
(1148, 1513, '_regular_price', ''),
(1149, 1513, '_sale_price', ''),
(1150, 1513, '_wp_trash_meta_status', 'publish'),
(1151, 1513, '_wp_trash_meta_time', '1554798322'),
(1152, 1513, '_wp_desired_post_slug', 'technic-rent'),
(1175, 1519, '_edit_last', '1'),
(1176, 1519, '_edit_lock', '1554803036:1'),
(1177, 1519, '_wp_page_template', 'index.php'),
(1178, 1519, '_yoast_wpseo_content_score', '30'),
(1179, 1519, '_wp_trash_meta_status', 'publish'),
(1180, 1519, '_wp_trash_meta_time', '1554803186'),
(1181, 1519, '_wp_desired_post_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f'),
(1191, 1522, '_menu_item_type', 'post_type'),
(1192, 1522, '_menu_item_menu_item_parent', '1563'),
(1193, 1522, '_menu_item_object_id', '1487'),
(1194, 1522, '_menu_item_object', 'page'),
(1195, 1522, '_menu_item_target', ''),
(1196, 1522, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1197, 1522, '_menu_item_xfn', ''),
(1198, 1522, '_menu_item_url', ''),
(1200, 1523, '_menu_item_type', 'post_type'),
(1201, 1523, '_menu_item_menu_item_parent', '1522'),
(1202, 1523, '_menu_item_object_id', '1416'),
(1203, 1523, '_menu_item_object', 'page'),
(1204, 1523, '_menu_item_target', ''),
(1205, 1523, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1206, 1523, '_menu_item_xfn', ''),
(1207, 1523, '_menu_item_url', ''),
(1209, 1524, '_menu_item_type', 'post_type'),
(1210, 1524, '_menu_item_menu_item_parent', '1522'),
(1211, 1524, '_menu_item_object_id', '1340'),
(1212, 1524, '_menu_item_object', 'page'),
(1213, 1524, '_menu_item_target', ''),
(1214, 1524, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1215, 1524, '_menu_item_xfn', ''),
(1216, 1524, '_menu_item_url', ''),
(1218, 1525, '_menu_item_type', 'post_type'),
(1219, 1525, '_menu_item_menu_item_parent', '1522'),
(1220, 1525, '_menu_item_object_id', '1338'),
(1221, 1525, '_menu_item_object', 'page'),
(1222, 1525, '_menu_item_target', ''),
(1223, 1525, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1224, 1525, '_menu_item_xfn', ''),
(1225, 1525, '_menu_item_url', ''),
(1227, 1526, '_menu_item_type', 'post_type'),
(1228, 1526, '_menu_item_menu_item_parent', '1523'),
(1229, 1526, '_menu_item_object_id', '1467'),
(1230, 1526, '_menu_item_object', 'product'),
(1231, 1526, '_menu_item_target', ''),
(1232, 1526, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1233, 1526, '_menu_item_xfn', ''),
(1234, 1526, '_menu_item_url', ''),
(1236, 1527, '_menu_item_type', 'post_type'),
(1237, 1527, '_menu_item_menu_item_parent', '1523'),
(1238, 1527, '_menu_item_object_id', '1465'),
(1239, 1527, '_menu_item_object', 'product'),
(1240, 1527, '_menu_item_target', ''),
(1241, 1527, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1242, 1527, '_menu_item_xfn', ''),
(1243, 1527, '_menu_item_url', ''),
(1245, 1528, '_menu_item_type', 'post_type'),
(1246, 1528, '_menu_item_menu_item_parent', '1523'),
(1247, 1528, '_menu_item_object_id', '1463'),
(1248, 1528, '_menu_item_object', 'product'),
(1249, 1528, '_menu_item_target', ''),
(1250, 1528, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1251, 1528, '_menu_item_xfn', ''),
(1252, 1528, '_menu_item_url', ''),
(1254, 1529, '_menu_item_type', 'post_type'),
(1255, 1529, '_menu_item_menu_item_parent', '1523'),
(1256, 1529, '_menu_item_object_id', '1456'),
(1257, 1529, '_menu_item_object', 'product'),
(1258, 1529, '_menu_item_target', ''),
(1259, 1529, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1260, 1529, '_menu_item_xfn', ''),
(1261, 1529, '_menu_item_url', ''),
(1263, 1530, '_menu_item_type', 'post_type'),
(1264, 1530, '_menu_item_menu_item_parent', '1523'),
(1265, 1530, '_menu_item_object_id', '1460'),
(1266, 1530, '_menu_item_object', 'product'),
(1267, 1530, '_menu_item_target', ''),
(1268, 1530, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1269, 1530, '_menu_item_xfn', ''),
(1270, 1530, '_menu_item_url', ''),
(1272, 1531, '_menu_item_type', 'post_type'),
(1273, 1531, '_menu_item_menu_item_parent', '1528'),
(1274, 1531, '_menu_item_object_id', '1475'),
(1275, 1531, '_menu_item_object', 'product'),
(1276, 1531, '_menu_item_target', ''),
(1277, 1531, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1278, 1531, '_menu_item_xfn', ''),
(1279, 1531, '_menu_item_url', ''),
(1281, 1532, '_menu_item_type', 'post_type'),
(1282, 1532, '_menu_item_menu_item_parent', '1528'),
(1283, 1532, '_menu_item_object_id', '1470'),
(1284, 1532, '_menu_item_object', 'product'),
(1285, 1532, '_menu_item_target', ''),
(1286, 1532, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1287, 1532, '_menu_item_xfn', ''),
(1288, 1532, '_menu_item_url', ''),
(1290, 1533, '_menu_item_type', 'post_type'),
(1291, 1533, '_menu_item_menu_item_parent', '1528'),
(1292, 1533, '_menu_item_object_id', '1469'),
(1293, 1533, '_menu_item_object', 'product'),
(1294, 1533, '_menu_item_target', ''),
(1295, 1533, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1296, 1533, '_menu_item_xfn', ''),
(1297, 1533, '_menu_item_url', ''),
(1301, 1522, '_menu_item_image_size', 'menu-36x36'),
(1302, 1522, '_menu_item_image_title_position', 'after'),
(1303, 1523, '_menu_item_image_size', 'menu-36x36'),
(1304, 1523, '_menu_item_image_title_position', 'after'),
(1305, 1529, '_menu_item_image_size', 'menu-36x36'),
(1306, 1529, '_menu_item_image_title_position', 'after'),
(1307, 1530, '_menu_item_image_size', 'menu-36x36'),
(1308, 1530, '_menu_item_image_title_position', 'after'),
(1309, 1528, '_menu_item_image_size', 'menu-36x36'),
(1310, 1528, '_menu_item_image_title_position', 'after'),
(1311, 1533, '_menu_item_image_size', 'menu-36x36'),
(1312, 1533, '_menu_item_image_title_position', 'after'),
(1313, 1532, '_menu_item_image_size', 'menu-36x36'),
(1314, 1532, '_menu_item_image_title_position', 'after'),
(1315, 1531, '_menu_item_image_size', 'menu-36x36'),
(1316, 1531, '_menu_item_image_title_position', 'after'),
(1317, 1527, '_menu_item_image_size', 'menu-36x36'),
(1318, 1527, '_menu_item_image_title_position', 'after'),
(1319, 1526, '_menu_item_image_size', 'menu-36x36'),
(1320, 1526, '_menu_item_image_title_position', 'after'),
(1321, 1524, '_menu_item_image_size', 'menu-36x36'),
(1322, 1524, '_menu_item_image_title_position', 'after'),
(1323, 1525, '_menu_item_image_size', 'menu-36x36'),
(1324, 1525, '_menu_item_image_title_position', 'after'),
(1325, 1534, '_menu_item_type', 'post_type'),
(1326, 1534, '_menu_item_menu_item_parent', '1563'),
(1327, 1534, '_menu_item_object_id', '1496'),
(1328, 1534, '_menu_item_object', 'page'),
(1329, 1534, '_menu_item_target', ''),
(1330, 1534, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1331, 1534, '_menu_item_xfn', ''),
(1332, 1534, '_menu_item_url', ''),
(1334, 1534, '_menu_item_image_size', 'menu-36x36'),
(1335, 1534, '_menu_item_image_title_position', 'after'),
(1336, 1535, '_wc_review_count', '0'),
(1337, 1535, '_wc_rating_count', 'a:0:{}'),
(1338, 1535, '_wc_average_rating', '0'),
(1339, 1535, '_edit_last', '1'),
(1340, 1535, '_edit_lock', '1555249193:1'),
(1341, 1535, '_sku', ''),
(1342, 1535, '_regular_price', '200'),
(1343, 1535, '_sale_price', ''),
(1344, 1535, '_sale_price_dates_from', ''),
(1345, 1535, '_sale_price_dates_to', ''),
(1346, 1535, 'total_sales', '0'),
(1347, 1535, '_tax_status', 'taxable'),
(1348, 1535, '_tax_class', ''),
(1349, 1535, '_manage_stock', 'no'),
(1350, 1535, '_backorders', 'no'),
(1351, 1535, '_low_stock_amount', ''),
(1352, 1535, '_sold_individually', 'no'),
(1353, 1535, '_weight', ''),
(1354, 1535, '_length', ''),
(1355, 1535, '_width', ''),
(1356, 1535, '_height', ''),
(1357, 1535, '_upsell_ids', 'a:0:{}'),
(1358, 1535, '_crosssell_ids', 'a:0:{}'),
(1359, 1535, '_purchase_note', ''),
(1360, 1535, '_default_attributes', 'a:0:{}'),
(1361, 1535, '_virtual', 'no'),
(1362, 1535, '_downloadable', 'no'),
(1363, 1535, '_product_image_gallery', ''),
(1364, 1535, '_download_limit', '-1'),
(1365, 1535, '_download_expiry', '-1'),
(1366, 1535, '_stock', NULL),
(1367, 1535, '_stock_status', 'instock'),
(1368, 1535, '_product_attributes', 'a:1:{s:121:\"%d0%b4%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8\";a:6:{s:4:\"name\";s:41:\"Дополнительные услуги\";s:5:\"value\";s:54:\"погрузка, доставка, разгрузка\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(1369, 1535, '_product_version', '3.5.7'),
(1370, 1535, '_price', '200'),
(1371, 1535, '_wp_page_template', 'template-parts/card.php'),
(1372, 1535, '_yoast_wpseo_primary_product_cat', '27'),
(1373, 1535, '_yoast_wpseo_content_score', '30'),
(1374, 1536, '_menu_item_type', 'post_type'),
(1375, 1536, '_menu_item_menu_item_parent', '1525'),
(1376, 1536, '_menu_item_object_id', '1535'),
(1377, 1536, '_menu_item_object', 'product'),
(1378, 1536, '_menu_item_target', ''),
(1379, 1536, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1380, 1536, '_menu_item_xfn', ''),
(1381, 1536, '_menu_item_url', ''),
(1383, 1536, '_menu_item_image_size', 'menu-36x36'),
(1384, 1536, '_menu_item_image_title_position', 'after'),
(1385, 1537, '_menu_item_type', 'post_type'),
(1386, 1537, '_menu_item_menu_item_parent', '1343'),
(1387, 1537, '_menu_item_object_id', '1535'),
(1388, 1537, '_menu_item_object', 'product'),
(1389, 1537, '_menu_item_target', ''),
(1390, 1537, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1391, 1537, '_menu_item_xfn', ''),
(1392, 1537, '_menu_item_url', ''),
(1394, 1537, '_menu_item_image_size', 'menu-36x36'),
(1395, 1537, '_menu_item_image_title_position', 'after'),
(1396, 1538, '_wp_attached_file', '2019/04/sand.png'),
(1397, 1538, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2019/04/sand.png\";s:5:\"sizes\";a:5:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:14:\"sand-24x16.png\";s:5:\"width\";i:24;s:6:\"height\";i:16;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:14:\"sand-36x24.png\";s:5:\"width\";i:36;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:14:\"sand-48x31.png\";s:5:\"width\";i:48;s:6:\"height\";i:31;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"sand-100x85.png\";s:5:\"width\";i:100;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"sand-100x85.png\";s:5:\"width\";i:100;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1398, 1535, '_thumbnail_id', '1538'),
(1399, 1537, '_thumbnail_id', '1538'),
(1400, 1539, '_wc_review_count', '0'),
(1401, 1539, '_wc_rating_count', 'a:0:{}'),
(1402, 1539, '_wc_average_rating', '0'),
(1403, 1539, '_edit_last', '1'),
(1404, 1539, '_edit_lock', '1554964424:1'),
(1405, 1539, '_wp_trash_meta_status', 'draft'),
(1406, 1539, '_wp_trash_meta_time', '1554964433'),
(1407, 1539, '_wp_desired_post_slug', ''),
(1408, 1540, '_sku', ''),
(1409, 1540, '_regular_price', '100'),
(1410, 1540, '_sale_price', ''),
(1411, 1540, '_sale_price_dates_from', ''),
(1412, 1540, '_sale_price_dates_to', ''),
(1413, 1540, 'total_sales', '0'),
(1414, 1540, '_tax_status', 'taxable'),
(1415, 1540, '_tax_class', ''),
(1416, 1540, '_manage_stock', 'no'),
(1417, 1540, '_backorders', 'no'),
(1418, 1540, '_low_stock_amount', ''),
(1419, 1540, '_sold_individually', 'no'),
(1420, 1540, '_weight', ''),
(1421, 1540, '_length', ''),
(1422, 1540, '_width', ''),
(1423, 1540, '_height', ''),
(1424, 1540, '_upsell_ids', 'a:0:{}'),
(1425, 1540, '_crosssell_ids', 'a:0:{}'),
(1426, 1540, '_purchase_note', ''),
(1427, 1540, '_default_attributes', 'a:0:{}'),
(1428, 1540, '_virtual', 'no'),
(1429, 1540, '_downloadable', 'no'),
(1430, 1540, '_product_image_gallery', ''),
(1431, 1540, '_download_limit', '-1'),
(1432, 1540, '_download_expiry', '-1'),
(1434, 1540, '_stock', NULL),
(1435, 1540, '_stock_status', 'instock'),
(1436, 1540, '_wc_average_rating', '0'),
(1437, 1540, '_wc_rating_count', 'a:0:{}'),
(1438, 1540, '_wc_review_count', '0'),
(1439, 1540, '_downloadable_files', 'a:0:{}'),
(1440, 1540, '_product_attributes', 'a:1:{s:121:\"%d0%b4%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8\";a:6:{s:4:\"name\";s:41:\"Дополнительные услуги\";s:5:\"value\";s:54:\"погрузка, доставка, разгрузка\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(1441, 1540, '_product_version', '3.5.7'),
(1442, 1540, '_price', '100'),
(1443, 1540, '_wp_page_template', 'default'),
(1444, 1540, '_yoast_wpseo_primary_product_cat', '27'),
(1445, 1540, '_yoast_wpseo_content_score', '30'),
(1446, 1540, '_edit_lock', '1555235821:1'),
(1447, 1540, '_edit_last', '1'),
(1450, 1542, '_sku', ''),
(1451, 1542, '_regular_price', '100'),
(1452, 1542, '_sale_price', ''),
(1453, 1542, '_sale_price_dates_from', ''),
(1454, 1542, '_sale_price_dates_to', ''),
(1455, 1542, 'total_sales', '0'),
(1456, 1542, '_tax_status', 'taxable'),
(1457, 1542, '_tax_class', ''),
(1458, 1542, '_manage_stock', 'no'),
(1459, 1542, '_backorders', 'no'),
(1460, 1542, '_low_stock_amount', ''),
(1461, 1542, '_sold_individually', 'no'),
(1462, 1542, '_weight', ''),
(1463, 1542, '_length', ''),
(1464, 1542, '_width', ''),
(1465, 1542, '_height', ''),
(1466, 1542, '_upsell_ids', 'a:0:{}'),
(1467, 1542, '_crosssell_ids', 'a:0:{}'),
(1468, 1542, '_purchase_note', ''),
(1469, 1542, '_default_attributes', 'a:0:{}'),
(1470, 1542, '_virtual', 'no'),
(1471, 1542, '_downloadable', 'no'),
(1472, 1542, '_product_image_gallery', ''),
(1473, 1542, '_download_limit', '-1'),
(1474, 1542, '_download_expiry', '-1'),
(1476, 1542, '_stock', NULL),
(1477, 1542, '_stock_status', 'instock'),
(1478, 1542, '_wc_average_rating', '0'),
(1479, 1542, '_wc_rating_count', 'a:0:{}'),
(1480, 1542, '_wc_review_count', '0'),
(1481, 1542, '_downloadable_files', 'a:0:{}'),
(1482, 1542, '_product_attributes', 'a:1:{s:121:\"%d0%b4%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8\";a:6:{s:4:\"name\";s:41:\"Дополнительные услуги\";s:5:\"value\";s:54:\"погрузка, доставка, разгрузка\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(1483, 1542, '_product_version', '3.5.7'),
(1484, 1542, '_price', '100'),
(1485, 1542, '_wp_page_template', 'default'),
(1486, 1542, '_yoast_wpseo_primary_product_cat', '29'),
(1487, 1542, '_yoast_wpseo_content_score', '30'),
(1488, 1542, '_edit_lock', '1554966117:1'),
(1491, 1542, '_edit_last', '1'),
(1492, 1542, '_wp_trash_meta_status', 'publish'),
(1493, 1542, '_wp_trash_meta_time', '1554966266'),
(1494, 1542, '_wp_desired_post_slug', '%d0%bf%d0%b3%d1%81'),
(1495, 1543, '_menu_item_type', 'post_type'),
(1496, 1543, '_menu_item_menu_item_parent', '1343'),
(1497, 1543, '_menu_item_object_id', '1540'),
(1498, 1543, '_menu_item_object', 'product'),
(1499, 1543, '_menu_item_target', ''),
(1500, 1543, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1501, 1543, '_menu_item_xfn', ''),
(1502, 1543, '_menu_item_url', ''),
(1506, 1545, '_wp_attached_file', '2019/04/sand2.png'),
(1507, 1545, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:85;s:4:\"file\";s:17:\"2019/04/sand2.png\";s:5:\"sizes\";a:5:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"sand2-24x16.png\";s:5:\"width\";i:24;s:6:\"height\";i:16;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"sand2-36x24.png\";s:5:\"width\";i:36;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"sand2-48x31.png\";s:5:\"width\";i:48;s:6:\"height\";i:31;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"sand2-100x85.png\";s:5:\"width\";i:100;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"sand2-100x85.png\";s:5:\"width\";i:100;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1508, 1543, '_thumbnail_id', '1545'),
(1509, 1543, '_menu_item_image_size', 'menu-36x36'),
(1510, 1543, '_menu_item_image_title_position', 'after'),
(1511, 1540, '_thumbnail_id', '1545'),
(1512, 1540, '_wp_old_slug', '%d0%bf%d0%b5%d1%81%d0%be%d0%ba-%d0%ba%d0%b0%d1%80%d1%8c%d0%b5%d1%80%d0%bd%d1%8b%d0%b9'),
(1513, 1535, '_wp_old_slug', '%d0%bf%d0%b5%d1%81%d0%be%d0%ba-%d1%80%d0%b5%d1%87%d0%bd%d0%be%d0%b9'),
(1514, 1547, '_edit_last', '1'),
(1515, 1547, '_edit_lock', '1556634459:1'),
(1516, 1547, '_wp_page_template', 'index.php'),
(1517, 1547, '_yoast_wpseo_content_score', '30'),
(1518, 1549, '_wp_trash_meta_status', 'publish'),
(1519, 1549, '_wp_trash_meta_time', '1555255545'),
(1520, 1359, '_yoast_wpseo_content_score', '30'),
(1521, 1550, '_menu_item_type', 'post_type'),
(1522, 1550, '_menu_item_menu_item_parent', '0'),
(1523, 1550, '_menu_item_object_id', '1547'),
(1524, 1550, '_menu_item_object', 'page'),
(1525, 1550, '_menu_item_target', ''),
(1526, 1550, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1527, 1550, '_menu_item_xfn', ''),
(1528, 1550, '_menu_item_url', ''),
(1530, 1551, '_menu_item_type', 'post_type'),
(1531, 1551, '_menu_item_menu_item_parent', '1550'),
(1532, 1551, '_menu_item_object_id', '1487'),
(1533, 1551, '_menu_item_object', 'page'),
(1534, 1551, '_menu_item_target', ''),
(1535, 1551, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1536, 1551, '_menu_item_xfn', ''),
(1537, 1551, '_menu_item_url', ''),
(1539, 1550, '_menu_item_image_size', 'menu-36x36'),
(1540, 1550, '_menu_item_image_title_position', 'after'),
(1541, 1551, '_menu_item_image_size', 'menu-36x36'),
(1542, 1551, '_menu_item_image_title_position', 'after'),
(1543, 1420, '_wp_trash_meta_status', 'publish'),
(1544, 1420, '_wp_trash_meta_time', '1555919112'),
(1545, 1420, '_wp_desired_post_slug', 'eskov-on'),
(1568, 1556, '_menu_item_type', 'post_type'),
(1569, 1556, '_menu_item_menu_item_parent', '1563'),
(1570, 1556, '_menu_item_object_id', '1359'),
(1571, 1556, '_menu_item_object', 'page'),
(1572, 1556, '_menu_item_target', ''),
(1573, 1556, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1574, 1556, '_menu_item_xfn', ''),
(1575, 1556, '_menu_item_url', ''),
(1577, 1556, '_menu_item_image_size', 'menu-36x36'),
(1578, 1556, '_menu_item_image_title_position', 'after'),
(1579, 1557, '_edit_last', '1'),
(1580, 1557, '_edit_lock', '1555951087:1'),
(1581, 1559, '_edit_last', '1'),
(1582, 1559, '_edit_lock', '1556359243:1'),
(1583, 1559, '_wp_page_template', 'template-parts/contacts.php'),
(1584, 1559, '_yoast_wpseo_content_score', '30'),
(1585, 1561, '_menu_item_type', 'post_type'),
(1586, 1561, '_menu_item_menu_item_parent', '1563'),
(1587, 1561, '_menu_item_object_id', '1559'),
(1588, 1561, '_menu_item_object', 'page'),
(1589, 1561, '_menu_item_target', ''),
(1590, 1561, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1591, 1561, '_menu_item_xfn', ''),
(1592, 1561, '_menu_item_url', ''),
(1594, 1561, '_menu_item_image_size', 'menu-36x36'),
(1595, 1561, '_menu_item_image_title_position', 'after'),
(1596, 1557, '_wp_page_template', 'default'),
(1597, 1557, '_yoast_wpseo_content_score', '30'),
(1598, 1563, '_menu_item_type', 'post_type'),
(1599, 1563, '_menu_item_menu_item_parent', '0'),
(1600, 1563, '_menu_item_object_id', '1547'),
(1601, 1563, '_menu_item_object', 'page'),
(1602, 1563, '_menu_item_target', ''),
(1603, 1563, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1604, 1563, '_menu_item_xfn', ''),
(1605, 1563, '_menu_item_url', ''),
(1607, 1563, '_menu_item_image_size', 'menu-36x36'),
(1608, 1563, '_menu_item_image_title_position', 'after'),
(1609, 1564, '_wp_trash_meta_status', 'publish'),
(1610, 1564, '_wp_trash_meta_time', '1556028697'),
(1611, 1565, '_wp_trash_meta_status', 'publish'),
(1612, 1565, '_wp_trash_meta_time', '1556032322'),
(1613, 1566, '_edit_last', '1'),
(1614, 1566, '_edit_lock', '1556634370:1'),
(1615, 1566, '_wp_page_template', 'template-parts/elements.php'),
(1616, 1566, '_yoast_wpseo_content_score', '30'),
(1617, 1474, '_edit_lock', '1556390405:1'),
(1622, 5, '_yoast_wpseo_primary_category', ''),
(1623, 5, '_yoast_wpseo_content_score', '30'),
(1632, 1574, '_wp_attached_file', '2019/03/big_car.jpg'),
(1633, 1574, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:978;s:6:\"height\";i:668;s:4:\"file\";s:19:\"2019/03/big_car.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"big_car-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"big_car-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"big_car-768x525.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:17:\"big_car-24x16.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:16;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:17:\"big_car-36x25.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:25;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:17:\"big_car-48x33.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:33;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"big_car-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"big_car-600x410.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"big_car-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"big_car-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"big_car-600x410.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"big_car-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1634, 1576, '_wp_attached_file', '2019/03/slider_main.jpg'),
(1635, 1576, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:683;s:6:\"height\";i:250;s:4:\"file\";s:23:\"2019/03/slider_main.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"slider_main-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"slider_main-300x110.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:20:\"slider_main-24x9.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:9;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:21:\"slider_main-36x13.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:13;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:21:\"slider_main-48x18.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"slider_main-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"slider_main-600x220.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"slider_main-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"slider_main-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"slider_main-600x220.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"slider_main-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1636, 1578, '_edit_lock', '1556972847:1'),
(1637, 1579, '_wp_attached_file', '2019/05/feddb1.png'),
(1638, 1579, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:18:\"2019/05/feddb1.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:16:\"feddb1-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:16:\"feddb1-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:16:\"feddb1-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1641, 1578, '_thumbnail_id', '1579'),
(1642, 1578, '_edit_last', '1'),
(1645, 1578, '_yoast_wpseo_primary_category', '33'),
(1646, 1578, '_yoast_wpseo_content_score', '90'),
(1651, 1581, '_edit_lock', '1556967741:1'),
(1652, 1582, '_wp_attached_file', '2019/05/feddb2.png'),
(1653, 1582, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:18:\"2019/05/feddb2.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:16:\"feddb2-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:16:\"feddb2-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:16:\"feddb2-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1656, 1581, '_thumbnail_id', '1582'),
(1657, 1581, '_edit_last', '1'),
(1660, 1581, '_yoast_wpseo_primary_category', '33'),
(1661, 1581, '_yoast_wpseo_content_score', '90'),
(1662, 1584, '_edit_lock', '1556971686:1'),
(1665, 1584, '_edit_last', '1'),
(1668, 1584, '_yoast_wpseo_primary_category', '34'),
(1669, 1584, '_yoast_wpseo_content_score', '60'),
(1670, 1586, '_edit_lock', '1556971730:1'),
(1673, 1586, '_edit_last', '1'),
(1674, 1586, '_pingme', '1'),
(1675, 1586, '_encloseme', '1'),
(1676, 1586, '_yoast_wpseo_primary_category', '34'),
(1677, 1586, '_yoast_wpseo_content_score', '60'),
(1678, 1588, '_edit_lock', '1556980186:1');

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
(1, 1, '2019-02-18 22:24:54', '2019-02-18 22:24:54', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-02-18 22:24:54', '2019-02-18 22:24:54', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(5, 1, '2019-02-19 01:41:17', '2019-02-19 01:41:17', '<p>[gallery size=\"full\" ids=\"1404\"]</p>\n<p>[gallery size=\"full\" ids=\"1404\"]</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'main_slider', '', 'publish', 'open', 'open', '', 'main_slider', '', '', '2019-04-28 19:56:07', '2019-04-28 19:56:07', '', 0, 'http://localhost/?p=5', 0, 'post', '', 0),
(7, 1, '2019-02-19 01:40:51', '2019-02-19 01:40:51', '', 'advant', '', 'inherit', 'open', 'closed', '', 'advant', '', '', '2019-02-19 01:40:51', '2019-02-19 01:40:51', '', 5, 'http://localhost/wp-content/uploads/2019/02/advant.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2019-02-19 01:40:51', '2019-02-19 01:40:51', '', 'advant2', '', 'inherit', 'open', 'closed', '', 'advant2', '', '', '2019-02-19 01:40:51', '2019-02-19 01:40:51', '', 5, 'http://localhost/wp-content/uploads/2019/02/advant2.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2019-02-19 01:41:17', '2019-02-19 01:41:17', '[gallery ids=\"7,8\"]', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-19 01:41:17', '2019-02-19 01:41:17', '', 5, 'http://localhost/index.php/2019/02/19/5-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-02-19 02:23:06', '2019-02-19 02:23:06', '[gallery ids=\"7,8\"]\r\n\r\n&nbsp;\r\n\r\n[gallery ids=\"7,8\"]\r\n\r\n&nbsp;', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-19 02:23:06', '2019-02-19 02:23:06', '', 5, 'http://localhost/index.php/2019/02/19/5-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-02-19 02:26:26', '2019-02-19 02:26:26', '', 'arrow_btn', '', 'inherit', 'open', 'closed', '', 'arrow_btn', '', '', '2019-02-19 02:26:26', '2019-02-19 02:26:26', '', 5, 'http://localhost/wp-content/uploads/2019/02/arrow_btn.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2019-02-19 02:26:52', '2019-02-19 02:26:52', '[gallery ids=\"7,8,13\"]\n\n&nbsp;\n\n[gallery ids=\"7,8\"]\n\n&nbsp;', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-19 02:26:52', '2019-02-19 02:26:52', '', 5, 'http://localhost/index.php/2019/02/19/5-revision-v1/', 0, 'revision', '', 0),
(1336, 1, '2019-02-21 00:23:25', '2019-02-21 00:23:25', '', 'license', '', 'inherit', 'open', 'closed', '', 'license', '', '', '2019-02-21 00:23:25', '2019-02-21 00:23:25', '', 0, 'http://localhost/wp-content/uploads/2019/02/license.txt', 0, 'attachment', 'text/plain', 0),
(1337, 1, '2019-02-21 00:25:19', '2019-02-21 00:25:19', '', 'advant3', '', 'inherit', 'open', 'closed', '', 'advant3', '', '', '2019-02-21 00:25:19', '2019-02-21 00:25:19', '', 0, 'http://localhost/wp-content/uploads/2019/02/advant3.png', 0, 'attachment', 'image/png', 0),
(1338, 1, '2019-02-21 01:26:00', '2019-02-21 01:26:00', '', 'Продажа материалов', '', 'publish', 'closed', 'closed', '', 'material-sale', '', '', '2019-04-11 07:05:17', '2019-04-11 07:05:17', '', 1487, 'http://localhost/?page_id=1338', 0, 'page', '', 0),
(1339, 1, '2019-02-21 01:26:00', '2019-02-21 01:26:00', '', 'Продажа материалов', '', 'inherit', 'closed', 'closed', '', '1338-revision-v1', '', '', '2019-02-21 01:26:00', '2019-02-21 01:26:00', '', 1338, 'http://localhost/index.php/2019/02/21/1338-revision-v1/', 0, 'revision', '', 0),
(1340, 1, '2019-02-21 01:26:56', '2019-02-21 01:26:56', '', 'Другие услуги', '', 'publish', 'closed', 'closed', '', 'other_service', '', '', '2019-04-01 15:26:00', '2019-04-01 15:26:00', '', 1487, 'http://localhost/?page_id=1340', 0, 'page', '', 0),
(1341, 1, '2019-02-21 01:26:56', '2019-02-21 01:26:56', '', 'Другие услуги', '', 'inherit', 'closed', 'closed', '', '1340-revision-v1', '', '', '2019-02-21 01:26:56', '2019-02-21 01:26:56', '', 1340, 'http://localhost/index.php/2019/02/21/1340-revision-v1/', 0, 'revision', '', 0),
(1342, 1, '2019-02-21 01:27:54', '2019-02-21 01:27:54', ' ', '', '', 'publish', 'closed', 'closed', '', '1342', '', '', '2019-04-22 07:52:11', '2019-04-22 07:52:11', '', 1487, 'http://localhost/?p=1342', 12, 'nav_menu_item', '', 0),
(1343, 1, '2019-02-21 01:27:55', '2019-02-21 01:27:55', ' ', '', '', 'publish', 'closed', 'closed', '', '1343', '', '', '2019-04-22 07:52:11', '2019-04-22 07:52:11', '', 1487, 'http://localhost/?p=1343', 9, 'nav_menu_item', '', 0),
(1346, 1, '2019-02-21 14:22:24', '2019-02-21 14:22:24', '', 'rent', '', 'inherit', 'open', 'closed', '', 'rent', '', '', '2019-02-23 00:21:48', '2019-02-23 00:21:48', '', 1364, 'http://localhost/wp-content/uploads/2019/02/rent.png', 0, 'attachment', 'image/png', 0),
(1347, 1, '2019-02-22 00:09:02', '2019-02-22 00:09:02', '<a href=\'#\'><img class=\"alignnone size-full wp-image-1348\" src=\"http://localhost/wp-content/uploads/2019/02/discounts_rent.jpg\" alt=\"\" width=\"257\" height=\"201\" /></a>', 'Discounts', '', 'publish', 'open', 'open', '', 'discounts', '', '', '2019-02-22 01:42:23', '2019-02-22 01:42:23', '', 0, 'http://localhost/?p=1347', 0, 'post', '', 0),
(1348, 1, '2019-02-22 00:08:54', '2019-02-22 00:08:54', '', 'discounts_rent', '', 'inherit', 'open', 'closed', '', 'discounts_rent', '', '', '2019-02-22 00:08:54', '2019-02-22 00:08:54', '', 1347, 'http://localhost/wp-content/uploads/2019/02/discounts_rent.jpg', 0, 'attachment', 'image/jpeg', 0),
(1349, 1, '2019-02-22 00:09:02', '2019-02-22 00:09:02', '<img class=\"alignnone size-full wp-image-1348\" src=\"http://localhost/wp-content/uploads/2019/02/discounts_rent.jpg\" alt=\"\" width=\"257\" height=\"201\" />', 'Discounts', '', 'inherit', 'closed', 'closed', '', '1347-revision-v1', '', '', '2019-02-22 00:09:02', '2019-02-22 00:09:02', '', 1347, 'http://localhost/index.php/2019/02/22/1347-revision-v1/', 0, 'revision', '', 0),
(1356, 1, '2019-02-22 01:28:54', '2019-02-22 01:28:54', '<a href=\'\'><img class=\"alignnone size-full wp-image-1348\" src=\"http://localhost/wp-content/uploads/2019/02/discounts_rent.jpg\" alt=\"\" width=\"257\" height=\"201\" /></a>', 'Discounts', '', 'inherit', 'closed', 'closed', '', '1347-revision-v1', '', '', '2019-02-22 01:28:54', '2019-02-22 01:28:54', '', 1347, 'http://localhost/index.php/2019/02/22/1347-revision-v1/', 0, 'revision', '', 0),
(1357, 1, '2019-02-22 01:42:23', '2019-02-22 01:42:23', '<a href=\'#\'><img class=\"alignnone size-full wp-image-1348\" src=\"http://localhost/wp-content/uploads/2019/02/discounts_rent.jpg\" alt=\"\" width=\"257\" height=\"201\" /></a>', 'Discounts', '', 'inherit', 'closed', 'closed', '', '1347-revision-v1', '', '', '2019-02-22 01:42:23', '2019-02-22 01:42:23', '', 1347, 'http://localhost/index.php/2019/02/22/1347-revision-v1/', 0, 'revision', '', 0),
(1358, 1, '2019-02-22 01:44:26', '2019-02-22 01:44:26', '<a href=\"#\"><img class=\"alignnone size-full wp-image-1348\" src=\"http://localhost/wp-content/uploads/2019/02/discounts_rent.jpg\" alt=\"\" width=\"257\" height=\"201\" /></a>', 'Discounts', '', 'inherit', 'closed', 'closed', '', '1347-autosave-v1', '', '', '2019-02-22 01:44:26', '2019-02-22 01:44:26', '', 1347, 'http://localhost/index.php/2019/02/22/1347-autosave-v1/', 0, 'revision', '', 0),
(1359, 1, '2019-02-22 20:35:59', '2019-02-22 20:35:59', '', 'all_news', '', 'publish', 'closed', 'closed', '', 'all_news', '', '', '2019-04-14 15:33:08', '2019-04-14 15:33:08', '', 1547, 'http://localhost/?page_id=1359', 0, 'page', '', 0),
(1363, 1, '2019-02-22 20:35:59', '2019-02-22 20:35:59', '', 'all_news', '', 'inherit', 'closed', 'closed', '', '1359-revision-v1', '', '', '2019-02-22 20:35:59', '2019-02-22 20:35:59', '', 1359, 'http://localhost/index.php/2019/02/22/1359-revision-v1/', 0, 'revision', '', 0),
(1364, 1, '2015-07-25 23:07:49', '2015-07-25 23:07:49', 'Все машины находятся в хорошем состоянии и своевременно чинятся в оборудованных для этого близстоящих ремонтных мастерских.', 'Компания работает на территории', '', 'publish', 'open', 'open', '', '1', '', '', '2019-02-24 20:10:54', '2019-02-24 20:10:54', '', 0, 'http://localhost/?p=1364', 0, 'post', '', 0),
(1365, 1, '2019-02-22 23:07:49', '2019-02-22 23:07:49', '12121212', '1', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-22 23:07:49', '2019-02-22 23:07:49', '', 1364, 'http://localhost/index.php/2019/02/22/1364-revision-v1/', 0, 'revision', '', 0),
(1366, 1, '2019-02-22 23:08:00', '2019-02-22 23:08:00', 'Автомобильный парк постоянно пополнятеся новыми моделями, покраска осуществляется далее согласно договору.', 'Закупка новой снегоуборочной техники и самосвалов', '', 'publish', 'open', 'open', '', '2', '', '', '2019-02-24 20:12:09', '2019-02-24 20:12:09', '', 0, 'http://localhost/?p=1366', 0, 'post', '', 0),
(1367, 1, '2019-02-22 23:08:00', '2019-02-22 23:08:00', '23123213213213', '2', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-22 23:08:00', '2019-02-22 23:08:00', '', 1366, 'http://localhost/index.php/2019/02/22/1366-revision-v1/', 0, 'revision', '', 0),
(1368, 1, '2019-02-22 23:42:17', '2019-02-22 23:42:17', '<p>12121212</p>', '1', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-22 23:42:17', '2019-02-22 23:42:17', '', 1364, 'http://localhost/index.php/2019/02/22/1364-revision-v1/', 0, 'revision', '', 0),
(1369, 1, '2019-02-23 00:21:13', '2019-02-23 00:21:13', '<p>23123213213213</p>', '2', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 00:21:13', '2019-02-23 00:21:13', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1370, 1, '2019-02-23 00:21:50', '2019-02-23 00:21:50', '12121212\r\n\r\n<img class=\"alignnone size-full wp-image-1346\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />', '1', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-23 00:21:50', '2019-02-23 00:21:50', '', 1364, 'http://localhost/index.php/2019/02/23/1364-revision-v1/', 0, 'revision', '', 0),
(1371, 1, '2019-02-23 13:26:13', '2019-02-23 13:26:13', 'To commemorate the first ringing of the Scarab Gong on January 23, 2006, players will be able to relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', '1', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-23 13:26:13', '2019-02-23 13:26:13', '', 1364, 'http://localhost/index.php/2019/02/23/1364-revision-v1/', 0, 'revision', '', 0),
(1372, 1, '2019-02-23 13:26:42', '2019-02-23 13:26:42', 'Step into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.', '2', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:26:42', '2019-02-23 13:26:42', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1373, 1, '2019-02-23 13:30:06', '2019-02-23 13:30:06', 'To commemorate the first ringing of the Scarab Gong on January 23, 2006, players will be able to relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'CALL OF THE SCARAB [JANUARY 21-23]', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-23 13:30:06', '2019-02-23 13:30:06', '', 1364, 'http://localhost/index.php/2019/02/23/1364-revision-v1/', 0, 'revision', '', 0),
(1374, 1, '2019-02-23 13:30:29', '2019-02-23 13:30:29', 'Step into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:30:29', '2019-02-23 13:30:29', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1376, 1, '2019-02-23 13:31:52', '2019-02-23 13:31:52', 'Step into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.<img class=\"alignright wp-image-1346 size-full\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:31:52', '2019-02-23 13:31:52', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1377, 1, '2019-02-23 13:32:20', '2019-02-23 13:32:20', 'Step into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.<img class=\"wp-image-1346 size-full alignleft\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:32:20', '2019-02-23 13:32:20', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1378, 1, '2019-02-23 13:33:41', '2019-02-23 13:33:41', 'Step into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.\r\n\r\n<img class=\"alignnone size-full wp-image-1346\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:33:41', '2019-02-23 13:33:41', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1379, 1, '2019-02-23 13:46:41', '2019-02-23 13:46:41', 'Step into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.\r\n\r\n&nbsp;', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:46:41', '2019-02-23 13:46:41', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1380, 1, '2019-02-23 13:47:02', '2019-02-23 13:47:02', '<img class=\"alignnone size-full wp-image-1346\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\nStep into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.\r\n\r\n&nbsp;', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:47:02', '2019-02-23 13:47:02', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1381, 1, '2019-02-23 13:47:17', '2019-02-23 13:47:17', '<img class=\"size-full wp-image-1346 alignnone\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\nStep into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.\r\n\r\n&nbsp;', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:47:17', '2019-02-23 13:47:17', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1382, 1, '2019-02-23 13:47:29', '2019-02-23 13:47:29', '<img class=\"size-full wp-image-1346 alignleft\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\nStep into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.\r\n\r\n&nbsp;', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:47:29', '2019-02-23 13:47:29', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1383, 1, '2019-02-23 13:47:52', '2019-02-23 13:47:52', '<img src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\nStep into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.\r\n\r\n&nbsp;', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:47:52', '2019-02-23 13:47:52', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1384, 1, '2019-02-23 13:48:04', '2019-02-23 13:48:04', '<img src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\n&nbsp;\r\n\r\nStep into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.\r\n\r\n&nbsp;', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:48:04', '2019-02-23 13:48:04', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1385, 1, '2019-02-23 13:48:40', '2019-02-23 13:48:40', '<img src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\nStep into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:48:40', '2019-02-23 13:48:40', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1386, 1, '2019-02-23 13:48:51', '2019-02-23 13:48:51', '<img class=\"aligncenter\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\nStep into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.', 'KIRIN TOR TAVERN CRAWL [JANUARY 31]', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 13:48:51', '2019-02-23 13:48:51', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1387, 1, '2019-02-23 13:49:25', '2019-02-23 13:49:25', '<img class=\"alignnone size-full wp-image-1346\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\nTo commemorate the first ringing of the Scarab Gong on January 23, 2006, players will be able to relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'CALL OF THE SCARAB [JANUARY 21-23]', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-23 13:49:25', '2019-02-23 13:49:25', '', 1364, 'http://localhost/index.php/2019/02/23/1364-revision-v1/', 0, 'revision', '', 0),
(1389, 1, '2019-02-23 14:35:05', '2019-02-23 14:35:05', '<img class=\"alignnone size-full wp-image-1346\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\nTo commemorate the first ringing of the Scarab Gong on January 23, 2006, players will be able to relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'CALL OF THE SCARAB', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-23 14:35:05', '2019-02-23 14:35:05', '', 1364, 'http://localhost/index.php/2019/02/23/1364-revision-v1/', 0, 'revision', '', 0),
(1390, 1, '2019-02-23 14:35:19', '2019-02-23 14:35:19', '<img class=\"aligncenter\" src=\"http://localhost/wp-content/uploads/2019/02/rent.png\" alt=\"\" width=\"130\" height=\"86\" />\r\n\r\nStep into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.', 'KIRIN TOR TAVERN CRAWL', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 14:35:19', '2019-02-23 14:35:19', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1392, 1, '2019-02-23 21:54:03', '2019-02-23 21:54:03', 'To commemorate the first ringing of the Scarab Gong on January 23, 2006, players will be able to relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'CALL OF THE SCARAB', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-23 21:54:03', '2019-02-23 21:54:03', '', 1364, 'http://localhost/index.php/2019/02/23/1364-revision-v1/', 0, 'revision', '', 0),
(1393, 1, '2019-02-23 21:54:12', '2019-02-23 21:54:12', 'Step into the shoes of a guard in the major cities with a /salute and you’ll get to serve and protect the city just like them. Stay vigilant and watch out for any invaders.', 'KIRIN TOR TAVERN CRAWL', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-23 21:54:12', '2019-02-23 21:54:12', '', 1366, 'http://localhost/index.php/2019/02/23/1366-revision-v1/', 0, 'revision', '', 0),
(1394, 1, '2019-02-23 23:55:37', '2019-02-23 23:55:37', 'To commemorate the first ringing of the Scarab Gong on January 23, 2006, players will be able to <!-- more -->relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'CALL OF THE SCARAB', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-23 23:55:37', '2019-02-23 23:55:37', '', 1364, 'http://localhost/index.php/2019/02/23/1364-revision-v1/', 0, 'revision', '', 0),
(1395, 1, '2019-02-23 23:58:17', '2019-02-23 23:58:17', 'To commemorate the first <!-- more -->ringing of the Scarab Gong on January 23, 2006, players will be able to relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'CALL OF THE SCARAB', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-23 23:58:17', '2019-02-23 23:58:17', '', 1364, 'http://localhost/index.php/2019/02/23/1364-revision-v1/', 0, 'revision', '', 0),
(1396, 1, '2019-02-23 23:58:48', '2019-02-23 23:58:48', 'To commemorate the first <!--more-->ringing of the Scarab Gong on January 23, 2006, players will be able to relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'CALL OF THE SCARAB', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-23 23:58:48', '2019-02-23 23:58:48', '', 1364, 'http://localhost/index.php/2019/02/23/1364-revision-v1/', 0, 'revision', '', 0),
(1397, 1, '2019-02-24 01:06:27', '2019-02-24 01:06:27', 'To commemorate the first ringing of the Scarab Gong on January 23, 2006, players will be able to<!--more--> relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'CALL OF THE SCARAB', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-24 01:06:27', '2019-02-24 01:06:27', '', 1364, 'http://localhost/index.php/2019/02/24/1364-revision-v1/', 0, 'revision', '', 0),
(1399, 1, '2019-02-24 17:49:00', '2019-02-24 17:49:00', 'To commemorate the first ringing of the Scarab Gong on January 23, 2006, players will be able to relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'CALL OF THE SCARAB', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-24 17:49:00', '2019-02-24 17:49:00', '', 1364, 'http://localhost/index.php/2019/02/24/1364-revision-v1/', 0, 'revision', '', 0),
(1400, 1, '2019-02-24 20:04:48', '2019-02-24 20:04:48', 'To commemorate the first ringing of the Scarab Gong on January 23, 2006, players will be able to relive a portion of the Ahn’Qiraj gate opening by collecting items for turn-in. The winning faction will then be able to claim bragging rights and have their faction flag hang over the gates until the next Call of the Scarab micro-holiday event.', 'Компания работает на территории', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-24 20:04:48', '2019-02-24 20:04:48', '', 1364, 'http://localhost/index.php/2019/02/24/1364-revision-v1/', 0, 'revision', '', 0),
(1401, 1, '2019-02-24 20:06:09', '2019-02-24 20:06:09', 'Все машины находятся в хорошем состоянии и своевременно чинятся в оборудованных для этого близстоящих ремонтных мастерских.', 'Компания работает на территории', '', 'inherit', 'closed', 'closed', '', '1364-revision-v1', '', '', '2019-02-24 20:06:09', '2019-02-24 20:06:09', '', 1364, 'http://localhost/index.php/2019/02/24/1364-revision-v1/', 0, 'revision', '', 0),
(1402, 1, '2019-02-24 20:12:09', '2019-02-24 20:12:09', 'Автомобильный парк постоянно пополнятеся новыми моделями, покраска осуществляется далее согласно договору.', 'Закупка новой снегоуборочной техники и самосвалов', '', 'inherit', 'closed', 'closed', '', '1366-revision-v1', '', '', '2019-02-24 20:12:09', '2019-02-24 20:12:09', '', 1366, 'http://localhost/index.php/2019/02/24/1366-revision-v1/', 0, 'revision', '', 0),
(1403, 1, '2019-02-25 00:39:34', '2019-02-25 00:39:34', '', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-25 00:39:34', '2019-02-25 00:39:34', '', 5, 'http://localhost/index.php/2019/02/25/5-revision-v1/', 0, 'revision', '', 0),
(1404, 1, '2019-02-25 00:39:58', '2019-02-25 00:39:58', '', 'slider_main', '', 'inherit', 'open', 'closed', '', 'slider_main', '', '', '2019-02-25 00:39:58', '2019-02-25 00:39:58', '', 5, 'http://localhost/wp-content/uploads/2019/02/slider_main.jpg', 0, 'attachment', 'image/jpeg', 0),
(1405, 1, '2019-02-25 00:40:07', '2019-02-25 00:40:07', '<img class=\"alignnone size-medium wp-image-1404\" src=\"http://localhost/wp-content/uploads/2019/02/slider_main-300x110.jpg\" alt=\"\" width=\"300\" height=\"110\" /><img class=\"alignnone size-medium wp-image-1404\" src=\"http://localhost/wp-content/uploads/2019/02/slider_main-300x110.jpg\" alt=\"\" width=\"300\" height=\"110\" />', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-25 00:40:07', '2019-02-25 00:40:07', '', 5, 'http://localhost/index.php/2019/02/25/5-revision-v1/', 0, 'revision', '', 0),
(1407, 1, '2019-02-25 00:41:35', '2019-02-25 00:41:35', '[gallery ids=\"1404\"]\r\n\r\n[gallery ids=\"1404\"]', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-25 00:41:35', '2019-02-25 00:41:35', '', 5, 'http://localhost/index.php/2019/02/25/5-revision-v1/', 0, 'revision', '', 0),
(1408, 1, '2019-02-25 00:44:52', '2019-02-25 00:44:52', '[gallery size=\"full\" ids=\"1404\"]\r\n\r\n[gallery ids=\"1404\"]', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-25 00:44:52', '2019-02-25 00:44:52', '', 5, 'http://localhost/index.php/2019/02/25/5-revision-v1/', 0, 'revision', '', 0),
(1409, 1, '2019-02-25 01:24:11', '2019-02-25 01:24:11', '[gallery size=\"full\" ids=\"1404\"]\r\n\r\n[gallery size=\"full\" ids=\"1404\"]', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-25 01:24:11', '2019-02-25 01:24:11', '', 5, 'http://localhost/index.php/2019/02/25/5-revision-v1/', 0, 'revision', '', 0),
(1416, 1, '2019-02-25 20:50:46', '2019-02-25 20:50:46', '', 'Аренда спецтехники', '', 'publish', 'closed', 'closed', '', 'technic-rent', '', '', '2019-04-09 08:30:25', '2019-04-09 08:30:25', '', 1487, 'http://localhost/?page_id=1416', 0, 'page', '', 0),
(1417, 1, '2019-02-25 20:50:46', '2019-02-25 20:50:46', '', 'Аренда спецтехники', '', 'inherit', 'closed', 'closed', '', '1416-revision-v1', '', '', '2019-02-25 20:50:46', '2019-02-25 20:50:46', '', 1416, 'http://localhost/index.php/2019/02/25/1416-revision-v1/', 0, 'revision', '', 0),
(1420, 1, '2019-02-25 21:41:49', '2019-02-25 21:41:49', '', 'Эскаваторы-погрузчики', '', 'trash', 'closed', 'closed', '', 'eskov-on__trashed', '', '', '2019-04-22 07:45:12', '2019-04-22 07:45:12', '', 0, 'http://localhost/?page_id=1420', 0, 'page', '', 0),
(1421, 1, '2019-02-25 21:41:49', '2019-02-25 21:41:49', '', 'Эскаваторы-погрузчики', '', 'inherit', 'closed', 'closed', '', '1420-revision-v1', '', '', '2019-02-25 21:41:49', '2019-02-25 21:41:49', '', 1420, 'http://localhost/index.php/2019/02/25/1420-revision-v1/', 0, 'revision', '', 0),
(1424, 1, '2019-02-25 21:43:26', '2019-02-25 21:43:26', '', 'rent2', '', 'inherit', 'open', 'closed', '', 'rent2', '', '', '2019-02-25 21:43:26', '2019-02-25 21:43:26', '', 0, 'http://localhost/wp-content/uploads/2019/02/rent2.png', 0, 'attachment', 'image/png', 0),
(1428, 1, '2019-02-26 02:22:34', '2019-02-26 02:22:34', '', 'spec', '', 'inherit', 'open', 'closed', '', 'spec', '', '', '2019-02-26 02:22:34', '2019-02-26 02:22:34', '', 0, 'http://localhost/wp-content/uploads/2019/02/spec.jpg', 0, 'attachment', 'image/jpeg', 0),
(1438, 1, '2019-02-26 02:49:39', '2019-02-26 02:49:39', '', 'spec2', '', 'inherit', 'open', 'closed', '', 'spec2', '', '', '2019-02-26 02:49:39', '2019-02-26 02:49:39', '', 0, 'http://localhost/wp-content/uploads/2019/02/spec2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1439, 1, '2019-02-26 02:50:44', '2019-02-26 02:50:44', '', 'Самосвалы', '', 'inherit', 'open', 'closed', '', 'spec3', '', '', '2019-05-04 16:39:06', '2019-05-04 16:39:06', '', 0, 'http://localhost/wp-content/uploads/2019/02/spec3.jpg', 0, 'attachment', 'image/jpeg', 0),
(1440, 1, '2019-02-26 02:51:17', '2019-02-26 02:51:17', '', 'spec4', '', 'inherit', 'open', 'closed', '', 'spec4', '', '', '2019-02-26 02:51:17', '2019-02-26 02:51:17', '', 0, 'http://localhost/wp-content/uploads/2019/02/spec4.jpg', 0, 'attachment', 'image/jpeg', 0),
(1442, 1, '2019-02-26 02:51:46', '2019-02-26 02:51:46', '', 'spec5', '', 'inherit', 'open', 'closed', '', 'spec5', '', '', '2019-02-26 02:51:46', '2019-02-26 02:51:46', '', 0, 'http://localhost/wp-content/uploads/2019/02/spec5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1448, 1, '2019-03-01 13:29:34', '2019-03-01 13:29:34', '{\"id\":\"1448\",\"field_id\":4,\"fields\":{\"1\":{\"id\":\"1\",\"type\":\"text\",\"label\":\"\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\\u0412\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f\",\"default_value\":\"\",\"css\":\"\",\"input_mask\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"text\",\"label\":\"\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"*\\u0412\\u0430\\u0448 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d \\u0438\\u043b\\u0438 e-mail\",\"default_value\":\"\",\"css\":\".require\",\"input_mask\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"textarea\",\"label\":\"\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435...\",\"css\":\"\"}},\"settings\":{\"form_title\":\"Callback\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"\\u041e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u0437\\u0430\\u044f\\u0432\\u043a\\u0443\",\"submit_text_processing\":\"\\u041e\\u0442\\u0441\\u044b\\u043b\\u0430\\u0435\\u0442\\u0441\\u044f\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Blank Form Entry\",\"sender_name\":\"{field_id=\\\"1\\\"}\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"page\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"1359\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"blank\"}}', 'Callback', '', 'publish', 'closed', 'closed', '', 'blank-form', '', '', '2019-03-08 16:56:29', '2019-03-08 16:56:29', '', 0, 'http://localhost/?post_type=wpforms&#038;p=1448', 0, 'wpforms', '', 0),
(1449, 1, '2019-03-05 20:26:34', '2019-03-05 20:26:34', '{\"id\":\"1449\",\"field_id\":4,\"fields\":{\"1\":{\"id\":\"1\",\"type\":\"text\",\"label\":\"\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\\u0412\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f\",\"default_value\":\"\",\"css\":\"\",\"input_mask\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"text\",\"label\":\"\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"*\\u0412\\u0430\\u0448 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d \\u0438\\u043b\\u0438 e-mail\",\"default_value\":\"\",\"css\":\".require\",\"input_mask\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"textarea\",\"label\":\"\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435...\",\"css\":\"\"}},\"settings\":{\"form_title\":\"Callback (ID #1449)\",\"form_desc\":\"\",\"form_class\":\"mfp-hide\",\"submit_text\":\"\\u041e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u0437\\u0430\\u044f\\u0432\\u043a\\u0443\",\"submit_text_processing\":\"\\u041e\\u0442\\u0441\\u044b\\u043b\\u0430\\u0435\\u0442\\u0441\\u044f\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Blank Form Entry\",\"sender_name\":\"{field_id=\\\"1\\\"}\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"page\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"1450\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"blank\"}}', 'Callback (ID #1449)', '', 'publish', 'closed', 'closed', '', 'callback', '', '', '2019-03-09 18:50:16', '2019-03-09 18:50:16', '', 0, 'http://localhost/?post_type=wpforms&#038;p=1449', 0, 'wpforms', '', 0),
(1450, 1, '2019-03-08 18:31:42', '2019-03-08 18:31:42', '', 'Confirmation-page [submit]', '', 'publish', 'closed', 'closed', '', 'confirmation-page-submit', '', '', '2019-03-09 15:52:34', '2019-03-09 15:52:34', '', 0, 'http://localhost/?page_id=1450', 0, 'page', '', 0),
(1451, 1, '2019-03-08 18:31:42', '2019-03-08 18:31:42', '', 'Confirmation-page [submit]', '', 'inherit', 'closed', 'closed', '', '1450-revision-v1', '', '', '2019-03-08 18:31:42', '2019-03-08 18:31:42', '', 1450, 'http://localhost/index.php/2019/03/08/1450-revision-v1/', 0, 'revision', '', 0),
(1453, 1, '2019-03-09 15:40:21', '2019-03-09 15:40:21', 'Спасибо за заявку! Наши специалисты обязательно свяжутся с Вами в кратчайшие сроки.\n\n<a href = \'<?php get_template_directory_uri() ?>\' >Вернуться на главную.', 'Confirmation-page [submit]', '', 'inherit', 'closed', 'closed', '', '1450-autosave-v1', '', '', '2019-03-09 15:40:21', '2019-03-09 15:40:21', '', 1450, 'http://localhost/index.php/2019/03/09/1450-autosave-v1/', 0, 'revision', '', 0),
(1454, 1, '2019-03-09 15:40:53', '2019-03-09 15:40:53', 'Спасибо за заявку! Наши специалисты обязательно свяжутся с Вами в кратчайшие сроки.\r\n\r\nВернуться на главную.', 'Confirmation-page [submit]', '', 'inherit', 'closed', 'closed', '', '1450-revision-v1', '', '', '2019-03-09 15:40:53', '2019-03-09 15:40:53', '', 1450, 'http://localhost/index.php/2019/03/09/1450-revision-v1/', 0, 'revision', '', 0),
(1455, 1, '2019-03-09 15:52:34', '2019-03-09 15:52:34', '', 'Confirmation-page [submit]', '', 'inherit', 'closed', 'closed', '', '1450-revision-v1', '', '', '2019-03-09 15:52:34', '2019-03-09 15:52:34', '', 1450, 'http://localhost/index.php/2019/03/09/1450-revision-v1/', 0, 'revision', '', 0),
(1456, 1, '2019-03-09 21:58:04', '2019-03-09 21:58:04', '[gallery size=\"full\" ids=\"1428,1440\"]', 'Краны-манипуляторы', '', 'publish', 'open', 'closed', '', 'cran-manipulator', '', '', '2019-05-04 12:31:26', '2019-05-04 12:31:26', '', 0, 'http://localhost/?post_type=product&#038;p=1456', 1, 'product', '', 0),
(1460, 1, '2019-03-08 22:04:29', '2019-03-08 22:04:29', '[gallery size=\"full\" ids=\"1438,1574\"]', 'Эскаваторы-погрузчики', '', 'publish', 'open', 'closed', '', 'escolator-pogr', '', '', '2019-05-04 12:32:09', '2019-05-04 12:32:09', '', 0, 'http://localhost/?post_type=product&#038;p=1460', 2, 'product', '', 0),
(1462, 1, '2019-03-25 08:13:59', '2019-03-25 08:13:59', '', 'Эскаваторы-погрузчики (Copy)', '', 'publish', 'open', 'closed', '', 'escav-pogr-1', '', '', '2019-03-27 06:17:35', '2019-03-27 06:17:35', '', 0, 'http://localhost/?post_type=product&#038;p=1462', 3, 'product', '', 0),
(1463, 1, '2019-03-27 11:37:27', '2019-03-27 11:37:27', '[gallery size=\"full\" ids=\"1439,1574\"]', 'Самосвалы', '', 'publish', 'open', 'closed', '', 'samosvaly', '', '', '2019-05-04 16:39:09', '2019-05-04 16:39:09', '', 0, 'http://localhost/?post_type=product&#038;p=1463', 4, 'product', '', 0),
(1464, 1, '2019-03-27 11:38:36', '2019-03-27 11:38:36', '', 'rent3', '', 'inherit', 'open', 'closed', '', 'rent3', '', '', '2019-03-27 11:38:36', '2019-03-27 11:38:36', '', 1463, 'http://localhost/wp-content/uploads/2019/03/rent3.png', 0, 'attachment', 'image/png', 0),
(1465, 1, '2019-03-27 12:28:33', '2019-03-27 12:28:33', '[gallery size=\"full\" ids=\"1440,1574\"]', 'Автокраны', '', 'publish', 'open', 'closed', '', 'autokran', '', '', '2019-05-04 15:20:50', '2019-05-04 15:20:50', '', 0, 'http://localhost/?post_type=product&#038;p=1465', 5, 'product', '', 0),
(1466, 1, '2019-03-27 12:29:09', '2019-03-27 12:29:09', '', 'rent4', '', 'inherit', 'open', 'closed', '', 'rent4', '', '', '2019-03-27 12:29:09', '2019-03-27 12:29:09', '', 1465, 'http://localhost/wp-content/uploads/2019/03/rent4.png', 0, 'attachment', 'image/png', 0),
(1467, 1, '2019-03-27 12:35:05', '2019-03-27 12:35:05', '[gallery size=\"full\" ids=\"1442,1574\"]', 'Шаланды', '', 'publish', 'open', 'closed', '', 'shalands', '', '', '2019-05-04 15:22:12', '2019-05-04 15:22:12', '', 0, 'http://localhost/?post_type=product&#038;p=1467', 6, 'product', '', 0),
(1468, 1, '2019-03-27 12:35:36', '2019-03-27 12:35:36', '', 'rent5', '', 'inherit', 'open', 'closed', '', 'rent5', '', '', '2019-03-27 12:35:36', '2019-03-27 12:35:36', '', 1467, 'http://localhost/wp-content/uploads/2019/03/rent5.png', 0, 'attachment', 'image/png', 0),
(1469, 1, '2019-03-28 14:22:21', '2019-03-28 14:22:21', '', 'Самосвалы на базе авто ГАЗ', '', 'publish', 'open', 'closed', '', 'gazsamosv', '', '', '2019-03-30 07:14:28', '2019-03-30 07:14:28', '', 0, 'http://localhost/?post_type=product&#038;p=1469', 3, 'product', '', 0),
(1470, 1, '2019-03-28 14:23:44', '2019-03-28 14:23:44', '', 'Самосвалы на базе авто Камаз', '', 'publish', 'open', 'closed', '', 'sasmoskamaz', '', '', '2019-03-30 08:25:57', '2019-03-30 08:25:57', '', 0, 'http://localhost/?post_type=product&#038;p=1470', 3, 'product', '', 0),
(1473, 1, '2019-03-28 14:26:22', '2019-03-28 14:26:22', '', 'dump2', '', 'inherit', 'open', 'closed', '', 'dump2', '', '', '2019-03-28 14:26:22', '2019-03-28 14:26:22', '', 1470, 'http://localhost/wp-content/uploads/2019/03/dump2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1474, 1, '2019-03-28 14:26:49', '2019-03-28 14:26:49', '', 'dump', '', 'inherit', 'open', 'closed', '', 'dump', '', '', '2019-03-28 14:26:49', '2019-03-28 14:26:49', '', 1469, 'http://localhost/wp-content/uploads/2019/03/dump.jpg', 0, 'attachment', 'image/jpeg', 0),
(1475, 1, '2019-03-28 14:27:10', '2019-03-28 14:27:10', '', 'Самосвалы Китайцы', '', 'publish', 'open', 'closed', '', 'samoschine', '', '', '2019-03-28 17:38:40', '2019-03-28 17:38:40', '', 0, 'http://localhost/?post_type=product&#038;p=1475', 3, 'product', '', 0),
(1477, 1, '2019-03-29 13:28:35', '2019-03-29 13:28:35', '', 'Эскаваторы-погрузчики', '', 'inherit', 'closed', 'closed', '', '1460-autosave-v1', '', '', '2019-03-29 13:28:35', '2019-03-29 13:28:35', '', 1460, 'http://localhost/index.php/2019/03/29/1460-autosave-v1/', 0, 'revision', '', 0),
(1481, 1, '2019-03-31 06:45:13', '2019-03-31 06:45:13', ' ', '', '', 'publish', 'closed', 'closed', '', '1481', '', '', '2019-04-22 07:52:11', '2019-04-22 07:52:11', '', 0, 'http://localhost/?p=1481', 8, 'nav_menu_item', '', 0),
(1482, 1, '2019-03-31 06:45:12', '2019-03-31 06:45:12', ' ', '', '', 'publish', 'closed', 'closed', '', '1482', '', '', '2019-04-22 07:52:10', '2019-04-22 07:52:10', '', 0, 'http://localhost/?p=1482', 5, 'nav_menu_item', '', 0),
(1483, 1, '2019-03-31 06:45:12', '2019-03-31 06:45:12', ' ', '', '', 'publish', 'closed', 'closed', '', '1483', '', '', '2019-04-22 07:52:10', '2019-04-22 07:52:10', '', 0, 'http://localhost/?p=1483', 6, 'nav_menu_item', '', 0),
(1484, 1, '2019-03-31 06:45:11', '2019-03-31 06:45:11', ' ', '', '', 'publish', 'closed', 'closed', '', '1484', '', '', '2019-04-22 07:52:10', '2019-04-22 07:52:10', '', 0, 'http://localhost/?p=1484', 4, 'nav_menu_item', '', 0),
(1485, 1, '2019-03-31 06:45:11', '2019-03-31 06:45:11', ' ', '', '', 'publish', 'closed', 'closed', '', '1485', '', '', '2019-04-22 07:52:11', '2019-04-22 07:52:11', '', 0, 'http://localhost/?p=1485', 7, 'nav_menu_item', '', 0),
(1487, 1, '2019-04-01 13:39:21', '2019-04-01 13:39:21', '', 'Услуги и продукция', '', 'publish', 'closed', 'closed', '', 'services_production', '', '', '2019-04-14 15:33:56', '2019-04-14 15:33:56', '', 1547, 'http://localhost/?page_id=1487', 0, 'page', '', 0),
(1488, 1, '2019-04-01 13:39:21', '2019-04-01 13:39:21', '', 'Услуги и продукция', '', 'inherit', 'closed', 'closed', '', '1487-revision-v1', '', '', '2019-04-01 13:39:21', '2019-04-01 13:39:21', '', 1487, 'http://localhost/index.php/2019/04/01/1487-revision-v1/', 0, 'revision', '', 0),
(1491, 1, '2019-04-02 19:28:00', '2019-04-02 19:28:00', ' ', '', '', 'publish', 'closed', 'closed', '', '1491', '', '', '2019-04-09 08:33:26', '2019-04-09 08:33:26', '', 0, 'http://localhost/?p=1491', 2, 'nav_menu_item', '', 0),
(1492, 1, '2019-04-02 19:30:36', '2019-04-02 19:30:36', ' ', '', '', 'publish', 'closed', 'closed', '', '1492', '', '', '2019-04-09 08:33:27', '2019-04-09 08:33:27', '', 0, 'http://localhost/?p=1492', 4, 'nav_menu_item', '', 0),
(1493, 1, '2019-04-02 19:30:36', '2019-04-02 19:30:36', ' ', '', '', 'publish', 'closed', 'closed', '', '1493', '', '', '2019-04-09 08:33:27', '2019-04-09 08:33:27', '', 0, 'http://localhost/?p=1493', 5, 'nav_menu_item', '', 0),
(1494, 1, '2019-04-02 19:30:37', '2019-04-02 19:30:37', ' ', '', '', 'publish', 'closed', 'closed', '', '1494', '', '', '2019-04-09 08:33:27', '2019-04-09 08:33:27', '', 0, 'http://localhost/?p=1494', 3, 'nav_menu_item', '', 0),
(1495, 1, '2019-04-02 19:30:37', '2019-04-02 19:30:37', ' ', '', '', 'publish', 'closed', 'closed', '', '1495', '', '', '2019-04-09 08:33:26', '2019-04-09 08:33:26', '', 0, 'http://localhost/?p=1495', 1, 'nav_menu_item', '', 0),
(1496, 1, '2019-04-03 10:25:51', '2019-04-03 10:25:51', '', 'Карта сайта', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2019-04-27 08:48:53', '2019-04-27 08:48:53', '', 1547, 'http://localhost/?page_id=1496', 0, 'page', '', 0),
(1497, 1, '2019-04-03 10:25:51', '2019-04-03 10:25:51', '[simple-sitemap]', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '1496-revision-v1', '', '', '2019-04-03 10:25:51', '2019-04-03 10:25:51', '', 1496, 'http://localhost/index.php/2019/04/03/1496-revision-v1/', 0, 'revision', '', 0),
(1499, 1, '2019-04-03 12:33:55', '2019-04-03 12:33:55', '<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<p>[simple-sitemap]</p>\n<p> </p>\n\n<!-- wp:shortcode -->\nsimple-sitemap-group\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '1496-revision-v1', '', '', '2019-04-03 12:33:55', '2019-04-03 12:33:55', '', 1496, 'http://localhost/index.php/2019/04/03/1496-revision-v1/', 0, 'revision', '', 0),
(1500, 1, '2019-04-03 12:34:02', '2019-04-03 12:34:02', '<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:shortcode -->\nsimple-sitemap-group\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '1496-revision-v1', '', '', '2019-04-03 12:34:02', '2019-04-03 12:34:02', '', 1496, 'http://localhost/index.php/2019/04/03/1496-revision-v1/', 0, 'revision', '', 0),
(1502, 1, '2019-04-03 12:37:56', '2019-04-03 12:37:56', '<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:shortcode -->\nsimple-sitemap-group\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '1496-autosave-v1', '', '', '2019-04-03 12:37:56', '2019-04-03 12:37:56', '', 1496, 'http://localhost/index.php/2019/04/03/1496-autosave-v1/', 0, 'revision', '', 0),
(1503, 1, '2019-04-03 12:38:53', '2019-04-03 12:38:53', '<!-- wp:shortcode -->\r\n<p>simple-sitemap-group</p>\r\n<!-- /wp:shortcode -->\r\n<p>&nbsp;</p>', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '1496-revision-v1', '', '', '2019-04-03 12:38:53', '2019-04-03 12:38:53', '', 1496, 'http://localhost/index.php/2019/04/03/1496-revision-v1/', 0, 'revision', '', 0),
(1504, 1, '2019-04-03 12:39:07', '2019-04-03 12:39:07', '<!-- wp:shortcode -->\r\n<p>simple-sitemap-group</p>\r\n<!-- /wp:shortcode -->', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '1496-revision-v1', '', '', '2019-04-03 12:39:07', '2019-04-03 12:39:07', '', 1496, 'http://localhost/index.php/2019/04/03/1496-revision-v1/', 0, 'revision', '', 0),
(1505, 1, '2019-04-03 12:44:20', '2019-04-03 12:44:20', '<!-- wp:shortcode -->\r\n[simple-sitemap-group]\r\n<!-- /wp:shortcode -->', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '1496-revision-v1', '', '', '2019-04-03 12:44:20', '2019-04-03 12:44:20', '', 1496, 'http://localhost/index.php/2019/04/03/1496-revision-v1/', 0, 'revision', '', 0),
(1506, 1, '2019-04-03 12:45:14', '2019-04-03 12:45:14', '<?php echo do_shortcode(\'[simple-sitemap-group]\'); ?>', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '1496-revision-v1', '', '', '2019-04-03 12:45:14', '2019-04-03 12:45:14', '', 1496, 'http://localhost/index.php/2019/04/03/1496-revision-v1/', 0, 'revision', '', 0),
(1507, 1, '2019-04-03 12:45:28', '2019-04-03 12:45:28', '', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '1496-revision-v1', '', '', '2019-04-03 12:45:28', '2019-04-03 12:45:28', '', 1496, 'http://localhost/index.php/2019/04/03/1496-revision-v1/', 0, 'revision', '', 0),
(1512, 1, '2019-04-05 18:26:11', '2019-04-05 18:26:11', ' ', '', '', 'publish', 'closed', 'closed', '', '1512', '', '', '2019-04-22 07:52:10', '2019-04-22 07:52:10', '', 1487, 'http://localhost/?p=1512', 3, 'nav_menu_item', '', 0),
(1513, 1, '2019-04-05 19:39:49', '2019-04-05 19:39:49', '', 'Аренда спецтехники', '', 'trash', 'open', 'closed', '', 'technic-rent__trashed', '', '', '2019-04-09 08:25:22', '2019-04-09 08:25:22', '', 0, 'http://localhost/?post_type=product&#038;p=1513', 0, 'product', '', 0),
(1515, 1, '2019-04-09 08:29:37', '2019-04-09 08:29:37', 'asfasdfasdfasfd', 'Аренда спецтехники', '', 'inherit', 'closed', 'closed', '', '1416-revision-v1', '', '', '2019-04-09 08:29:37', '2019-04-09 08:29:37', '', 1416, 'http://localhost/index.php/2019/04/09/1416-revision-v1/', 0, 'revision', '', 0),
(1516, 1, '2019-04-09 08:29:52', '2019-04-09 08:29:52', '', 'Аренда спецтехники', '', 'inherit', 'closed', 'closed', '', '1416-revision-v1', '', '', '2019-04-09 08:29:52', '2019-04-09 08:29:52', '', 1416, 'http://localhost/index.php/2019/04/09/1416-revision-v1/', 0, 'revision', '', 0),
(1519, 1, '2019-04-09 09:45:51', '2019-04-09 09:45:51', '', 'Главная', '', 'trash', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f__trashed', '', '', '2019-04-09 09:46:26', '2019-04-09 09:46:26', '', 0, 'http://localhost/?page_id=1519', 0, 'page', '', 0),
(1520, 1, '2019-04-09 09:45:51', '2019-04-09 09:45:51', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '1519-revision-v1', '', '', '2019-04-09 09:45:51', '2019-04-09 09:45:51', '', 1519, 'http://localhost/index.php/2019/04/09/1519-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1522, 1, '2019-04-09 09:49:39', '2019-04-09 09:49:39', ' ', '', '', 'publish', 'closed', 'closed', '', '1522', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 1547, 'http://localhost/?p=1522', 2, 'nav_menu_item', '', 0),
(1523, 1, '2019-04-09 09:49:39', '2019-04-09 09:49:39', ' ', '', '', 'publish', 'closed', 'closed', '', '1523', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 1487, 'http://localhost/?p=1523', 3, 'nav_menu_item', '', 0),
(1524, 1, '2019-04-09 09:49:43', '2019-04-09 09:49:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1524', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 1487, 'http://localhost/?p=1524', 12, 'nav_menu_item', '', 0),
(1525, 1, '2019-04-09 09:49:43', '2019-04-09 09:49:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1525', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 1487, 'http://localhost/?p=1525', 13, 'nav_menu_item', '', 0),
(1526, 1, '2019-04-09 09:49:42', '2019-04-09 09:49:42', ' ', '', '', 'publish', 'closed', 'closed', '', '1526', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 0, 'http://localhost/?p=1526', 11, 'nav_menu_item', '', 0),
(1527, 1, '2019-04-09 09:49:42', '2019-04-09 09:49:42', ' ', '', '', 'publish', 'closed', 'closed', '', '1527', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 0, 'http://localhost/?p=1527', 10, 'nav_menu_item', '', 0),
(1528, 1, '2019-04-09 09:49:40', '2019-04-09 09:49:40', ' ', '', '', 'publish', 'closed', 'closed', '', '1528', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 0, 'http://localhost/?p=1528', 6, 'nav_menu_item', '', 0),
(1529, 1, '2019-04-09 09:49:40', '2019-04-09 09:49:40', ' ', '', '', 'publish', 'closed', 'closed', '', '1529', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 0, 'http://localhost/?p=1529', 4, 'nav_menu_item', '', 0),
(1530, 1, '2019-04-09 09:49:40', '2019-04-09 09:49:40', ' ', '', '', 'publish', 'closed', 'closed', '', '1530', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 0, 'http://localhost/?p=1530', 5, 'nav_menu_item', '', 0),
(1531, 1, '2019-04-09 09:49:42', '2019-04-09 09:49:42', ' ', '', '', 'publish', 'closed', 'closed', '', '1531', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 0, 'http://localhost/?p=1531', 9, 'nav_menu_item', '', 0),
(1532, 1, '2019-04-09 09:49:41', '2019-04-09 09:49:41', ' ', '', '', 'publish', 'closed', 'closed', '', '1532', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 0, 'http://localhost/?p=1532', 8, 'nav_menu_item', '', 0),
(1533, 1, '2019-04-09 09:49:41', '2019-04-09 09:49:41', ' ', '', '', 'publish', 'closed', 'closed', '', '1533', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 0, 'http://localhost/?p=1533', 7, 'nav_menu_item', '', 0),
(1534, 1, '2019-04-09 18:06:34', '2019-04-09 18:06:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1534', '', '', '2019-04-23 13:58:36', '2019-04-23 13:58:36', '', 0, 'http://localhost/?p=1534', 16, 'nav_menu_item', '', 0),
(1535, 1, '2019-04-10 20:12:38', '2019-04-10 20:12:38', '', 'Песок речной', '', 'publish', 'open', 'closed', '', 'reiver_sand', '', '', '2019-04-14 10:00:00', '2019-04-14 10:00:00', '', 0, 'http://localhost/?post_type=product&#038;p=1535', 0, 'product', '', 0),
(1536, 1, '2019-04-10 20:14:05', '2019-04-10 20:14:05', ' ', '', '', 'publish', 'closed', 'closed', '', '1536', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 0, 'http://localhost/?p=1536', 14, 'nav_menu_item', '', 0),
(1537, 1, '2019-04-10 20:14:40', '2019-04-10 20:14:40', ' ', '', '', 'publish', 'closed', 'closed', '', '1537', '', '', '2019-04-22 07:52:11', '2019-04-22 07:52:11', '', 0, 'http://localhost/?p=1537', 10, 'nav_menu_item', '', 0),
(1538, 1, '2019-04-10 20:17:43', '2019-04-10 20:17:43', '', 'sand', '', 'inherit', 'open', 'closed', '', 'sand', '', '', '2019-04-10 20:17:43', '2019-04-10 20:17:43', '', 1535, 'http://localhost/wp-content/uploads/2019/04/sand.png', 0, 'attachment', 'image/png', 0),
(1539, 1, '2019-04-11 06:33:53', '2019-04-11 06:33:53', '', 'Песок карьерный', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2019-04-11 06:33:53', '2019-04-11 06:33:53', '', 0, 'http://localhost/?post_type=product&#038;p=1539', 0, 'product', '', 0),
(1540, 1, '2019-04-11 06:42:23', '2019-04-11 06:42:23', '', 'Песок карьерный', '', 'publish', 'open', 'closed', '', 'pesok-carier', '', '', '2019-04-14 09:29:02', '2019-04-14 09:29:02', '', 0, 'http://localhost/?post_type=product&#038;p=1540', 0, 'product', '', 0),
(1542, 1, '2019-04-11 06:54:06', '2019-04-11 06:54:06', '', 'ПГС', '', 'trash', 'open', 'closed', '', '%d0%bf%d0%b3%d1%81__trashed', '', '', '2019-04-11 07:04:26', '2019-04-11 07:04:26', '', 0, 'http://localhost/?post_type=product&#038;p=1542', 0, 'product', '', 0),
(1543, 1, '2019-04-11 21:31:18', '2019-04-11 21:31:18', ' ', '', '', 'publish', 'closed', 'closed', '', '1543', '', '', '2019-04-22 07:52:11', '2019-04-22 07:52:11', '', 0, 'http://localhost/?p=1543', 11, 'nav_menu_item', '', 0),
(1545, 1, '2019-04-11 21:31:12', '2019-04-11 21:31:12', '', 'sand2', '', 'inherit', 'open', 'closed', '', 'sand2', '', '', '2019-04-11 21:31:12', '2019-04-11 21:31:12', '', 0, 'http://localhost/wp-content/uploads/2019/04/sand2.png', 0, 'attachment', 'image/png', 0),
(1546, 1, '2019-04-14 13:27:53', '2019-04-14 13:27:53', '', 'Карта сайта', '', 'inherit', 'closed', 'closed', '', '1496-revision-v1', '', '', '2019-04-14 13:27:53', '2019-04-14 13:27:53', '', 1496, 'http://localhost/index.php/2019/04/14/1496-revision-v1/', 0, 'revision', '', 0),
(1547, 1, '2019-04-14 15:22:30', '2019-04-14 15:22:30', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-04-14 15:52:16', '2019-04-14 15:52:16', '', 0, 'http://localhost/?page_id=1547', 0, 'page', '', 0),
(1548, 1, '2019-04-14 15:22:30', '2019-04-14 15:22:30', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '1547-revision-v1', '', '', '2019-04-14 15:22:30', '2019-04-14 15:22:30', '', 1547, 'http://localhost/index.php/2019/04/14/1547-revision-v1/', 0, 'revision', '', 0),
(1549, 1, '2019-04-14 15:25:43', '2019-04-14 15:25:43', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-04-14 15:25:43\"\n    },\n    \"page_on_front\": {\n        \"value\": \"1547\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-04-14 15:25:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2d05829d-329b-4c13-a9da-ef6566c26e57', '', '', '2019-04-14 15:25:43', '2019-04-14 15:25:43', '', 0, 'http://localhost/index.php/2019/04/14/2d05829d-329b-4c13-a9da-ef6566c26e57/', 0, 'customize_changeset', '', 0),
(1550, 1, '2019-04-14 15:35:34', '2019-04-14 15:35:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1550', '', '', '2019-04-22 07:52:10', '2019-04-22 07:52:10', '', 0, 'http://localhost/?p=1550', 1, 'nav_menu_item', '', 0),
(1551, 1, '2019-04-14 15:35:35', '2019-04-14 15:35:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1551', '', '', '2019-04-22 07:52:10', '2019-04-22 07:52:10', '', 1547, 'http://localhost/?p=1551', 2, 'nav_menu_item', '', 0),
(1552, 1, '2019-04-14 15:51:16', '2019-04-14 15:51:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '1547-revision-v1', '', '', '2019-04-14 15:51:16', '2019-04-14 15:51:16', '', 1547, 'http://localhost/index.php/2019/04/14/1547-revision-v1/', 0, 'revision', '', 0),
(1553, 1, '2019-04-14 15:52:16', '2019-04-14 15:52:16', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '1547-revision-v1', '', '', '2019-04-14 15:52:16', '2019-04-14 15:52:16', '', 1547, 'http://localhost/index.php/2019/04/14/1547-revision-v1/', 0, 'revision', '', 0),
(1556, 1, '2019-04-22 07:52:40', '2019-04-22 07:52:40', ' ', '', '', 'publish', 'closed', 'closed', '', '1556', '', '', '2019-04-23 13:58:35', '2019-04-23 13:58:35', '', 1547, 'http://localhost/?p=1556', 15, 'nav_menu_item', '', 0),
(1557, 1, '2019-04-22 08:24:55', '2019-04-22 08:24:55', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2019-04-22 08:25:14', '2019-04-22 08:25:14', '', 0, 'http://localhost/?page_id=1557', 0, 'page', '', 0),
(1559, 1, '2019-04-22 08:22:04', '2019-04-22 08:22:04', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2019-04-27 08:49:38', '2019-04-27 08:49:38', '', 1547, 'http://localhost/?page_id=1559', 0, 'page', '', 0),
(1560, 1, '2019-04-22 08:22:04', '2019-04-22 08:22:04', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '1559-revision-v1', '', '', '2019-04-22 08:22:04', '2019-04-22 08:22:04', '', 1559, 'http://localhost/index.php/2019/04/22/1559-revision-v1/', 0, 'revision', '', 0),
(1561, 1, '2019-04-22 08:22:32', '2019-04-22 08:22:32', ' ', '', '', 'publish', 'closed', 'closed', '', '1561', '', '', '2019-04-23 13:58:36', '2019-04-23 13:58:36', '', 1547, 'http://localhost/?p=1561', 17, 'nav_menu_item', '', 0),
(1562, 1, '2019-04-22 08:24:55', '2019-04-22 08:24:55', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '1557-revision-v1', '', '', '2019-04-22 08:24:55', '2019-04-22 08:24:55', '', 1557, 'http://localhost/index.php/2019/04/22/1557-revision-v1/', 0, 'revision', '', 0),
(1563, 1, '2019-04-23 13:58:22', '2019-04-23 13:58:22', ' ', '', '', 'publish', 'closed', 'closed', '', '1563', '', '', '2019-04-23 13:58:34', '2019-04-23 13:58:34', '', 0, 'http://localhost/?p=1563', 1, 'nav_menu_item', '', 0),
(1564, 1, '2019-04-23 14:11:37', '2019-04-23 14:11:37', '{\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-04-23 14:11:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4d50ad4-c101-47a5-bbb5-9655db4d4d43', '', '', '2019-04-23 14:11:37', '2019-04-23 14:11:37', '', 0, 'http://localhost/index.php/2019/04/23/c4d50ad4-c101-47a5-bbb5-9655db4d4d43/', 0, 'customize_changeset', '', 0),
(1565, 1, '2019-04-23 15:12:02', '2019-04-23 15:12:02', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-04-23 15:12:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40f8a2a8-a12d-4ed5-9866-c358ec93e7d4', '', '', '2019-04-23 15:12:02', '2019-04-23 15:12:02', '', 0, 'http://localhost/2019/04/23/40f8a2a8-a12d-4ed5-9866-c358ec93e7d4/', 0, 'customize_changeset', '', 0),
(1566, 1, '2019-04-27 17:29:38', '2019-04-27 17:29:38', '', 'elements', '', 'publish', 'closed', 'closed', '', 'elements', '', '', '2019-04-27 17:31:15', '2019-04-27 17:31:15', '', 1547, 'http://localhost/?page_id=1566', 0, 'page', '', 0),
(1567, 1, '2019-04-27 17:29:38', '2019-04-27 17:29:38', '', 'elements', '', 'inherit', 'closed', 'closed', '', '1566-revision-v1', '', '', '2019-04-27 17:29:38', '2019-04-27 17:29:38', '', 1566, 'http://localhost/index.php/2019/04/27/1566-revision-v1/', 0, 'revision', '', 0),
(1568, 1, '2019-05-04 12:31:03', '2019-05-04 12:31:03', '[gallery ids=\"1464,1574\" size=\"full\"]', 'Краны-манипуляторы', '', 'inherit', 'closed', 'closed', '', '1456-autosave-v1', '', '', '2019-05-04 12:31:03', '2019-05-04 12:31:03', '', 1456, 'http://localhost/index.php/2019/04/27/1456-autosave-v1/', 0, 'revision', '', 0),
(1569, 1, '2019-04-27 20:37:17', '2019-04-27 20:37:17', '<!-- wp:gallery {\"ids\":[1442,1440,1439]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/02/spec5.jpg\" alt=\"\" data-id=\"1442\" data-link=\"http://localhost/spec5/\" class=\"wp-image-1442\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/02/spec4.jpg\" alt=\"\" data-id=\"1440\" data-link=\"http://localhost/spec4/\" class=\"wp-image-1440\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/02/spec3.jpg\" alt=\"\" data-id=\"1439\" data-link=\"http://localhost/spec3/\" class=\"wp-image-1439\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Аренда спецтехники', '', 'inherit', 'closed', 'closed', '', '1416-autosave-v1', '', '', '2019-04-27 20:37:17', '2019-04-27 20:37:17', '', 1416, 'http://localhost/index.php/2019/04/27/1416-autosave-v1/', 0, 'revision', '', 0),
(1570, 1, '2019-04-28 19:52:07', '2019-04-28 19:52:07', '[gallery size=\"full\" ids=\"1404,1348\"]\n\n[gallery size=\"full\" ids=\"1404\"]', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-04-28 19:52:07', '2019-04-28 19:52:07', '', 5, 'http://localhost/index.php/2019/04/28/5-revision-v1/', 0, 'revision', '', 0),
(1571, 1, '2019-04-28 19:54:09', '2019-04-28 19:54:09', '[gallery size=\"full\" ids=\"1404\"]\n\n[gallery size=\"full\" ids=\"1404\"]', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-04-28 19:54:09', '2019-04-28 19:54:09', '', 5, 'http://localhost/index.php/2019/04/28/5-revision-v1/', 0, 'revision', '', 0),
(1573, 1, '2019-04-28 19:56:04', '2019-04-28 19:56:04', '<p>[gallery size=\"full\" ids=\"1404\"]</p>\n<p>[gallery size=\"full\" ids=\"1404\"]</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'main_slider', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-04-28 19:56:04', '2019-04-28 19:56:04', '', 5, 'http://localhost/index.php/2019/04/28/5-revision-v1/', 0, 'revision', '', 0),
(1574, 1, '2019-05-01 15:43:56', '2019-05-01 15:43:56', '', 'big_car', '', 'inherit', 'open', 'closed', '', 'big_car', '', '', '2019-05-01 15:43:56', '2019-05-01 15:43:56', '', 1456, 'http://localhost/wp-content/uploads/2019/03/big_car.jpg', 0, 'attachment', 'image/jpeg', 0),
(1575, 1, '2019-05-03 11:04:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-03 11:04:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=1575', 0, 'post', '', 0),
(1576, 1, '2019-05-03 14:14:35', '2019-05-03 14:14:35', '', 'slider_main', '', 'inherit', 'open', 'closed', '', 'slider_main-2', '', '', '2019-05-03 14:14:35', '2019-05-03 14:14:35', '', 1456, 'http://localhost/wp-content/uploads/2019/03/slider_main.jpg', 0, 'attachment', 'image/jpeg', 0),
(1578, 1, '2019-05-04 10:41:46', '2019-05-04 10:41:46', '<!-- wp:paragraph -->\n<p>Покупка техники для выполнения строительных и ремонтных работ часто невозможна из-за высокой стоимости. Лучшим решением в этом случае является аренда спецтехники на выгодных условиях, например, в компании «СтройСоюз».</p>\n<!-- /wp:paragraph -->', 'Анна Герасимова', '', 'publish', 'open', 'open', '', '%d0%b0%d0%bd%d0%bd%d0%b0-%d0%b3%d0%b5%d1%80%d0%b0%d1%81%d0%b8%d0%bc%d0%be%d0%b2%d0%b0', '', '', '2019-05-04 10:42:26', '2019-05-04 10:42:26', '', 0, 'http://localhost/?p=1578', 0, 'post', '', 0),
(1579, 1, '2019-05-04 09:55:36', '2019-05-04 09:55:36', '', 'feddb1', '', 'inherit', 'open', 'closed', '', 'feddb1', '', '', '2019-05-04 09:55:36', '2019-05-04 09:55:36', '', 1578, 'http://localhost/wp-content/uploads/2019/05/feddb1.png', 0, 'attachment', 'image/png', 0),
(1580, 1, '2019-05-04 10:41:46', '2019-05-04 10:41:46', '<!-- wp:paragraph -->\n<p>Покупка техники для выполнения строительных и ремонтных работ часто невозможна из-за высокой стоимости. Лучшим решением в этом случае является аренда спецтехники на выгодных условиях, например, в компании «СтройСоюз».</p>\n<!-- /wp:paragraph -->', 'Анна Герасимова', '', 'inherit', 'closed', 'closed', '', '1578-revision-v1', '', '', '2019-05-04 10:41:46', '2019-05-04 10:41:46', '', 1578, 'http://localhost/index.php/2019/05/04/1578-revision-v1/', 0, 'revision', '', 0),
(1581, 1, '2019-05-04 11:02:17', '2019-05-04 11:02:17', '<!-- wp:paragraph -->\n<p>Покупка техники для выполнения строительных и ремонтных работ часто невозможна из-за высокой стоимости. Лучшим решением в этом случае является аренда спецтехники на выгодных условиях, например, в компании «СтройСоюз».</p>\n<!-- /wp:paragraph -->', 'Анна Герасимова', '', 'publish', 'open', 'open', '', '%d0%b0%d0%bd%d0%bd%d0%b0-%d0%b3%d0%b5%d1%80%d0%b0%d1%81%d0%b8%d0%bc%d0%be%d0%b2%d0%b0-2', '', '', '2019-05-04 11:02:19', '2019-05-04 11:02:19', '', 0, 'http://localhost/?p=1581', 0, 'post', '', 0),
(1582, 1, '2019-05-04 11:02:12', '2019-05-04 11:02:12', '', 'feddb2', '', 'inherit', 'open', 'closed', '', 'feddb2', '', '', '2019-05-04 11:02:12', '2019-05-04 11:02:12', '', 1581, 'http://localhost/wp-content/uploads/2019/05/feddb2.png', 0, 'attachment', 'image/png', 0),
(1583, 1, '2019-05-04 11:02:17', '2019-05-04 11:02:17', '<!-- wp:paragraph -->\n<p>Покупка техники для выполнения строительных и ремонтных работ часто невозможна из-за высокой стоимости. Лучшим решением в этом случае является аренда спецтехники на выгодных условиях, например, в компании «СтройСоюз».</p>\n<!-- /wp:paragraph -->', 'Анна Герасимова', '', 'inherit', 'closed', 'closed', '', '1581-revision-v1', '', '', '2019-05-04 11:02:17', '2019-05-04 11:02:17', '', 1581, 'http://localhost/index.php/2019/05/04/1581-revision-v1/', 0, 'revision', '', 0),
(1584, 1, '2019-05-04 12:08:04', '2019-05-04 12:08:04', '<!-- wp:paragraph -->\n<p>Этой полосы и в тех местах, где наблюдались интенсивный источники радиоизлучения первой. Величины, никак не об­наруживают галактической концентрации этих источников радиоизлучения. следовало ожидать.</p>\n<!-- /wp:paragraph -->', 'Создалось несколько странное обстоятельство расстояниях от нас местах, где наблюдались интенсивный источники расстояниях?', '', 'publish', 'open', 'open', '', '%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%bb%d0%be%d1%81%d1%8c-%d0%bd%d0%b5%d1%81%d0%ba%d0%be%d0%bb%d1%8c%d0%ba%d0%be-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%bd%d0%be%d0%b5-%d0%be%d0%b1%d1%81%d1%82%d0%be%d1%8f', '', '', '2019-05-04 12:08:06', '2019-05-04 12:08:06', '', 0, 'http://localhost/?p=1584', 0, 'post', '', 0),
(1585, 1, '2019-05-04 12:08:04', '2019-05-04 12:08:04', '<!-- wp:paragraph -->\n<p>Этой полосы и в тех местах, где наблюдались интенсивный источники радиоизлучения первой. Величины, никак не об­наруживают галактической концентрации этих источников радиоизлучения. следовало ожидать.</p>\n<!-- /wp:paragraph -->', 'Создалось несколько странное обстоятельство расстояниях от нас местах, где наблюдались интенсивный источники расстояниях?', '', 'inherit', 'closed', 'closed', '', '1584-revision-v1', '', '', '2019-05-04 12:08:04', '2019-05-04 12:08:04', '', 1584, 'http://localhost/index.php/2019/05/04/1584-revision-v1/', 0, 'revision', '', 0),
(1586, 1, '2019-05-04 12:08:47', '2019-05-04 12:08:47', '<!-- wp:paragraph -->\n<p>Этой полосы и в тех местах, где наблюдались интенсивный источники радиоизлучения первой. Величины, никак не об­наруживают галактической концентрации этих источников радиоизлучения. следовало ожидать.</p>\n<!-- /wp:paragraph -->', 'Создалось несколько странное обстоятельство расстояниях от нас местах, где наблюдались интенсивный источники расстояниях?', '', 'publish', 'open', 'open', '', '%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%bb%d0%be%d1%81%d1%8c-%d0%bd%d0%b5%d1%81%d0%ba%d0%be%d0%bb%d1%8c%d0%ba%d0%be-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%bd%d0%be%d0%b5-%d0%be%d0%b1%d1%81%d1%82%d0%be%d1%8f-2', '', '', '2019-05-04 12:08:49', '2019-05-04 12:08:49', '', 0, 'http://localhost/?p=1586', 0, 'post', '', 0),
(1587, 1, '2019-05-04 12:08:47', '2019-05-04 12:08:47', '<!-- wp:paragraph -->\n<p>Этой полосы и в тех местах, где наблюдались интенсивный источники радиоизлучения первой. Величины, никак не об­наруживают галактической концентрации этих источников радиоизлучения. следовало ожидать.</p>\n<!-- /wp:paragraph -->', 'Создалось несколько странное обстоятельство расстояниях от нас местах, где наблюдались интенсивный источники расстояниях?', '', 'inherit', 'closed', 'closed', '', '1586-revision-v1', '', '', '2019-05-04 12:08:47', '2019-05-04 12:08:47', '', 1586, 'http://localhost/index.php/2019/05/04/1586-revision-v1/', 0, 'revision', '', 0),
(1588, 1, '2019-05-04 14:32:00', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-05-04 14:32:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=1588', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_relevanssi`
--

CREATE TABLE `wp_relevanssi` (
  `doc` bigint(20) NOT NULL DEFAULT '0',
  `term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `term_reverse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` mediumint(9) NOT NULL DEFAULT '0',
  `title` mediumint(9) NOT NULL DEFAULT '0',
  `comment` mediumint(9) NOT NULL DEFAULT '0',
  `tag` mediumint(9) NOT NULL DEFAULT '0',
  `link` mediumint(9) NOT NULL DEFAULT '0',
  `author` mediumint(9) NOT NULL DEFAULT '0',
  `category` mediumint(9) NOT NULL DEFAULT '0',
  `excerpt` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy` mediumint(9) NOT NULL DEFAULT '0',
  `customfield` mediumint(9) NOT NULL DEFAULT '0',
  `mysqlcolumn` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `customfield_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mysqlcolumn_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(210) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `item` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_relevanssi`
--

INSERT INTO `wp_relevanssi` (`doc`, `term`, `term_reverse`, `content`, `title`, `comment`, `tag`, `link`, `author`, `category`, `excerpt`, `taxonomy`, `customfield`, `mysqlcolumn`, `taxonomy_detail`, `customfield_detail`, `mysqlcolumn_detail`, `type`, `item`) VALUES
(1, 'delete', 'eteled', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'edit', 'tide', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'first', 'tsrif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'hello', 'olleh', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'post', 'tsop', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'start', 'trats', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'then', 'neht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'this', 'siht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'uncategorized', 'dezirogetacnu', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '{\"category\":1}', '', '', 'post', 0),
(1, 'welcome', 'emoclew', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'wordpress', 'sserpdrow', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'world', 'dlrow', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'writing', 'gnitirw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'your', 'ruoy', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'main', 'niam', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'slider', 'redils', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'uncategorized', 'dezirogetacnu', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '{\"category\":1}', '', '', 'post', 0),
(7, 'advant', 'tnavda', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(8, 'advant2', '2tnavda', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(13, 'arrow', 'worra', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(13, 'btn', 'ntb', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1336, 'license', 'esnecil', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1337, 'advant3', '3tnavda', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1338, 'материалов', 'волаиретам', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1338, 'продажа', 'ажадорп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1340, 'услуги', 'игулсу', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1346, 'rent', 'tner', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1347, 'discounts', 'stnuocsid', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1347, 'uncategorized', 'dezirogetacnu', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '{\"category\":1}', '', '', 'post', 0),
(1348, 'discounts', 'stnuocsid', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1348, 'rent', 'tner', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1359, 'all', 'lla', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1359, 'news', 'swen', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'news', 'swen', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '{\"category\":1}', '', '', 'post', 0),
(1364, 'близстоящих', 'хищяотсзилб', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'компания', 'яинапмок', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'мастерских', 'хиксретсам', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'машины', 'ынишам', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'находятся', 'ястядохан', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'оборудованных', 'хыннаводуробо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'работает', 'театобар', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'ремонтных', 'хынтномер', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'своевременно', 'оннемервеовс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'состоянии', 'ииняотсос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'территории', 'ииротиррет', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'хорошем', 'мешорох', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1364, 'чинятся', 'ястянич', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'news', 'swen', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '{\"category\":1}', '', '', 'post', 0),
(1366, 'автомобильный', 'йыньлибомотва', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'далее', 'еелад', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'договору', 'уровогод', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'закупка', 'акпуказ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'моделями', 'имяледом', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'новой', 'йовон', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'новыми', 'имывон', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'осуществляется', 'ястеялвтсещусо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'парк', 'крап', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'покраска', 'аксаркоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'пополнятеся', 'ясетянлопоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'постоянно', 'онняотсоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'самосвалов', 'волавсомас', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'снегоуборочной', 'йончоробуогенс', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'согласно', 'онсалгос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1366, 'техники', 'икинхет', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1404, 'main', 'niam', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1404, 'slider', 'redils', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1416, 'аренда', 'аднера', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1416, 'спецтехники', 'икинхетцепс', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1420, 'погрузчики', 'икичзургоп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1420, 'эскаваторы', 'ыротаваксэ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1424, 'rent2', '2tner', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1428, 'spec', 'ceps', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1438, 'spec2', '2ceps', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1439, 'spec3', '3ceps', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1440, 'spec4', '4ceps', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1442, 'spec5', '5ceps', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1448, '1359', '9531', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, '1448', '8441', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'address', 'sserdda', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'admin', 'nimda', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'all', 'lla', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'blank', 'knalb', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'callback', 'kcabllac', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'class', 'ssalc', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'confirmations', 'snoitamrifnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'contacting', 'gnitcatnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'css', 'ssc', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'default', 'tluafed', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'desc', 'csed', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'description', 'noitpircsed', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'email', 'liame', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'enable', 'elbane', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'entry', 'yrtne', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'field', 'dleif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'fields', 'sdleif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'for', 'rof', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'form', 'mrof', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'honeypot', 'topyenoh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'input', 'tupni', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'label', 'lebal', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'mail', 'liam', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'mask', 'ksam', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'medium', 'muidem', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'message', 'egassem', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'meta', 'atem', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'name', 'eman', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'new', 'wen', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'notification', 'noitacifiton', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'notifications', 'snoitacifiton', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'page', 'egap', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'placeholder', 'redlohecalp', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'processing', 'gnissecorp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'redirect', 'tcerider', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'replyto', 'otylper', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'require', 'eriuqer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'scroll', 'llorcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'sender', 'rednes', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'settings', 'sgnittes', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'shortly', 'yltrohs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'size', 'ezis', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'subject', 'tcejbus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'submit', 'timbus', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'template', 'etalpmet', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'text', 'txet', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'textarea', 'aeratxet', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'thanks', 'sknaht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'title', 'eltit', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'touch', 'hcuot', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'type', 'epyt', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'u0412u0430u0448', '8440u0340u2140u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'u0412u0430u0448u0435', '5340u8440u0340u2140u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'u041eu0441u0442u0430u0432u0438u0442u044c', 'c440u2440u8340u2340u0340u2440u1440ue140u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'u041eu0442u0441u044bu043bu0430u0435u0442u0441u044f', 'f440u1440u2440u5340u0340ub340ub440u1440u2440ue140u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'u0421u043eu043eu0431u0449u0435u043du0438u0435', '5340u8340ud340u5340u9440u1340ue340ue340u1240u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'u0437u0430u044fu0432u043au0443', '3440ua340u2340uf440u0340u7340u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'u0438u043bu0438', '8340ub340u8340u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'u0438u043cu044f', 'f440uc340u8340u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'u0442u0435u043bu0435u0444u043eu043d', 'd340ue340u4440u5340ub340u5340u2440u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'value', 'eulav', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'will', 'lliw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'with', 'htiw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1448, 'you', 'uoy', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, '1449', '9441', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, '1450', '0541', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'address', 'sserdda', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'admin', 'nimda', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'all', 'lla', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'blank', 'knalb', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'callback', 'kcabllac', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'class', 'ssalc', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'confirmations', 'snoitamrifnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'contacting', 'gnitcatnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'css', 'ssc', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'default', 'tluafed', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'desc', 'csed', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'description', 'noitpircsed', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'email', 'liame', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'enable', 'elbane', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'entry', 'yrtne', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'field', 'dleif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'fields', 'sdleif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'for', 'rof', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'form', 'mrof', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'hide', 'edih', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'honeypot', 'topyenoh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'input', 'tupni', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'label', 'lebal', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'mail', 'liam', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'mask', 'ksam', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'medium', 'muidem', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'message', 'egassem', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'meta', 'atem', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'mfp', 'pfm', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'name', 'eman', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'new', 'wen', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'notification', 'noitacifiton', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'notifications', 'snoitacifiton', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'page', 'egap', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'placeholder', 'redlohecalp', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'processing', 'gnissecorp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'redirect', 'tcerider', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'replyto', 'otylper', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'require', 'eriuqer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'scroll', 'llorcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'sender', 'rednes', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'settings', 'sgnittes', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'shortly', 'yltrohs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'size', 'ezis', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'subject', 'tcejbus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'submit', 'timbus', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'template', 'etalpmet', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'text', 'txet', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'textarea', 'aeratxet', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'thanks', 'sknaht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'title', 'eltit', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'touch', 'hcuot', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'type', 'epyt', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'u0412u0430u0448', '8440u0340u2140u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'u0412u0430u0448u0435', '5340u8440u0340u2140u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'u041eu0441u0442u0430u0432u0438u0442u044c', 'c440u2440u8340u2340u0340u2440u1440ue140u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'u041eu0442u0441u044bu043bu0430u0435u0442u0441u044f', 'f440u1440u2440u5340u0340ub340ub440u1440u2440ue140u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'u0421u043eu043eu0431u0449u0435u043du0438u0435', '5340u8340ud340u5340u9440u1340ue340ue340u1240u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'u0437u0430u044fu0432u043au0443', '3440ua340u2340uf440u0340u7340u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'u0438u043bu0438', '8340ub340u8340u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'u0438u043cu044f', 'f440uc340u8340u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'u0442u0435u043bu0435u0444u043eu043d', 'd340ue340u4440u5340ub340u5340u2440u', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'value', 'eulav', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'will', 'lliw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'with', 'htiw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1449, 'you', 'uoy', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1450, 'confirmation', 'noitamrifnoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1450, 'page', 'egap', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1450, 'submit', 'timbus', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1456, 'simple', 'elpmis', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_type\":1}', '', '', 'post', 0),
(1456, 'аренда', 'аднера', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1456, 'краны', 'ынарк', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1456, 'манипуляторы', 'ыротялупинам', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1456, 'продукция', 'яицкудорп', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1456, 'спецтехники', 'икинхетцепс', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1456, 'услуги', 'игулсу', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1460, 'simple', 'elpmis', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_type\":1}', '', '', 'post', 0),
(1460, 'аренда', 'аднера', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1460, 'погрузчики', 'икичзургоп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1460, 'продукция', 'яицкудорп', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1460, 'спецтехники', 'икинхетцепс', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1460, 'услуги', 'игулсу', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1460, 'эскаваторы', 'ыротаваксэ', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1462, 'copy', 'ypoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1462, 'simple', 'elpmis', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_type\":1}', '', '', 'post', 0),
(1462, 'погрузчики', 'икичзургоп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1462, 'эскаваторы', 'ыротаваксэ', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1463, 'simple', 'elpmis', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_type\":1}', '', '', 'post', 0),
(1463, 'аренда', 'аднера', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1463, 'продукция', 'яицкудорп', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1463, 'самосвалы', 'ылавсомас', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1463, 'спецтехники', 'икинхетцепс', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1463, 'услуги', 'игулсу', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1464, 'rent3', '3tner', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1465, 'simple', 'elpmis', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_type\":1}', '', '', 'post', 0),
(1465, 'автокраны', 'ынаркотва', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1465, 'аренда', 'аднера', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1465, 'продукция', 'яицкудорп', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1465, 'спецтехники', 'икинхетцепс', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1465, 'услуги', 'игулсу', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1466, 'rent4', '4tner', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1467, 'simple', 'elpmis', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_type\":1}', '', '', 'post', 0),
(1467, 'аренда', 'аднера', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1467, 'продукция', 'яицкудорп', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1467, 'спецтехники', 'икинхетцепс', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1467, 'услуги', 'игулсу', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1467, 'шаланды', 'ыдналаш', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1468, 'rent5', '5tner', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1469, 'simple', 'elpmis', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_type\":1}', '', '', 'post', 0),
(1469, 'авто', 'отва', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1469, 'базе', 'езаб', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1469, 'газ', 'заг', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1469, 'самосвалы', 'ылавсомас', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1470, 'simple', 'elpmis', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_type\":1}', '', '', 'post', 0),
(1470, 'авто', 'отва', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1470, 'базе', 'езаб', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1470, 'камаз', 'замак', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1470, 'самосвалы', 'ылавсомас', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1473, 'dump2', '2pmud', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1474, 'dump', 'pmud', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(1475, 'simple', 'elpmis', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_type\":1}', '', '', 'post', 0),
(1475, 'китайцы', 'ыцйатик', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1475, 'самосвалы', 'ылавсомас', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '{\"product_cat\":1}', '', '', 'post', 0),
(1487, 'продукция', 'яицкудорп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1487, 'услуги', 'игулсу', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1496, 'sitemap', 'pametis', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_relevanssi_log`
--

CREATE TABLE `wp_relevanssi_log` (
  `id` bigint(9) NOT NULL,
  `query` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_relevanssi_stopwords`
--

CREATE TABLE `wp_relevanssi_stopwords` (
  `stopword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_relevanssi_stopwords`
--

INSERT INTO `wp_relevanssi_stopwords` (`stopword`) VALUES
('а'),
('алло'),
('без'),
('близко'),
('более'),
('больше'),
('большинстве'),
('большой'),
('будем'),
('будет'),
('будете'),
('будешь'),
('будто'),
('буду'),
('будут'),
('будь'),
('бы'),
('бывает'),
('бывь'),
('был'),
('была'),
('были'),
('было'),
('быть'),
('в'),
('важная'),
('важное'),
('важные'),
('важный'),
('вам'),
('вами'),
('вас'),
('ваш'),
('ваше'),
('ваши'),
('вверх'),
('вдали'),
('вдруг'),
('ведь'),
('везде'),
('весь'),
('виде'),
('вниз'),
('внизу'),
('во'),
('вокруг'),
('вон'),
('восемнадцатый'),
('восемнадцать'),
('восемь'),
('восьмой'),
('вот'),
('впрочем'),
('времени'),
('время'),
('все'),
('всегда'),
('всего'),
('всем'),
('всеми'),
('всему'),
('всех'),
('всею'),
('всю'),
('всюду'),
('вся'),
('всё'),
('второй'),
('вы'),
('г'),
('где'),
('говорил'),
('говорит'),
('год'),
('года'),
('году'),
('да'),
('давно'),
('даже'),
('далеко'),
('дальше'),
('даром'),
('два'),
('двадцатый'),
('двадцать'),
('две'),
('двенадцатый'),
('двенадцать'),
('двух'),
('девятнадцатый'),
('девятнадцать'),
('девятый'),
('девять'),
('действительно'),
('дел'),
('день'),
('десятый'),
('десять'),
('для'),
('до'),
('довольно'),
('долго'),
('должно'),
('другая'),
('другие'),
('других'),
('друго'),
('другое'),
('е'),
('его'),
('ее'),
('ей'),
('ему'),
('если'),
('есть'),
('еще'),
('ещё'),
('ею'),
('её'),
('ж'),
('же'),
('жизнь'),
('за'),
('занят'),
('занята'),
('занято'),
('заняты'),
('затем'),
('зато'),
('зачем'),
('здесь'),
('знать'),
('значит'),
('и'),
('из'),
('или'),
('им'),
('именно'),
('иметь'),
('ими'),
('имя'),
('иногда'),
('их'),
('к'),
('каждая'),
('каждое'),
('каждые'),
('каждый'),
('кажется'),
('как'),
('какая'),
('какой'),
('кем'),
('когда'),
('кого'),
('ком'),
('кому'),
('конечно'),
('которая'),
('которого'),
('которой'),
('которую'),
('которые'),
('который'),
('которых'),
('кроме'),
('кругом'),
('кто'),
('куда'),
('лет'),
('ли'),
('лишь'),
('лучше'),
('люди'),
('м'),
('мало'),
('между'),
('меля'),
('менее'),
('меньше'),
('меня'),
('миллионов'),
('мимо'),
('мира'),
('мне'),
('много'),
('многочисленная'),
('многочисленное'),
('многочисленные'),
('многочисленный'),
('мной'),
('мною'),
('мог'),
('могут'),
('мож'),
('может'),
('можно'),
('можхо'),
('мой'),
('мор'),
('мочь'),
('моя'),
('моё'),
('мы'),
('на'),
('наверху'),
('над'),
('надо'),
('назад'),
('наиболее'),
('наконец'),
('нам'),
('нас'),
('начала'),
('наш'),
('наша'),
('наше'),
('наши'),
('не'),
('него'),
('недавно'),
('недалеко'),
('нее'),
('ней'),
('нельзя'),
('нем'),
('немного'),
('нему'),
('непрерывно'),
('нередко'),
('несколько'),
('нет'),
('нею'),
('неё'),
('ни'),
('нибудь'),
('ниже'),
('низко'),
('никогда'),
('никуда'),
('ними'),
('них'),
('ничего'),
('но'),
('ну'),
('нужно'),
('нх'),
('о'),
('об'),
('оба'),
('обычно'),
('один'),
('одиннадцатый'),
('одиннадцать'),
('однажды'),
('однако'),
('одного'),
('одной'),
('около'),
('он'),
('она'),
('они'),
('оно'),
('оный'),
('опять'),
('особенно'),
('от'),
('ото'),
('отовсюду'),
('отсюда'),
('очень'),
('первый'),
('перед'),
('по'),
('под'),
('пожалуйста'),
('позже'),
('пока'),
('пор'),
('пора'),
('после'),
('посреди'),
('потом'),
('потому'),
('почему'),
('почти'),
('прекрасно'),
('при'),
('про'),
('просто'),
('против'),
('процентов'),
('пятнадцатый'),
('пятнадцать'),
('пятый'),
('пять'),
('раз'),
('разве'),
('раньше'),
('рядом'),
('с'),
('сам'),
('сама'),
('сами'),
('самим'),
('самими'),
('самих'),
('само'),
('самой'),
('самом'),
('самому'),
('саму'),
('свое'),
('своего'),
('своей'),
('свои'),
('своих'),
('свой'),
('свою'),
('своя'),
('сеаой'),
('себе'),
('себя'),
('сегодня'),
('седьмой'),
('сейчас'),
('семнадцатый'),
('семнадцать'),
('семь'),
('сих'),
('сказал'),
('сказала'),
('сказать'),
('сколько'),
('следовательно'),
('слишком'),
('сначала'),
('снова'),
('со'),
('собой'),
('собою'),
('совсем'),
('соответственно'),
('спасибо'),
('стал'),
('суть'),
('т'),
('та'),
('так'),
('такая'),
('также'),
('такие'),
('такое'),
('такой'),
('там'),
('твой'),
('твоя'),
('твоё'),
('те'),
('тебе'),
('тебя'),
('тем'),
('теми'),
('теперь'),
('тех'),
('то'),
('тобой'),
('тобою'),
('тогда'),
('того'),
('только'),
('том'),
('тому'),
('тот'),
('тою'),
('третий'),
('три'),
('тринадцатый'),
('тринадцать'),
('ту'),
('тут'),
('ты'),
('тысяч'),
('у'),
('уж'),
('уже'),
('уметь'),
('хорошо'),
('хотеть'),
('хоть'),
('хотя'),
('хочешь'),
('часто'),
('чаще'),
('чего'),
('человек'),
('чем'),
('чему'),
('через'),
('четвертый'),
('четыре'),
('четырнадцатый'),
('четырнадцать'),
('что'),
('чтоб'),
('чтобы'),
('чуть'),
('шестнадцатый'),
('шестнадцать'),
('шестой'),
('шесть'),
('эта'),
('эти'),
('этим'),
('этими'),
('это'),
('этого'),
('этой'),
('этом'),
('этому'),
('этот'),
('эту'),
('я');

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

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 19, 'display_type', ''),
(2, 19, 'thumbnail_id', '0'),
(6, 21, 'order', '0'),
(7, 21, 'display_type', 'products'),
(8, 21, 'thumbnail_id', '0'),
(12, 19, 'product_count_product_cat', '9'),
(13, 22, 'order', '0'),
(14, 22, 'display_type', 'subcategories'),
(15, 22, 'thumbnail_id', '1424'),
(16, 22, 'product_count_product_cat', '2'),
(17, 21, 'product_count_product_cat', '1'),
(18, 23, 'order', '0'),
(19, 23, 'display_type', 'subcategories'),
(20, 23, 'thumbnail_id', '0'),
(21, 23, 'product_count_product_cat', '4'),
(22, 24, 'order', '0'),
(23, 24, 'display_type', 'subcategories'),
(24, 24, 'thumbnail_id', '0'),
(25, 25, 'order', '0'),
(26, 25, 'display_type', 'subcategories'),
(27, 25, 'thumbnail_id', '0'),
(32, 25, 'product_count_product_cat', '1'),
(33, 24, 'product_count_product_cat', '1'),
(34, 27, 'order', '0'),
(35, 27, 'display_type', ''),
(36, 27, 'thumbnail_id', '0'),
(37, 27, 'product_count_product_cat', '11'),
(38, 29, 'order', '0'),
(39, 29, 'display_type', 'subcategories'),
(40, 29, 'thumbnail_id', '0'),
(41, 29, 'product_count_product_cat', '2'),
(46, 31, 'order', '0'),
(47, 31, 'display_type', ''),
(48, 31, 'thumbnail_id', '0'),
(49, 32, 'order', '0'),
(50, 32, 'display_type', ''),
(51, 32, 'thumbnail_id', '0'),
(52, 32, 'product_count_product_cat', '1');

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
(2, 'Main', 'main', 0),
(4, 'news', 'news', 0),
(5, 'Technic Rent', 'technic-rent', 0),
(6, 'simple', 'simple', 0),
(7, 'grouped', 'grouped', 0),
(8, 'variable', 'variable', 0),
(9, 'external', 'external', 0),
(10, 'exclude-from-search', 'exclude-from-search', 0),
(11, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(12, 'featured', 'featured', 0),
(13, 'outofstock', 'outofstock', 0),
(14, 'rated-1', 'rated-1', 0),
(15, 'rated-2', 'rated-2', 0),
(16, 'rated-3', 'rated-3', 0),
(17, 'rated-4', 'rated-4', 0),
(18, 'rated-5', 'rated-5', 0),
(19, 'Аренда спецтехники', 'technic-rent', 0),
(21, 'Краны-манипуляторы', 'cran-manipulator', 0),
(22, 'Эскаваторы', 'scpec-tech-rent-scpec-tech-rent', 0),
(23, 'Самосвалы', 'samosval', 0),
(24, 'Автокраны', 'autokran', 0),
(25, 'Шаланды', 'shalands', 0),
(27, 'Услуги и продукция', 'services_production', 0),
(28, 'sitemap', 'sitemap', 0),
(29, 'Продажа материалов', '%d0%bf%d1%80%d0%be%d0%b4%d0%b0%d0%b6%d0%b0-%d0%bc%d0%b0%d1%82%d0%b5%d1%80%d0%b8%d0%b0%d0%bb%d0%be%d0%b2', 0),
(31, 'Песок карьерный', '%d0%bf%d0%b5%d1%81%d0%be%d0%ba-%d0%ba%d0%b0%d1%80%d1%8c%d0%b5%d1%80%d0%bd%d1%8b%d0%b9', 0),
(32, 'Песок речной', '%d0%bf%d0%b5%d1%81%d0%be%d0%ba-%d1%80%d0%b5%d1%87%d0%bd%d0%be%d0%b9', 0),
(33, 'review', 'review', 0),
(34, 'questions', 'questions', 0);

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
(5, 1, 0),
(1342, 2, 0),
(1343, 2, 0),
(1347, 1, 0),
(1364, 4, 0),
(1366, 4, 0),
(1456, 6, 0),
(1456, 19, 0),
(1456, 21, 0),
(1456, 27, 0),
(1460, 6, 0),
(1460, 19, 0),
(1460, 22, 0),
(1460, 27, 0),
(1462, 6, 0),
(1462, 22, 0),
(1463, 6, 0),
(1463, 19, 0),
(1463, 23, 0),
(1463, 27, 0),
(1465, 6, 0),
(1465, 19, 0),
(1465, 24, 0),
(1465, 27, 0),
(1467, 6, 0),
(1467, 19, 0),
(1467, 25, 0),
(1467, 27, 0),
(1469, 6, 0),
(1469, 23, 0),
(1470, 6, 0),
(1470, 23, 0),
(1475, 6, 0),
(1475, 23, 0),
(1481, 2, 0),
(1482, 2, 0),
(1483, 2, 0),
(1484, 2, 0),
(1485, 2, 0),
(1491, 5, 0),
(1492, 5, 0),
(1493, 5, 0),
(1494, 5, 0),
(1495, 5, 0),
(1512, 2, 0),
(1513, 6, 0),
(1513, 27, 0),
(1522, 28, 0),
(1523, 28, 0),
(1524, 28, 0),
(1525, 28, 0),
(1526, 28, 0),
(1527, 28, 0),
(1528, 28, 0),
(1529, 28, 0),
(1530, 28, 0),
(1531, 28, 0),
(1532, 28, 0),
(1533, 28, 0),
(1534, 28, 0),
(1535, 6, 0),
(1535, 27, 0),
(1535, 29, 0),
(1535, 32, 0),
(1536, 28, 0),
(1537, 2, 0),
(1540, 6, 0),
(1540, 27, 0),
(1540, 29, 0),
(1542, 6, 0),
(1542, 29, 0),
(1543, 2, 0),
(1550, 2, 0),
(1551, 2, 0),
(1556, 28, 0),
(1561, 28, 0),
(1563, 28, 0),
(1578, 33, 0),
(1581, 33, 0),
(1584, 34, 0),
(1586, 34, 0);

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
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 12),
(4, 4, 'category', '', 0, 2),
(5, 5, 'nav_menu', '', 0, 5),
(6, 6, 'product_type', '', 0, 11),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_cat', '', 27, 5),
(21, 21, 'product_cat', '', 19, 1),
(22, 22, 'product_cat', '', 19, 2),
(23, 23, 'product_cat', '', 19, 4),
(24, 24, 'product_cat', '', 19, 1),
(25, 25, 'product_cat', '', 19, 1),
(27, 27, 'product_cat', '', 0, 7),
(28, 28, 'nav_menu', '', 0, 17),
(29, 29, 'product_cat', '', 27, 2),
(31, 31, 'product_cat', '', 29, 0),
(32, 32, 'product_cat', '', 29, 1),
(33, 33, 'category', '', 0, 2),
(34, 34, 'category', '', 0, 2);

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
(1, 1, 'nickname', 'zack'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4890901d56bcc67c7cb4c9fecee5a3da2556805c22eaeb08d4d435ae9580c8fb\";a:4:{s:10:\"expiration\";i:1557077550;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";s:5:\"login\";i:1556904750;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '1575'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1&advImgDetails=show&post_dfw=off&posts_list_mode=list'),
(19, 1, 'wp_user-settings-time', '1556905282'),
(20, 1, 'wp_media_library_mode', 'list'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '28'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(26, 1, 'wicked_folders_plugin_state', 'a:1:{s:7:\"screens\";a:1:{s:9:\"edit-page\";a:8:{s:15:\"tree_pane_width\";i:292;s:6:\"folder\";s:1:\"0\";s:16:\"expanded_folders\";a:0:{}s:19:\"hide_assigned_items\";b:1;s:11:\"folder_type\";s:21:\"Wicked_Folders_Folder\";s:7:\"orderby\";s:5:\"title\";s:5:\"order\";s:3:\"asc\";s:22:\"is_folder_pane_visible\";b:1;}}}'),
(27, 1, 'edit_post_per_page', '20'),
(28, 1, 'closedpostboxes_post', 'a:0:{}'),
(29, 1, 'metaboxhidden_post', 'a:8:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:7:\"slugdiv\";i:7;s:9:\"authordiv\";}'),
(30, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(31, 1, 'wc_last_active', '1556928000'),
(33, 1, 'billing_first_name', ''),
(34, 1, 'billing_last_name', ''),
(35, 1, 'billing_company', ''),
(36, 1, 'billing_address_1', ''),
(37, 1, 'billing_address_2', ''),
(38, 1, 'billing_city', ''),
(39, 1, 'billing_postcode', ''),
(40, 1, 'billing_country', ''),
(41, 1, 'billing_state', ''),
(42, 1, 'billing_phone', ''),
(43, 1, 'billing_email', 'vimpil@ya.ru'),
(44, 1, 'shipping_first_name', ''),
(45, 1, 'shipping_last_name', ''),
(46, 1, 'shipping_company', ''),
(47, 1, 'shipping_address_1', ''),
(48, 1, 'shipping_address_2', ''),
(49, 1, 'shipping_city', ''),
(50, 1, 'shipping_postcode', ''),
(51, 1, 'shipping_country', ''),
(52, 1, 'shipping_state', ''),
(53, 1, 'last_update', '1551808114'),
(55, 1, 'closedpostboxes_product', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(56, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(59, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:98:\"submitdiv,product_catdiv,tagsdiv-product_tag,pageparentdiv,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:67:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(60, 1, 'screen_layout_product', '2'),
(82, 1, '_yoast_wpseo_profile_updated', '1554266116');

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
(1, 'zack', '$P$BCWhnY4ku/9oegV3r6ZV2CQWVnwB9m1', 'zack', 'vimpil@ya.ru', '', '2019-02-18 22:24:54', '', 0, 'zack');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(13, 'http://localhost/index.php/2019/02/19/main_slider/slider_main/', 5, 1404, 'internal'),
(14, 'http://localhost/index.php/2019/02/19/main_slider/slider_main/', 5, 1404, 'internal'),
(150, 'http://localhost/?attachment_id=1428', 1456, 1428, 'internal'),
(151, 'http://localhost/?attachment_id=1440', 1456, 1440, 'internal'),
(152, 'http://localhost/?attachment_id=1438', 1460, 1438, 'internal'),
(153, 'http://localhost/?attachment_id=1574', 1460, 1574, 'internal'),
(157, 'http://localhost/?attachment_id=1440', 1465, 1440, 'internal'),
(158, 'http://localhost/?attachment_id=1574', 1465, 1574, 'internal'),
(161, 'http://localhost/?attachment_id=1442', 1467, 1442, 'internal'),
(162, 'http://localhost/?attachment_id=1574', 1467, 1574, 'internal'),
(163, 'http://localhost/?attachment_id=1439', 1463, 1439, 'internal'),
(164, 'http://localhost/?attachment_id=1574', 1463, 1574, 'internal');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, NULL, 0),
(2, 0, 0),
(5, 2, 0),
(1287, 0, 0),
(1338, 0, 0),
(1340, 0, 0),
(1347, NULL, 0),
(1348, NULL, 0),
(1359, 0, 0),
(1364, NULL, 0),
(1366, NULL, 0),
(1375, 0, 0),
(1388, 0, 0),
(1404, NULL, 2),
(1406, 0, 0),
(1413, 0, 0),
(1415, 0, 0),
(1416, 0, 0),
(1418, 0, 0),
(1420, 0, 0),
(1425, 0, 0),
(1426, 0, 0),
(1428, NULL, 1),
(1429, 0, 0),
(1430, 0, 0),
(1431, 0, 0),
(1432, 0, 0),
(1433, 0, 0),
(1434, 0, 0),
(1435, 0, 0),
(1436, 0, 0),
(1437, 0, 0),
(1438, NULL, 1),
(1439, NULL, 1),
(1440, NULL, 2),
(1442, NULL, 1),
(1450, NULL, 0),
(1456, 2, 0),
(1459, 0, 0),
(1460, 2, 0),
(1463, 2, 0),
(1464, NULL, 0),
(1465, 2, 0),
(1466, NULL, 0),
(1467, 2, 0),
(1474, NULL, 0),
(1476, 0, 0),
(1486, 0, 0),
(1487, 0, 0),
(1489, 0, 0),
(1490, 0, 0),
(1496, 0, 0),
(1498, 0, 0),
(1501, 0, 0),
(1508, 0, 0),
(1509, 0, 0),
(1510, 0, 0),
(1511, 0, 0),
(1513, 0, 0),
(1514, 0, 0),
(1517, 0, 0),
(1518, 0, 0),
(1519, 0, 0),
(1521, 0, 0),
(1535, 0, 0),
(1539, 0, 0),
(1540, 0, 0),
(1541, 0, 0),
(1542, 0, 0),
(1543, 0, 0),
(1544, 0, 0),
(1547, 0, 0),
(1554, 0, 0),
(1555, 0, 0),
(1557, 0, 0),
(1558, 0, 0),
(1559, 0, 0),
(1566, 0, 0),
(1572, 0, 0),
(1574, NULL, 4),
(1576, NULL, 0),
(1577, 0, 0),
(1578, 0, 0),
(1581, 0, 0),
(1584, 0, 0),
(1586, 0, 0);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mail_bank`
--
ALTER TABLE `wp_mail_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mail_bank_logs`
--
ALTER TABLE `wp_mail_bank_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mail_bank_meta`
--
ALTER TABLE `wp_mail_bank_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mappress_maps`
--
ALTER TABLE `wp_mappress_maps`
  ADD PRIMARY KEY (`mapid`);

--
-- Indexes for table `wp_mappress_posts`
--
ALTER TABLE `wp_mappress_posts`
  ADD PRIMARY KEY (`postid`,`mapid`);

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
-- Indexes for table `wp_relevanssi`
--
ALTER TABLE `wp_relevanssi`
  ADD UNIQUE KEY `doctermitem` (`doc`,`term`,`item`),
  ADD KEY `terms` (`term`(20)),
  ADD KEY `relevanssi_term_reverse_idx` (`term_reverse`(10)),
  ADD KEY `docs` (`doc`),
  ADD KEY `typeitem` (`type`(190),`item`);

--
-- Indexes for table `wp_relevanssi_log`
--
ALTER TABLE `wp_relevanssi_log`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `query` (`query`(190));

--
-- Indexes for table `wp_relevanssi_stopwords`
--
ALTER TABLE `wp_relevanssi_stopwords`
  ADD UNIQUE KEY `stopword` (`stopword`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `wp_mail_bank`
--
ALTER TABLE `wp_mail_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_mail_bank_logs`
--
ALTER TABLE `wp_mail_bank_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_mail_bank_meta`
--
ALTER TABLE `wp_mail_bank_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_mappress_maps`
--
ALTER TABLE `wp_mappress_maps`
  MODIFY `mapid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17209;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1679;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1589;
--
-- AUTO_INCREMENT for table `wp_relevanssi_log`
--
ALTER TABLE `wp_relevanssi_log`
  MODIFY `id` bigint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
