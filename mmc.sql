SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `mmc`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `att_id` mediumint(8) UNSIGNED NOT NULL,
  `ticket_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `saved_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`att_id`, `ticket_id`, `saved_name`, `real_name`, `size`, `type`) VALUES
(1, 'AQR-52N-42G2', 'AQR-52N-42G2_bc7ac4b55ba6e6b000166c5545fc990c.jpg', '2015-C-Class-Sedan-Exterior-8.jpg', 152445, '0'),
(2, 'AQR-52N-42G2', 'AQR-52N-42G2_65bc7a6e27c5d2363163e744eeeea63c.jpg', '2015-C-Class-Sedan-Exterior-21.jpg', 138064, '0'),
(3, 'HZ5-MPP-H4WU', 'HZ5-MPP-H4WU_86315f56da9c65f3fabfc85addc3b21d.jpg', 'mercedes-benz-c-class-4.jpg', 1324576, '0'),
(4, 'HZ5-MPP-H4WU', 'HZ5-MPP-H4WU_cdb8e3c5066ac1c7161b7ba9f728a8ff.jpg', '2015-mercedes-benz-c-class-wallpaper-hd-58568-3779152.jpg', 119201, '0');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cat_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `autoassign` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `cat_order`, `autoassign`, `type`, `priority`) VALUES
(1, 'General', 10, '1', '0', '3'),
(2, 'melc', 20, '1', '0', '3');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `use` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `place` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `req` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '10'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `use`, `place`, `type`, `req`, `category`, `name`, `value`, `order`) VALUES
(1, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(2, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(3, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(4, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(5, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(6, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(7, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(8, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(9, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(10, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(11, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(12, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(13, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(14, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(15, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(16, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(17, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(18, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(19, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(20, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(21, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(22, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(23, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(24, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(25, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(26, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(27, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(28, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(29, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(30, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(31, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(32, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(33, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(34, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(35, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(36, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(37, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(38, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(39, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(40, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(41, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(42, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(43, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(44, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(45, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(46, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(47, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(48, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(49, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(50, '0', '0', 'text', '0', NULL, '', NULL, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `custom_statuses`
--

CREATE TABLE `custom_statuses` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `can_customers_change` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '10'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` smallint(5) UNSIGNED NOT NULL,
  `to` smallint(5) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `deletedby` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `from`, `to`, `subject`, `message`, `dt`, `read`, `deletedby`) VALUES
(1, 9999, 1, 'HESK quick start guide', '</p><div style=\"text-align:justify; padding-left: 10px; padding-right: 10px;\">\r\n\r\n<p>&nbsp;<br /><b>Welcome to HESK! You\'ll find it is a great tool for improving your customer support.</b></p>\r\n\r\n<p><b>Here is a short guide to get you started.</b><br />&nbsp;</p>\r\n\r\n<hr />\r\nSTEP #1: setup your profile\r\n<hr />\r\n<ol>\r\n<li>go to <a href=\"profile.php\">Profile</a>,</li>\r\n<li>set your name and email address.</li>\r\n</ol>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #2: configure HESK\r\n<hr />\r\n<ol>\r\n<li>go to <a href=\"admin_settings.php\">Settings</a>,</li>\r\n<li>for a quick start, just modify these on the \"General\" tab:<br /><br />\r\nWebsite title<br />\r\nWebsite URL<br />\r\nWebmaster email<br />&nbsp;\r\n</li>\r\n<li>you can come back to the settings page later and explore all the options. To view details about a setting, click the [?]</li>\r\n</ol>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #3: add ticket categories\r\n<hr />\r\n<p>Go to <a href=\"manage_categories.php\">Categories</a> to add ticket categories.</p>\r\n<p>You cannot delete the default category, but you can rename it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\nSTEP #4: add staff accounts\r\n<hr />\r\n<p>Go to <a href=\"manage_users.php\">Users</a> to create new staff accounts.</p>\r\n<p>You can use two user types in HESK:</p>\r\n<ul>\r\n<li><b>Administrators</b>, who have full access to all HESK features</li>\r\n<li><b>Staff</b>, who have access to limited privileges and categories</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #5: useful tools\r\n<hr />\r\n<p>You can do a lot on the <a href=\"banned_emails.php\">Tools</a> page, for example:</p>\r\n<ul>\r\n<li>create custom ticket statuses,</li>\r\n<li>add custom input fields to the \"Submit a ticket\" form,</li>\r\n<li>modify email templates,</li>\r\n<li>and more.</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #6: create a knowledgebase\r\n<hr />\r\n<p>A clear and comprehensive knowledgebase can drastically reduce the number of support tickets you receive, thereby saving you significant time and effort in the long run.</p>\r\n<p>Go to <a href=\"manage_knowledgebase.php\">Knowledgebase</a> to create categories and write articles for your knowledgebase.</p>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #7: don\'t repeat yourself\r\n<hr />\r\n<p>Sometimes several support tickets are addressing the same issues - allowing you to use pre-written (&quot;canned&quot;) responses.</p>\r\n<p>To compose canned responses go to <a href=\"manage_canned.php\">Canned</a> page.</p>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #8: secure your help desk\r\n<hr />\r\n<p>Make sure your help desk is as secure as possible by going through <a href=\"https://www.hesk.com/knowledgebase/?article=82\">HESK security check list</a></p>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #9: stay updated\r\n<hr />\r\n<p>HESK regularly receives improvements and bug fixes, make sure you know about them!</p>\r\n<ul>\r\n<li>for fast notifications, <a href=\"https://twitter.com/HESKdotCOM\">follow us on <b>Twitter</b></a></li>\r\n<li>for email notifications, subscribe to our low-volume zero-spam <a href=\"https://www.hesk.com/newsletter.php\">newsletter</a></li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #10: look professional\r\n<hr />\r\n<p>To look more professional and not advertise the tools you use, <a href=\"https://www.hesk.com/buy.php\">remove &quot;Powered by&quot; links</a> from your help desk.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Again, welcome to HESK and enjoy using it!</p>\r\n\r\n<p>Klemen Stirn<br />\r\nAuthor and owner</p>\r\n\r\n</div><p>', '2019-05-03 22:02:35', '1', 9999);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `who` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tmp` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pipe_loops`
--

CREATE TABLE `pipe_loops` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `message_hash` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `replyto` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachments` mediumtext COLLATE utf8_unicode_ci,
  `staffid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `rating` enum('1','5') COLLATE utf8_unicode_ci DEFAULT NULL,
  `read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `replyto`, `name`, `message`, `dt`, `attachments`, `staffid`, `rating`, `read`) VALUES
(1, 3, 'Your name', 'fixed<br />\n<br />\n<br />\n', '2019-05-03 22:47:02', '', 1, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `reply_drafts`
--

CREATE TABLE `reply_drafts` (
  `owner` smallint(5) UNSIGNED NOT NULL,
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `message` mediumtext CHARACTER SET utf8 NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_messages`
--

CREATE TABLE `service_messages` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` enum('0','1','2','3','4') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `std_replies`
--

CREATE TABLE `std_replies` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reply_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `trackid` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3',
  `subject` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `lastchange` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `firstreply` timestamp NULL DEFAULT NULL,
  `closedat` timestamp NULL DEFAULT NULL,
  `articles` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `openedby` mediumint(8) DEFAULT '0',
  `firstreplyby` smallint(5) UNSIGNED DEFAULT NULL,
  `closedby` mediumint(8) DEFAULT NULL,
  `replies` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `staffreplies` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `owner` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `assignedby` mediumint(8) DEFAULT NULL,
  `time_worked` time NOT NULL DEFAULT '00:00:00',
  `lastreplier` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `replierid` smallint(5) UNSIGNED DEFAULT NULL,
  `archive` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `locked` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `merged` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `history` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom1` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom2` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom3` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom4` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom5` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom6` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom7` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom8` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom9` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom10` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom11` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom12` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom13` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom14` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom15` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom16` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom17` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom18` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom19` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom20` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom21` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom22` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom23` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom24` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom25` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom26` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom27` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom28` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom29` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom30` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom31` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom32` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom33` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom34` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom35` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom36` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom37` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom38` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom39` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom40` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom41` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom42` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom43` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom44` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom45` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom46` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom47` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom48` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom49` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom50` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `trackid`, `name`, `email`, `category`, `priority`, `subject`, `message`, `dt`, `lastchange`, `firstreply`, `closedat`, `articles`, `ip`, `language`, `status`, `openedby`, `firstreplyby`, `closedby`, `replies`, `staffreplies`, `owner`, `assignedby`, `time_worked`, `lastreplier`, `replierid`, `archive`, `locked`, `attachments`, `merged`, `history`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `custom11`, `custom12`, `custom13`, `custom14`, `custom15`, `custom16`, `custom17`, `custom18`, `custom19`, `custom20`, `custom21`, `custom22`, `custom23`, `custom24`, `custom25`, `custom26`, `custom27`, `custom28`, `custom29`, `custom30`, `custom31`, `custom32`, `custom33`, `custom34`, `custom35`, `custom36`, `custom37`, `custom38`, `custom39`, `custom40`, `custom41`, `custom42`, `custom43`, `custom44`, `custom45`, `custom46`, `custom47`, `custom48`, `custom49`, `custom50`) VALUES
(1, '3UT-PLR-2EMR', 'test', 'admin@admin.com', 1, '3', 'faulty tv', 'faulty tv', '2019-05-03 22:05:49', '2019-05-03 22:05:49', NULL, NULL, NULL, '::1', NULL, 0, 1, NULL, NULL, 0, 0, 1, -1, '00:00:00', '0', NULL, '0', '0', '', '', '<li class=\"smaller\">2019-05-03 22:05:49 | ticket created by Your name (admin)</li><li class=\"smaller\">2019-05-03 22:05:49 | automatically assigned to Your name (admin)</li>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'AQR-52N-42G2', 'joe', 'joe@mail.com', 1, '2', 'another test ticket', 'another wab ticket', '2019-05-03 22:33:21', '2019-05-03 22:33:21', NULL, NULL, NULL, '::1', NULL, 0, 1, NULL, NULL, 0, 0, 1, -1, '00:00:00', '0', NULL, '0', '0', '1#2015-C-Class-Sedan-Exterior-8.jpg,2#2015-C-Class-Sedan-Exterior-21.jpg,', '', '<li class=\"smaller\">2019-05-03 22:33:21 | ticket created by Your name (admin)</li><li class=\"smaller\">2019-05-03 22:33:21 | automatically assigned to Your name (admin)</li>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'HZ5-MPP-H4WU', 'will', 'will@west.com', 2, '2', 'no sound', 'sound system plays with no sound out', '2019-05-03 22:45:44', '2019-05-03 22:47:02', '2019-05-03 22:47:02', NULL, NULL, '::1', NULL, 2, 1, 1, NULL, 1, 1, 1, -1, '00:00:18', '1', 1, '0', '0', '3#mercedes-benz-c-class-4.jpg,4#2015-mercedes-benz-c-class-wallpaper-hd-58568-3779152.jpg,', '', '<li class=\"smaller\">2019-05-03 22:45:44 | ticket created by Your name (admin)</li><li class=\"smaller\">2019-05-03 22:45:44 | automatically assigned to Your name (admin)</li>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_templates`
--

CREATE TABLE `ticket_templates` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tpl_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `useType` (`use`,`type`);

--
-- Indexes for table `custom_statuses`
--
ALTER TABLE `custom_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`,`read`,`deletedby`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketid` (`ticket`);

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `dt` (`dt`);

--
-- Indexes for table `pipe_loops`
--
ALTER TABLE `pipe_loops`
  ADD KEY `email` (`email`,`hits`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replyto` (`replyto`),
  ADD KEY `dt` (`dt`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `reply_drafts`
--
ALTER TABLE `reply_drafts`
  ADD KEY `owner` (`owner`),
  ADD KEY `ticket` (`ticket`);

--
-- Indexes for table `service_messages`
--
ALTER TABLE `service_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `std_replies`
--
ALTER TABLE `std_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trackid` (`trackid`),
  ADD KEY `archive` (`archive`),
  ADD KEY `categories` (`category`),
  ADD KEY `statuses` (`status`),
  ADD KEY `owner` (`owner`),
  ADD KEY `openedby` (`openedby`,`firstreplyby`,`closedby`),
  ADD KEY `dt` (`dt`);

--
-- Indexes for table `ticket_templates`
--
ALTER TABLE `ticket_templates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `att_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_messages`
--
ALTER TABLE `service_messages`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `std_replies`
--
ALTER TABLE `std_replies`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket_templates`
--
ALTER TABLE `ticket_templates`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '$2y$12$mHqoVAx/jCG0Yz5xutLUm.CEjtjBFbZBnNoaPREouUHkAIQ2mjhFO', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1556913128, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
