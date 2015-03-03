-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 03 Mars 2015 à 15:03
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `concrete5`
--
CREATE DATABASE IF NOT EXISTS `concrete5` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `concrete5`;

-- --------------------------------------------------------

--
-- Structure de la table `areapermissionassignments`
--

CREATE TABLE IF NOT EXISTS `areapermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `areapermissionblocktypeaccesslist`
--

CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `areapermissionblocktypeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Contenu de la table `areas`
--

INSERT INTO `areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`) VALUES
(1, 106, 'Header', 0, 0, 0),
(2, 106, 'Column 1', 0, 0, 0),
(3, 106, 'Column 2', 0, 0, 0),
(4, 106, 'Column 3', 0, 0, 0),
(5, 106, 'Column 4', 0, 0, 0),
(6, 107, 'Primary', 0, 0, 0),
(7, 107, 'Secondary 1', 0, 0, 0),
(8, 107, 'Secondary 2', 0, 0, 0),
(9, 107, 'Secondary 3', 0, 0, 0),
(10, 107, 'Secondary 4', 0, 0, 0),
(11, 107, 'Secondary 5', 0, 0, 0),
(12, 1, 'Header Nav', 0, 0, 0),
(13, 1, 'Header', 0, 0, 0),
(14, 1, 'Sidebar', 0, 0, 0),
(15, 1, 'Main', 0, 0, 0),
(16, 123, 'Header Nav', 0, 0, 0),
(17, 123, 'Header', 0, 0, 0),
(18, 123, 'Sidebar', 0, 0, 0),
(19, 123, 'Main', 0, 0, 0),
(20, 124, 'Main', 0, 0, 0),
(21, 118, 'Main', 0, 0, 0),
(22, 1, 'Menu', 0, 0, 0),
(23, 1, 'contenu', 0, 0, 0),
(26, 126, 'Header Nav', 0, 0, 0),
(27, 126, 'Header', 0, 0, 0),
(28, 126, 'Menu', 0, 0, 0),
(29, 126, 'banniere', 0, 0, 0),
(30, 126, 'Titre', 0, 0, 0),
(31, 126, 'col1', 0, 0, 0),
(32, 126, 'col2', 0, 0, 0),
(33, 126, 'col3', 0, 0, 0),
(34, 126, 'social', 0, 0, 0),
(35, 126, 'contact', 0, 0, 0),
(36, 126, 'actualite', 0, 0, 0),
(37, 123, 'Menu', 0, 0, 0),
(38, 123, 'contenu', 0, 0, 0),
(39, 1, 'banniere', 0, 0, 0),
(40, 1, 'Titre', 0, 0, 0),
(41, 1, 'col1', 0, 0, 0),
(42, 1, 'col2', 0, 0, 0),
(43, 1, 'col3', 0, 0, 0),
(44, 1, 'social', 0, 0, 0),
(45, 1, 'contact', 0, 0, 0),
(46, 1, 'actualite', 0, 0, 0),
(47, 127, 'col1', 0, 0, 0),
(48, 127, 'col2', 0, 0, 0),
(49, 127, 'col3', 0, 0, 0),
(50, 127, 'Titre', 0, 0, 0),
(51, 127, 'banniere', 0, 0, 0),
(52, 127, 'social', 0, 0, 0),
(53, 127, 'Menu', 0, 0, 0),
(54, 127, 'contact', 0, 0, 0),
(55, 127, 'actualite', 0, 0, 0),
(56, 128, 'col1', 0, 0, 0),
(57, 128, 'col2', 0, 0, 0),
(58, 128, 'col3', 0, 0, 0),
(59, 128, 'Titre', 0, 0, 0),
(60, 128, 'banniere', 0, 0, 0),
(61, 128, 'social', 0, 0, 0),
(62, 128, 'Menu', 0, 0, 0),
(63, 128, 'contact', 0, 0, 0),
(64, 128, 'actualite', 0, 0, 0),
(65, 129, 'Menu', 0, 0, 0),
(66, 129, 'contenu', 0, 0, 0),
(67, 131, 'Menu', 0, 0, 0),
(68, 131, 'contenu', 0, 0, 0),
(69, 130, 'Menu', 0, 0, 0),
(70, 130, 'contenu', 0, 0, 0),
(71, 127, 'contenu', 0, 0, 0),
(72, 127, 'contenu : Layout 1 : Cell 1', 0, 0, 0),
(73, 127, 'contenu : Layout 1 : Cell 2', 0, 0, 0),
(74, 127, 'contenu : Layout 1 : Cell 3', 0, 0, 0),
(75, 127, 'contenu : Layout 1 : Cell 4', 0, 0, 0),
(76, 127, 'contenu : Layout 1 : Cell 5', 0, 0, 0),
(77, 127, 'contenu : Layout 1 : Cell 6', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ataddress`
--

CREATE TABLE IF NOT EXISTS `ataddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ataddresscustomcountries`
--

CREATE TABLE IF NOT EXISTS `ataddresscustomcountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ataddresssettings`
--

CREATE TABLE IF NOT EXISTS `ataddresssettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `atboolean`
--

CREATE TABLE IF NOT EXISTS `atboolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `atboolean`
--

INSERT INTO `atboolean` (`avID`, `value`) VALUES
(20, 1),
(31, 1),
(34, 1),
(64, 1),
(65, 1),
(68, 1),
(69, 1),
(75, 1),
(109, 1),
(118, 1),
(119, 1),
(120, 1);

-- --------------------------------------------------------

--
-- Structure de la table `atbooleansettings`
--

CREATE TABLE IF NOT EXISTS `atbooleansettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `atbooleansettings`
--

INSERT INTO `atbooleansettings` (`akID`, `akCheckedByDefault`) VALUES
(5, 0),
(6, 0),
(8, 0),
(9, 0),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Structure de la table `atdatetime`
--

CREATE TABLE IF NOT EXISTS `atdatetime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `atdatetimesettings`
--

CREATE TABLE IF NOT EXISTS `atdatetimesettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `atdefault`
--

CREATE TABLE IF NOT EXISTS `atdefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `atdefault`
--

INSERT INTO `atdefault` (`avID`, `value`) VALUES
(1, 'blog, blogging'),
(2, 'icon-book'),
(3, 'new blog, write blog, blogging'),
(4, 'icon-pencil'),
(5, 'blog drafts, composer'),
(6, 'icon-book'),
(7, 'pages, add page, delete page, copy, move, alias'),
(8, 'pages, add page, delete page, copy, move, alias'),
(9, 'icon-home'),
(10, 'pages, add page, delete page, copy, move, alias, bulk'),
(11, 'icon-road'),
(12, 'find page, search page, search, find, pages, sitemap'),
(13, 'icon-search'),
(14, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(15, 'icon-picture'),
(16, 'file, file attributes, title, attribute, description, rename'),
(17, 'icon-cog'),
(18, 'files, category, categories'),
(19, 'icon-list-alt'),
(21, 'new file set'),
(22, 'icon-plus-sign'),
(23, 'users, groups, people, find, delete user, remove user, change password, password'),
(24, 'find, search, people, delete user, remove user, change password, password'),
(25, 'icon-user'),
(26, 'user, group, people, permissions, access, expire'),
(27, 'icon-globe'),
(28, 'user attributes, user data, gather data, registration data'),
(29, 'icon-cog'),
(30, 'new user, create'),
(32, 'icon-plus-sign'),
(33, 'new user group, new group, group, create'),
(35, 'icon-plus'),
(36, 'group set'),
(37, 'icon-list'),
(38, 'forms, log, error, email, mysql, exception, survey'),
(39, 'hits, pageviews, visitors, activity'),
(40, 'icon-signal'),
(41, 'forms, questions, response, data'),
(42, 'icon-briefcase'),
(43, 'questions, quiz, response'),
(44, 'icon-tasks'),
(45, 'forms, log, error, email, mysql, exception, survey, history'),
(46, 'icon-time'),
(47, 'new theme, theme, active theme, change theme, template, css'),
(48, 'icon-font'),
(49, 'theme'),
(50, 'page types'),
(51, 'custom theme, change theme, custom css, css'),
(52, 'page type defaults, global block, global area, starter, template'),
(53, 'icon-file'),
(54, 'page attributes, custom'),
(55, 'icon-cog'),
(56, 'single, page, custom, application'),
(57, 'icon-wrench'),
(58, 'add workflow, remove workflow'),
(59, 'icon-list'),
(60, 'icon-user'),
(61, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(62, 'icon-th'),
(63, 'icon-lock'),
(66, 'block, refresh, custom'),
(67, 'icon-wrench'),
(70, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(71, 'update, upgrade'),
(72, 'concrete5.org, my account, marketplace'),
(73, 'buy theme, new theme, marketplace, template'),
(74, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(76, 'website name, title'),
(77, 'logo, favicon, iphone, icon, bookmark'),
(78, 'tinymce, content block, fonts, editor, content, overlay'),
(79, 'translate, translation, internationalization, multilingual'),
(80, 'timezone, profile, locale'),
(81, 'interface, quick nav, dashboard background, background image'),
(82, 'vanity, pretty url, seo, pageview, view'),
(83, 'bulk, seo, change keywords, engine, optimization, search'),
(84, 'traffic, statistics, google analytics, quant, pageviews, hits'),
(85, 'pretty, slug'),
(86, 'turn off statistics, tracking, statistics, pageviews, hits'),
(87, 'configure search, site search, search option'),
(88, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(89, 'cache option, turn off cache, no cache, page cache, caching'),
(90, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(91, 'editors, hide site, offline, private, public, access'),
(92, 'file options, file manager, upload, modify'),
(93, 'security, files, media, extension, manager, upload'),
(94, 'security, actions, administrator, admin, package, marketplace, search'),
(95, 'security, lock ip, lock out, block ip, address, restrict, access'),
(96, 'security, registration'),
(97, 'antispam, block spam, security'),
(98, 'lock site, under construction, hide, hidden'),
(99, 'profile, login, redirect, specific, dashboard, administrators'),
(100, 'member profile, member page, community, forums, social, avatar'),
(101, 'signup, new user, community'),
(102, 'smtp, mail settings'),
(103, 'email server, mail settings, mail configuration, external, internal'),
(104, 'test smtp, test mail'),
(105, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(106, 'attribute configuration'),
(107, 'attributes, sets'),
(108, 'attributes, types'),
(110, 'overrides, system info, debug, support, help'),
(111, 'errors, exceptions, develop, support, help'),
(112, 'email, logging, logs, smtp, pop, errors, mysql, log'),
(113, 'security, alternate storage, hide files'),
(114, 'network, proxy server'),
(115, 'export, backup, database, sql, mysql, encryption, restore'),
(116, 'upgrade, new version, update'),
(117, 'export, database, xml, starting, points, schema, refresh, custom, tables');

-- --------------------------------------------------------

--
-- Structure de la table `atfile`
--

CREATE TABLE IF NOT EXISTS `atfile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `atnumber`
--

CREATE TABLE IF NOT EXISTS `atnumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `atnumber`
--

INSERT INTO `atnumber` (`avID`, `value`) VALUES
(121, '298.0000'),
(122, '189.0000'),
(123, '298.0000'),
(124, '193.0000'),
(125, '298.0000'),
(126, '193.0000'),
(127, '938.0000'),
(128, '339.0000'),
(129, '560.0000'),
(130, '350.0000'),
(131, '62.0000'),
(132, '62.0000'),
(133, '59.0000'),
(134, '61.0000'),
(135, '62.0000'),
(136, '61.0000'),
(137, '60.0000'),
(138, '64.0000'),
(139, '61.0000'),
(140, '62.0000'),
(141, '58.0000'),
(142, '62.0000'),
(143, '56.0000'),
(144, '61.0000'),
(145, '58.0000'),
(146, '62.0000'),
(147, '600.0000'),
(148, '400.0000'),
(149, '800.0000'),
(150, '586.0000'),
(151, '645.0000'),
(152, '320.0000');

-- --------------------------------------------------------

--
-- Structure de la table `atselectoptions`
--

CREATE TABLE IF NOT EXISTS `atselectoptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `atselectoptionsselected`
--

CREATE TABLE IF NOT EXISTS `atselectoptionsselected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `atselectsettings`
--

CREATE TABLE IF NOT EXISTS `atselectsettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `attextareasettings`
--

CREATE TABLE IF NOT EXISTS `attextareasettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `attextareasettings`
--

INSERT INTO `attextareasettings` (`akID`, `akTextareaDisplayMode`) VALUES
(2, ''),
(3, ''),
(4, ''),
(7, '');

-- --------------------------------------------------------

--
-- Structure de la table `attributekeycategories`
--

CREATE TABLE IF NOT EXISTS `attributekeycategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `attributekeycategories`
--

INSERT INTO `attributekeycategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `attributekeys`
--

CREATE TABLE IF NOT EXISTS `attributekeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `attributekeys`
--

INSERT INTO `attributekeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1, 'meta_title', 'Meta Title', 1, 1, 0, 0, 0, 1, 1, 1, 0),
(2, 'meta_description', 'Meta Description', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(3, 'meta_keywords', 'Meta Keywords', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(4, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 1, 0, 1, 2, 1, 0),
(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(7, 'header_extra_content', 'Header Extra Content', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(8, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(9, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(10, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(11, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(12, 'width', 'Width', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(13, 'height', 'Height', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(14, 'duration', 'Duration', 1, 1, 0, 0, 0, 1, 6, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `attributesetkeys`
--

CREATE TABLE IF NOT EXISTS `attributesetkeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `attributesetkeys`
--

INSERT INTO `attributesetkeys` (`akID`, `asID`, `displayOrder`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 2, 1),
(6, 2, 2),
(7, 1, 4),
(8, 2, 3),
(9, 2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `attributesets`
--

CREATE TABLE IF NOT EXISTS `attributesets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `attributesets`
--

INSERT INTO `attributesets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1, 'Page Header', 'page_header', 1, 0, 0, 0),
(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `attributetypecategories`
--

CREATE TABLE IF NOT EXISTS `attributetypecategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `attributetypecategories`
--

INSERT INTO `attributetypecategories` (`atID`, `akCategoryID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 2);

-- --------------------------------------------------------

--
-- Structure de la table `attributetypes`
--

CREATE TABLE IF NOT EXISTS `attributetypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `attributetypes`
--

INSERT INTO `attributetypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', 0),
(2, 'textarea', 'Text Area', 0),
(3, 'boolean', 'Checkbox', 0),
(4, 'date_time', 'Date/Time', 0),
(5, 'image_file', 'Image/File', 0),
(6, 'number', 'Number', 0),
(7, 'rating', 'Rating', 0),
(8, 'select', 'Select', 0),
(9, 'address', 'Address', 0);

-- --------------------------------------------------------

--
-- Structure de la table `attributevalues`
--

CREATE TABLE IF NOT EXISTS `attributevalues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=153 ;

--
-- Contenu de la table `attributevalues`
--

INSERT INTO `attributevalues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 3, '2014-12-09 15:45:12', 1, 2),
(2, 4, '2014-12-09 15:45:12', 1, 2),
(3, 3, '2014-12-09 15:45:12', 1, 2),
(4, 4, '2014-12-09 15:45:13', 1, 2),
(5, 3, '2014-12-09 15:45:13', 1, 2),
(6, 4, '2014-12-09 15:45:13', 1, 2),
(7, 3, '2014-12-09 15:45:13', 1, 2),
(8, 3, '2014-12-09 15:45:13', 1, 2),
(9, 4, '2014-12-09 15:45:13', 1, 2),
(10, 3, '2014-12-09 15:45:14', 1, 2),
(11, 4, '2014-12-09 15:45:14', 1, 2),
(12, 3, '2014-12-09 15:45:14', 1, 2),
(13, 4, '2014-12-09 15:45:14', 1, 2),
(14, 3, '2014-12-09 15:45:14', 1, 2),
(15, 4, '2014-12-09 15:45:15', 1, 2),
(16, 3, '2014-12-09 15:45:15', 1, 2),
(17, 4, '2014-12-09 15:45:15', 1, 2),
(18, 3, '2014-12-09 15:45:15', 1, 2),
(19, 4, '2014-12-09 15:45:15', 1, 2),
(20, 5, '2014-12-09 15:45:15', 1, 3),
(21, 3, '2014-12-09 15:45:15', 1, 2),
(22, 4, '2014-12-09 15:45:16', 1, 2),
(23, 3, '2014-12-09 15:45:16', 1, 2),
(24, 3, '2014-12-09 15:45:16', 1, 2),
(25, 4, '2014-12-09 15:45:16', 1, 2),
(26, 3, '2014-12-09 15:45:16', 1, 2),
(27, 4, '2014-12-09 15:45:17', 1, 2),
(28, 3, '2014-12-09 15:45:17', 1, 2),
(29, 4, '2014-12-09 15:45:17', 1, 2),
(30, 3, '2014-12-09 15:45:17', 1, 2),
(31, 5, '2014-12-09 15:45:17', 1, 3),
(32, 4, '2014-12-09 15:45:18', 1, 2),
(33, 3, '2014-12-09 15:45:18', 1, 2),
(34, 5, '2014-12-09 15:45:18', 1, 3),
(35, 4, '2014-12-09 15:45:18', 1, 2),
(36, 3, '2014-12-09 15:45:18', 1, 2),
(37, 4, '2014-12-09 15:45:18', 1, 2),
(38, 3, '2014-12-09 15:45:19', 1, 2),
(39, 3, '2014-12-09 15:45:19', 1, 2),
(40, 4, '2014-12-09 15:45:19', 1, 2),
(41, 3, '2014-12-09 15:45:19', 1, 2),
(42, 4, '2014-12-09 15:45:19', 1, 2),
(43, 3, '2014-12-09 15:45:19', 1, 2),
(44, 4, '2014-12-09 15:45:20', 1, 2),
(45, 3, '2014-12-09 15:45:20', 1, 2),
(46, 4, '2014-12-09 15:45:20', 1, 2),
(47, 3, '2014-12-09 15:45:20', 1, 2),
(48, 4, '2014-12-09 15:45:20', 1, 2),
(49, 3, '2014-12-09 15:45:21', 1, 2),
(50, 3, '2014-12-09 15:45:21', 1, 2),
(51, 3, '2014-12-09 15:45:21', 1, 2),
(52, 3, '2014-12-09 15:45:21', 1, 2),
(53, 4, '2014-12-09 15:45:21', 1, 2),
(54, 3, '2014-12-09 15:45:21', 1, 2),
(55, 4, '2014-12-09 15:45:21', 1, 2),
(56, 3, '2014-12-09 15:45:22', 1, 2),
(57, 4, '2014-12-09 15:45:22', 1, 2),
(58, 3, '2014-12-09 15:45:22', 1, 2),
(59, 4, '2014-12-09 15:45:22', 1, 2),
(60, 4, '2014-12-09 15:45:22', 1, 2),
(61, 3, '2014-12-09 15:45:22', 1, 2),
(62, 4, '2014-12-09 15:45:23', 1, 2),
(63, 4, '2014-12-09 15:45:23', 1, 2),
(64, 5, '2014-12-09 15:45:23', 1, 3),
(65, 8, '2014-12-09 15:45:23', 1, 3),
(66, 3, '2014-12-09 15:45:23', 1, 2),
(67, 4, '2014-12-09 15:45:24', 1, 2),
(68, 5, '2014-12-09 15:45:24', 1, 3),
(69, 5, '2014-12-09 15:45:24', 1, 3),
(70, 3, '2014-12-09 15:45:24', 1, 2),
(71, 3, '2014-12-09 15:45:24', 1, 2),
(72, 3, '2014-12-09 15:45:24', 1, 2),
(73, 3, '2014-12-09 15:45:24', 1, 2),
(74, 3, '2014-12-09 15:45:25', 1, 2),
(75, 5, '2014-12-09 15:45:25', 1, 3),
(76, 3, '2014-12-09 15:45:25', 1, 2),
(77, 3, '2014-12-09 15:45:25', 1, 2),
(78, 3, '2014-12-09 15:45:25', 1, 2),
(79, 3, '2014-12-09 15:45:25', 1, 2),
(80, 3, '2014-12-09 15:45:25', 1, 2),
(81, 3, '2014-12-09 15:45:26', 1, 2),
(82, 3, '2014-12-09 15:45:26', 1, 2),
(83, 3, '2014-12-09 15:45:26', 1, 2),
(84, 3, '2014-12-09 15:45:26', 1, 2),
(85, 3, '2014-12-09 15:45:26', 1, 2),
(86, 3, '2014-12-09 15:45:26', 1, 2),
(87, 3, '2014-12-09 15:45:26', 1, 2),
(88, 3, '2014-12-09 15:45:27', 1, 2),
(89, 3, '2014-12-09 15:45:27', 1, 2),
(90, 3, '2014-12-09 15:45:27', 1, 2),
(91, 3, '2014-12-09 15:45:27', 1, 2),
(92, 3, '2014-12-09 15:45:27', 1, 2),
(93, 3, '2014-12-09 15:45:27', 1, 2),
(94, 3, '2014-12-09 15:45:27', 1, 2),
(95, 3, '2014-12-09 15:45:28', 1, 2),
(96, 3, '2014-12-09 15:45:28', 1, 2),
(97, 3, '2014-12-09 15:45:28', 1, 2),
(98, 3, '2014-12-09 15:45:28', 1, 2),
(99, 3, '2014-12-09 15:45:28', 1, 2),
(100, 3, '2014-12-09 15:45:29', 1, 2),
(101, 3, '2014-12-09 15:45:29', 1, 2),
(102, 3, '2014-12-09 15:45:29', 1, 2),
(103, 3, '2014-12-09 15:45:29', 1, 2),
(104, 3, '2014-12-09 15:45:29', 1, 2),
(105, 3, '2014-12-09 15:45:29', 1, 2),
(106, 3, '2014-12-09 15:45:30', 1, 2),
(107, 3, '2014-12-09 15:45:30', 1, 2),
(108, 3, '2014-12-09 15:45:30', 1, 2),
(109, 8, '2014-12-09 15:45:30', 1, 3),
(110, 3, '2014-12-09 15:45:30', 1, 2),
(111, 3, '2014-12-09 15:45:30', 1, 2),
(112, 3, '2014-12-09 15:45:30', 1, 2),
(113, 3, '2014-12-09 15:45:31', 1, 2),
(114, 3, '2014-12-09 15:45:31', 1, 2),
(115, 3, '2014-12-09 15:45:31', 1, 2),
(116, 3, '2014-12-09 15:45:31', 1, 2),
(117, 3, '2014-12-09 15:45:31', 1, 2),
(118, 5, '2014-12-09 15:45:33', 1, 3),
(119, 5, '2014-12-09 15:45:36', 1, 3),
(120, 8, '2014-12-09 15:45:36', 1, 3),
(121, 12, '2015-03-02 14:41:42', 1, 6),
(122, 13, '2015-03-02 14:41:43', 1, 6),
(123, 12, '2015-03-02 15:00:49', 1, 6),
(124, 13, '2015-03-02 15:00:49', 1, 6),
(125, 12, '2015-03-02 15:08:05', 1, 6),
(126, 13, '2015-03-02 15:08:05', 1, 6),
(127, 12, '2015-03-02 15:16:59', 1, 6),
(128, 13, '2015-03-02 15:17:00', 1, 6),
(129, 12, '2015-03-02 15:17:19', 1, 6),
(130, 13, '2015-03-02 15:17:19', 1, 6),
(131, 12, '2015-03-02 15:26:10', 1, 6),
(132, 13, '2015-03-02 15:26:11', 1, 6),
(133, 12, '2015-03-02 15:26:22', 1, 6),
(134, 13, '2015-03-02 15:26:22', 1, 6),
(135, 12, '2015-03-02 15:26:37', 1, 6),
(136, 13, '2015-03-02 15:26:37', 1, 6),
(137, 12, '2015-03-02 15:26:51', 1, 6),
(138, 13, '2015-03-02 15:26:52', 1, 6),
(139, 12, '2015-03-02 15:27:11', 1, 6),
(140, 13, '2015-03-02 15:27:11', 1, 6),
(141, 12, '2015-03-02 22:15:02', 1, 6),
(142, 13, '2015-03-02 22:15:02', 1, 6),
(143, 12, '2015-03-02 22:20:22', 1, 6),
(144, 13, '2015-03-02 22:20:23', 1, 6),
(145, 12, '2015-03-02 22:21:33', 1, 6),
(146, 13, '2015-03-02 22:21:33', 1, 6),
(147, 12, '2015-03-02 23:18:27', 1, 6),
(148, 13, '2015-03-02 23:18:28', 1, 6),
(149, 12, '2015-03-02 23:19:07', 1, 6),
(150, 13, '2015-03-02 23:19:07', 1, 6),
(151, 12, '2015-03-02 23:21:25', 1, 6),
(152, 13, '2015-03-02 23:21:26', 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `basicworkflowpermissionassignments`
--

CREATE TABLE IF NOT EXISTS `basicworkflowpermissionassignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `basicworkflowprogressdata`
--

CREATE TABLE IF NOT EXISTS `basicworkflowprogressdata` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `blockpermissionassignments`
--

CREATE TABLE IF NOT EXISTS `blockpermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `blockrelations`
--

CREATE TABLE IF NOT EXISTS `blockrelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `blockrelations`
--

INSERT INTO `blockrelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(2, 18, 16, 'DUPLICATE'),
(3, 40, 39, 'DUPLICATE'),
(4, 67, 62, 'DUPLICATE'),
(5, 68, 67, 'DUPLICATE'),
(6, 69, 68, 'DUPLICATE'),
(7, 70, 64, 'DUPLICATE'),
(8, 71, 65, 'DUPLICATE'),
(9, 72, 70, 'DUPLICATE'),
(10, 73, 66, 'DUPLICATE'),
(11, 74, 71, 'DUPLICATE'),
(12, 75, 73, 'DUPLICATE'),
(13, 76, 60, 'DUPLICATE'),
(14, 77, 69, 'DUPLICATE'),
(15, 81, 80, 'DUPLICATE'),
(16, 82, 81, 'DUPLICATE'),
(17, 83, 82, 'DUPLICATE'),
(18, 93, 87, 'DUPLICATE'),
(19, 94, 88, 'DUPLICATE'),
(20, 95, 89, 'DUPLICATE'),
(21, 96, 95, 'DUPLICATE'),
(22, 98, 97, 'DUPLICATE'),
(23, 99, 98, 'DUPLICATE'),
(24, 100, 99, 'DUPLICATE'),
(25, 101, 100, 'DUPLICATE'),
(26, 103, 102, 'DUPLICATE'),
(27, 106, 105, 'DUPLICATE');

-- --------------------------------------------------------

--
-- Structure de la table `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Contenu de la table `blocks`
--

INSERT INTO `blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2014-12-09 15:45:31', '2014-12-09 15:45:32', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"1";i:1;s:161:"	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"1";s:7:"content";s:161:"	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						";}'),
(2, '', '2014-12-09 15:45:32', '2014-12-09 15:45:32', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"2";i:1;s:327:"<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"2";s:7:"content";s:327:"<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>";}'),
(3, '', '2014-12-09 15:45:32', '2014-12-09 15:45:33', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"3";i:1;s:368:"<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"3";s:7:"content";s:368:"<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>";}'),
(4, '', '2014-12-09 15:45:33', '2014-12-09 15:45:33', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"4";i:1;s:323:"<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"4";s:7:"content";s:323:"<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>";}'),
(5, '', '2014-12-09 15:45:33', '2014-12-09 15:45:33', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"5";i:1;s:346:"\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"5";s:7:"content";s:346:"\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>";}'),
(6, '', '2014-12-09 15:45:34', '2014-12-09 15:45:34', NULL, '1', 6, 1, NULL),
(7, '', '2014-12-09 15:45:34', '2014-12-09 15:45:34', NULL, '1', 7, 1, NULL),
(8, '', '2014-12-09 15:45:34', '2014-12-09 15:45:35', NULL, '1', 5, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"8";i:1;s:1:"A";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"8";s:4:"slot";s:1:"A";}'),
(9, '', '2014-12-09 15:45:35', '2014-12-09 15:45:35', NULL, '1', 5, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"9";i:1;s:1:"B";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"9";s:4:"slot";s:1:"B";}'),
(10, '', '2014-12-09 15:45:35', '2014-12-09 15:45:35', NULL, '1', 4, 1, NULL),
(11, '', '2014-12-09 15:45:35', '2014-12-09 15:45:36', NULL, '1', 3, 1, NULL),
(12, '', '2014-12-09 15:45:36', '2014-12-09 15:45:36', NULL, '1', 5, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"12";i:1;s:1:"C";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"12";s:4:"slot";s:1:"C";}'),
(13, NULL, '2014-12-09 16:00:07', '2014-12-09 16:00:07', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"13";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:1;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"13";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:1;}'),
(14, NULL, '2014-12-09 16:13:10', '2014-12-09 16:13:10', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"14";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"14";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(16, NULL, '2014-12-09 16:29:21', '2014-12-09 16:29:21', NULL, '1', 2, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"16";i:1;s:3:"124";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"16";s:4:"stID";s:3:"124";}'),
(17, NULL, '2014-12-09 16:29:40', '2014-12-09 16:29:40', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"17";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"17";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(18, NULL, '2014-12-09 16:30:44', '2014-12-09 16:30:44', NULL, '1', 2, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";s:6:"bID=18";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"18";i:1;s:3:"124";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"18";s:4:"stID";s:3:"124";}'),
(19, NULL, '2015-03-02 14:39:01', '2015-03-02 14:47:37', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"19";i:1;s:22:"<h2>Perfect Logic</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"19";s:7:"content";s:22:"<h2>Perfect Logic</h2>";}'),
(20, NULL, '2015-03-02 14:40:09', '2015-03-02 14:40:09', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"20";i:1;s:31:"All you want your website to do";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"20";s:7:"content";s:31:"All you want your website to do";}'),
(21, NULL, '2015-03-02 14:42:15', '2015-03-02 14:53:08', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"21";i:1;s:1:"1";i:2;s:1:"0";i:3;i:340;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"21";s:3:"fID";s:1:"1";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:340;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(22, NULL, '2015-03-02 14:44:09', '2015-03-02 15:02:37', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"22";i:1;s:145:"Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"22";s:7:"content";s:145:"Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens";}'),
(23, NULL, '2015-03-02 14:59:21', '2015-03-02 15:04:06', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"23";i:1;s:26:"<h2>Complete Solution</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"23";s:7:"content";s:26:"<h2>Complete Solution</h2>";}'),
(24, NULL, '2015-03-02 15:00:17', '2015-03-02 15:00:17', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"24";i:1;s:45:"A tools anything and everything you can think";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"24";s:7:"content";s:45:"A tools anything and everything you can think";}'),
(25, NULL, '2015-03-02 15:01:06', '2015-03-02 15:01:06', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"25";i:1;s:1:"2";i:2;s:1:"0";i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"25";s:3:"fID";s:1:"2";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(26, NULL, '2015-03-02 15:02:05', '2015-03-02 15:02:49', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"26";i:1;s:145:"Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"26";s:7:"content";s:145:"Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens";}'),
(27, NULL, '2015-03-02 15:06:10', '2015-03-02 15:06:10', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"27";i:1;s:21:"<h2>Uber Culture</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"27";s:7:"content";s:21:"<h2>Uber Culture</h2>";}'),
(28, NULL, '2015-03-02 15:07:09', '2015-03-02 15:07:09', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"28";i:1;s:30:"Fresh,Modern and ready for you";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"28";s:7:"content";s:30:"Fresh,Modern and ready for you";}'),
(29, NULL, '2015-03-02 15:08:19', '2015-03-02 15:08:19', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"29";i:1;s:1:"3";i:2;s:1:"0";i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"29";s:3:"fID";s:1:"3";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(30, NULL, '2015-03-02 15:09:00', '2015-03-02 15:09:00', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"30";i:1;s:145:"Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"30";s:7:"content";s:145:"Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens";}'),
(31, NULL, '2015-03-02 15:11:15', '2015-03-02 15:11:15', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"31";i:1;s:21:"Welcome on my website";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"31";s:7:"content";s:21:"Welcome on my website";}'),
(32, NULL, '2015-03-02 15:17:37', '2015-03-02 15:17:37', NULL, '1', 23, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:11:"btSlideshow";s:8:"_tableat";s:11:"btSlideshow";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"32";i:1;i:0;i:2;s:5:"ORDER";i:3;N;i:4;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"32";s:4:"fsID";i:0;s:8:"playback";s:5:"ORDER";s:8:"duration";N;s:12:"fadeDuration";N;}'),
(33, NULL, '2015-03-02 15:21:31', '2015-03-02 15:21:31', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"33";i:1;s:21:"<h2>Social Media</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"33";s:7:"content";s:21:"<h2>Social Media</h2>";}'),
(34, NULL, '2015-03-02 15:30:07', '2015-03-02 15:30:07', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"34";i:1;s:62:"If you want to follow us, please click on the differents logos";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"34";s:7:"content";s:62:"If you want to follow us, please click on the differents logos";}'),
(35, NULL, '2015-03-02 15:31:46', '2015-03-02 15:34:25', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"35";i:1;s:334:"<p><img src="{CCM:FID_6}" alt="LogoFb.PNG" width="62" height="62" /><img src="{CCM:FID_8}" alt="LogoRss.PNG" width="62" height="61" /><img src="{CCM:FID_9}" alt="LogoTw.PNG" width="60" height="64" /><img src="{CCM:FID_10}" alt="LogoYt.PNG" width="61" height="62" /><img src="{CCM:FID_7}" alt="LogoIn.PNG" width="59" height="61" /></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"35";s:7:"content";s:334:"<p><img src="{CCM:FID_6}" alt="LogoFb.PNG" width="62" height="62" /><img src="{CCM:FID_8}" alt="LogoRss.PNG" width="62" height="61" /><img src="{CCM:FID_9}" alt="LogoTw.PNG" width="60" height="64" /><img src="{CCM:FID_10}" alt="LogoYt.PNG" width="61" height="62" /><img src="{CCM:FID_7}" alt="LogoIn.PNG" width="59" height="61" /></p>";}'),
(36, NULL, '2015-03-02 15:38:49', '2015-03-02 15:39:18', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"36";i:1;s:19:"<h2>Newsletter</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"36";s:7:"content";s:19:"<h2>Newsletter</h2>";}'),
(37, NULL, '2015-03-02 15:42:14', '2015-03-02 15:42:14', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"37";i:1;s:73:"If you want to be inform about the news, please sign up for our Newletter";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"37";s:7:"content";s:73:"If you want to be inform about the news, please sign up for our Newletter";}'),
(38, NULL, '2015-03-02 15:45:34', '2015-03-02 15:45:34', NULL, '1', 14, 1, NULL),
(39, NULL, '2015-03-02 16:02:29', '2015-03-02 16:02:29', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"39";i:1;s:23:"Welcome on my website\r\n";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"39";s:7:"content";s:23:"Welcome on my website\r\n";}'),
(40, NULL, '2015-03-02 16:06:25', '2015-03-02 16:06:25', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=40";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"40";i:1;s:23:"Welcome on my website\r\n";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"40";s:7:"content";s:23:"Welcome on my website\r\n";}'),
(41, NULL, '2015-03-02 16:07:05', '2015-03-02 16:07:05', NULL, '1', 23, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:11:"btSlideshow";s:8:"_tableat";s:11:"btSlideshow";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"41";i:1;i:0;i:2;s:5:"ORDER";i:3;N;i:4;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"41";s:4:"fsID";i:0;s:8:"playback";s:5:"ORDER";s:8:"duration";N;s:12:"fadeDuration";N;}'),
(42, NULL, '2015-03-02 21:49:48', '2015-03-02 21:49:48', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"42";i:1;s:22:"<h2>Perfect logic</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"42";s:7:"content";s:22:"<h2>Perfect logic</h2>";}'),
(43, NULL, '2015-03-02 21:50:28', '2015-03-02 21:50:28', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"43";i:1;s:28:"<h2>Perfect solution </h2>\r\n";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"43";s:7:"content";s:28:"<h2>Perfect solution </h2>\r\n";}'),
(44, NULL, '2015-03-02 21:51:01', '2015-03-02 21:51:01', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"44";i:1;s:21:"<h2>Uber culture</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"44";s:7:"content";s:21:"<h2>Uber culture</h2>";}'),
(45, NULL, '2015-03-02 21:51:33', '2015-03-02 21:51:33', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"45";i:1;s:31:"All you want your website to do";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"45";s:7:"content";s:31:"All you want your website to do";}'),
(46, NULL, '2015-03-02 21:52:41', '2015-03-02 21:52:41', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"46";i:1;s:45:"A tools anything and everything you can think";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"46";s:7:"content";s:45:"A tools anything and everything you can think";}'),
(47, NULL, '2015-03-02 21:53:20', '2015-03-02 21:53:20', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"47";i:1;s:30:"Fresh,modern and ready for you";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"47";s:7:"content";s:30:"Fresh,modern and ready for you";}'),
(48, NULL, '2015-03-02 21:54:01', '2015-03-02 21:54:01', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"48";i:1;s:1:"1";i:2;s:1:"0";i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"48";s:3:"fID";s:1:"1";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(49, NULL, '2015-03-02 21:54:25', '2015-03-02 21:54:25', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"49";i:1;s:23:"Le corps de l''article\r\n";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"49";s:7:"content";s:23:"Le corps de l''article\r\n";}'),
(50, NULL, '2015-03-02 21:55:13', '2015-03-02 21:55:13', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"50";i:1;s:1:"2";i:2;s:1:"0";i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"50";s:3:"fID";s:1:"2";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(51, NULL, '2015-03-02 21:55:31', '2015-03-02 21:55:31', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"51";i:1;s:21:"Le corps de l''article";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"51";s:7:"content";s:21:"Le corps de l''article";}'),
(53, NULL, '2015-03-02 21:56:17', '2015-03-02 21:56:17', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"53";i:1;s:1:"3";i:2;s:1:"0";i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"53";s:3:"fID";s:1:"3";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(54, NULL, '2015-03-02 21:56:32', '2015-03-02 21:56:32', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"54";i:1;s:21:"Le corps de l''article";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"54";s:7:"content";s:21:"Le corps de l''article";}'),
(55, NULL, '2015-03-02 21:57:17', '2015-03-02 21:58:23', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"55";i:1;s:23:"<h2>Social Media</h2>\r\n";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"55";s:7:"content";s:23:"<h2>Social Media</h2>\r\n";}'),
(56, NULL, '2015-03-02 21:59:38', '2015-03-02 22:00:56', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"56";i:1;s:59:"If you want the news, please subscribe for our social media";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"56";s:7:"content";s:59:"If you want the news, please subscribe for our social media";}'),
(58, NULL, '2015-03-02 22:01:54', '2015-03-02 22:01:54', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"58";i:1;s:334:"<p><img src="{CCM:FID_6}" alt="LogoFb.PNG" width="62" height="62" /><img src="{CCM:FID_9}" alt="LogoTw.PNG" width="60" height="64" /><img src="{CCM:FID_8}" alt="LogoRss.PNG" width="62" height="61" /><img src="{CCM:FID_7}" alt="LogoIn.PNG" width="59" height="61" /><img src="{CCM:FID_10}" alt="LogoYt.PNG" width="61" height="62" /></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"58";s:7:"content";s:334:"<p><img src="{CCM:FID_6}" alt="LogoFb.PNG" width="62" height="62" /><img src="{CCM:FID_9}" alt="LogoTw.PNG" width="60" height="64" /><img src="{CCM:FID_8}" alt="LogoRss.PNG" width="62" height="61" /><img src="{CCM:FID_7}" alt="LogoIn.PNG" width="59" height="61" /><img src="{CCM:FID_10}" alt="LogoYt.PNG" width="61" height="62" /></p>";}'),
(59, NULL, '2015-03-02 22:03:37', '2015-03-02 22:03:37', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"59";i:1;s:56:"If you want some news, please subscribe our Newsletter\r\n";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"59";s:7:"content";s:56:"If you want some news, please subscribe our Newsletter\r\n";}'),
(60, NULL, '2015-03-02 22:04:11', '2015-03-02 22:04:11', NULL, '1', 14, 1, NULL),
(61, NULL, '2015-03-02 22:05:36', '2015-03-02 22:05:36', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"61";i:1;s:16:"<h2>Contact</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"61";s:7:"content";s:16:"<h2>Contact</h2>";}'),
(62, NULL, '2015-03-02 22:08:14', '2015-03-02 22:10:56', NULL, '1', 14, 1, NULL),
(63, NULL, '2015-03-02 22:12:19', '2015-03-02 22:12:19', NULL, '1', 17, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"63";i:1;s:22:"<h2> News update </h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"63";s:7:"content";s:22:"<h2> News update </h2>";}'),
(64, NULL, '2015-03-02 22:18:04', '2015-03-02 22:18:04', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"64";i:1;s:138:"<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="{CCM:FID_11}" alt="news1.png" width="58" height="62" /></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"64";s:7:"content";s:138:"<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="{CCM:FID_11}" alt="news1.png" width="58" height="62" /></p>";}'),
(65, NULL, '2015-03-02 22:20:50', '2015-03-02 22:20:50', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"65";i:1;s:102:"<p><img style="float: left;" src="{CCM:FID_12}" alt="news2.png" width="56" height="61" />  News 2</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"65";s:7:"content";s:102:"<p><img style="float: left;" src="{CCM:FID_12}" alt="news2.png" width="56" height="61" />  News 2</p>";}'),
(66, NULL, '2015-03-02 22:22:01', '2015-03-02 22:22:01', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"66";i:1;s:102:"<p><img style="float: left;" src="{CCM:FID_13}" alt="firefox.png" width="58" height="62" /> New 3</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"66";s:7:"content";s:102:"<p><img style="float: left;" src="{CCM:FID_13}" alt="firefox.png" width="58" height="62" /> New 3</p>";}'),
(67, NULL, '2015-03-02 22:27:36', '2015-03-02 22:27:37', NULL, '1', 14, 1, NULL),
(68, NULL, '2015-03-02 22:29:00', '2015-03-02 22:29:00', NULL, '1', 14, 1, NULL),
(69, NULL, '2015-03-02 22:32:35', '2015-03-02 22:32:35', NULL, '1', 14, 1, NULL),
(70, NULL, '2015-03-02 22:33:19', '2015-03-02 22:33:19', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=70";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"70";i:1;s:138:"<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="{CCM:FID_11}" alt="news1.png" width="58" height="62" /></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"70";s:7:"content";s:138:"<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="{CCM:FID_11}" alt="news1.png" width="58" height="62" /></p>";}'),
(71, NULL, '2015-03-02 22:35:42', '2015-03-02 22:35:42', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=71";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"71";i:1;s:102:"<p><img style="float: left;" src="{CCM:FID_12}" alt="news2.png" width="56" height="61" />  News 2</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"71";s:7:"content";s:102:"<p><img style="float: left;" src="{CCM:FID_12}" alt="news2.png" width="56" height="61" />  News 2</p>";}'),
(72, NULL, '2015-03-02 22:36:35', '2015-03-02 22:36:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=72";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"72";i:1;s:138:"<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="{CCM:FID_11}" alt="news1.png" width="58" height="62" /></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"72";s:7:"content";s:138:"<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="{CCM:FID_11}" alt="news1.png" width="58" height="62" /></p>";}'),
(73, NULL, '2015-03-02 22:36:55', '2015-03-02 22:36:55', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=73";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"73";i:1;s:102:"<p><img style="float: left;" src="{CCM:FID_13}" alt="firefox.png" width="58" height="62" /> New 3</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"73";s:7:"content";s:102:"<p><img style="float: left;" src="{CCM:FID_13}" alt="firefox.png" width="58" height="62" /> New 3</p>";}'),
(74, NULL, '2015-03-02 22:38:28', '2015-03-02 22:38:28', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=74";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"74";i:1;s:102:"<p><img style="float: left;" src="{CCM:FID_12}" alt="news2.png" width="56" height="61" />  News 2</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"74";s:7:"content";s:102:"<p><img style="float: left;" src="{CCM:FID_12}" alt="news2.png" width="56" height="61" />  News 2</p>";}'),
(75, NULL, '2015-03-02 22:38:46', '2015-03-02 22:38:46', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=75";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"75";i:1;s:102:"<p><img style="float: left;" src="{CCM:FID_13}" alt="firefox.png" width="58" height="62" /> New 3</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"75";s:7:"content";s:102:"<p><img style="float: left;" src="{CCM:FID_13}" alt="firefox.png" width="58" height="62" /> New 3</p>";}'),
(76, NULL, '2015-03-02 22:39:34', '2015-03-02 22:39:34', NULL, '1', 14, 1, NULL),
(77, NULL, '2015-03-02 22:40:36', '2015-03-02 22:40:36', NULL, '1', 14, 1, NULL),
(78, NULL, '2015-03-02 22:43:46', '2015-03-02 22:43:46', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"78";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"78";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(79, NULL, '2015-03-02 22:44:56', '2015-03-02 22:44:56', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"79";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"79";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(80, NULL, '2015-03-02 22:47:38', '2015-03-02 22:47:38', NULL, '1', 15, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:11:"btGoogleMap";s:8:"_tableat";s:11:"btGoogleMap";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"80";i:1;s:10:"IUT Calais";i:2;s:18:"IUT calais-bouloge";i:3;d:0;i:4;d:0;i:5;i:14;i:6;i:0;i:7;s:0:"";i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"80";s:5:"title";s:10:"IUT Calais";s:8:"location";s:18:"IUT calais-bouloge";s:8:"latitude";d:0;s:9:"longitude";d:0;s:4:"zoom";i:14;s:11:"balloonShow";i:0;s:14:"balloonContent";s:0:"";s:21:"balloonWithLinkToMaps";i:0;}'),
(81, NULL, '2015-03-02 22:49:12', '2015-03-02 22:49:12', NULL, '1', 15, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:11:"btGoogleMap";s:8:"_tableat";s:11:"btGoogleMap";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"81";i:1;s:10:"IUT Calais";i:2;s:35:"IUT Calais-Boulogne Rue Louis David";i:3;d:0;i:4;d:0;i:5;i:15;i:6;i:0;i:7;s:0:"";i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"81";s:5:"title";s:10:"IUT Calais";s:8:"location";s:35:"IUT Calais-Boulogne Rue Louis David";s:8:"latitude";d:0;s:9:"longitude";d:0;s:4:"zoom";i:15;s:11:"balloonShow";i:0;s:14:"balloonContent";s:0:"";s:21:"balloonWithLinkToMaps";i:0;}'),
(82, NULL, '2015-03-02 22:50:08', '2015-03-02 22:50:08', NULL, '1', 15, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:11:"btGoogleMap";s:8:"_tableat";s:11:"btGoogleMap";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"82";i:1;s:10:"IUT Calais";i:2;s:45:"Rue Louis David - BP 689 - 62228 Calais Cedex";i:3;d:0;i:4;d:0;i:5;i:2;i:6;i:0;i:7;s:0:"";i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"82";s:5:"title";s:10:"IUT Calais";s:8:"location";s:45:"Rue Louis David - BP 689 - 62228 Calais Cedex";s:8:"latitude";d:0;s:9:"longitude";d:0;s:4:"zoom";i:2;s:11:"balloonShow";i:0;s:14:"balloonContent";s:0:"";s:21:"balloonWithLinkToMaps";i:0;}'),
(83, NULL, '2015-03-02 22:54:54', '2015-03-02 22:54:54', NULL, '1', 15, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:11:"btGoogleMap";s:8:"_tableat";s:11:"btGoogleMap";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"83";i:1;s:10:"IUT Calais";i:2;s:35:"Rue Louis David Calais Cedex FRANCE";i:3;d:50.9492364999999978181222104467451572418212890625;i:4;d:1.8853618000000000876070771482773125171661376953125;i:5;i:2;i:6;i:0;i:7;s:0:"";i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"83";s:5:"title";s:10:"IUT Calais";s:8:"location";s:35:"Rue Louis David Calais Cedex FRANCE";s:8:"latitude";d:50.9492364999999978181222104467451572418212890625;s:9:"longitude";d:1.8853618000000000876070771482773125171661376953125;s:4:"zoom";i:2;s:11:"balloonShow";i:0;s:14:"balloonContent";s:0:"";s:21:"balloonWithLinkToMaps";i:0;}'),
(84, NULL, '2015-03-02 23:01:10', '2015-03-02 23:01:10', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"84";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"84";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(85, NULL, '2015-03-02 23:04:29', '2015-03-02 23:04:29', NULL, '1', 14, 1, NULL),
(86, NULL, '2015-03-02 23:15:50', '2015-03-02 23:15:50', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"86";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"86";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(87, NULL, '2015-03-02 23:18:36', '2015-03-02 23:19:59', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"87";i:1;s:2:"14";i:2;s:1:"0";i:3;i:0;i:4;i:200;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"87";s:3:"fID";s:2:"14";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:200;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(88, NULL, '2015-03-02 23:19:19', '2015-03-02 23:19:38', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"88";i:1;s:2:"15";i:2;s:1:"0";i:3;i:0;i:4;i:200;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"88";s:3:"fID";s:2:"15";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:200;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(89, NULL, '2015-03-02 23:21:40', '2015-03-02 23:21:40', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"89";i:1;s:2:"16";i:2;s:1:"0";i:3;i:0;i:4;i:200;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"89";s:3:"fID";s:2:"16";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:200;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(90, NULL, '2015-03-02 23:22:01', '2015-03-02 23:22:01', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"90";i:1;s:45:"<p>Ici on trouve des bouteilles d''alcools</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"90";s:7:"content";s:45:"<p>Ici on trouve des bouteilles d''alcools</p>";}'),
(91, NULL, '2015-03-02 23:22:20', '2015-03-02 23:22:20', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"91";i:1;s:41:"<p>Ici on trouve des consoles de jeux</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"91";s:7:"content";s:41:"<p>Ici on trouve des consoles de jeux</p>";}'),
(92, NULL, '2015-03-02 23:22:39', '2015-03-02 23:22:39', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"92";i:1;s:37:"<p>Ici on trouve de la nourriture</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"92";s:7:"content";s:37:"<p>Ici on trouve de la nourriture</p>";}'),
(93, NULL, '2015-03-02 23:23:08', '2015-03-02 23:23:08', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"93";i:1;s:2:"14";i:2;s:1:"0";i:3;i:300;i:4;i:200;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"93";s:3:"fID";s:2:"14";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:300;s:9:"maxHeight";i:200;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(94, NULL, '2015-03-02 23:23:17', '2015-03-02 23:23:18', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"94";i:1;s:2:"15";i:2;s:1:"0";i:3;i:300;i:4;i:200;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"94";s:3:"fID";s:2:"15";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:300;s:9:"maxHeight";i:200;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(95, NULL, '2015-03-02 23:23:25', '2015-03-02 23:23:45', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"95";i:1;s:2:"16";i:2;s:1:"0";i:3;i:300;i:4;i:200;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"95";s:3:"fID";s:2:"16";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:300;s:9:"maxHeight";i:200;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(96, NULL, '2015-03-02 23:24:37', '2015-03-02 23:25:12', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"96";i:1;s:2:"16";i:2;s:1:"0";i:3;i:0;i:4;i:200;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"96";s:3:"fID";s:2:"16";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:200;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}');
INSERT INTO `blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(97, NULL, '2015-03-02 23:26:54', '2015-03-02 23:26:54', NULL, '1', 27, 1, 'O:11:"BlockRecord":15:{s:5:"_dbat";i:1;s:6:"_table";s:9:"btYouTube";s:8:"_tableat";s:9:"btYouTube";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:6:{i:0;s:2:"97";i:1;s:8:"A voir !";i:2;s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";i:3;s:3:"315";i:4;s:3:"560";i:5;i:1;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"97";s:5:"title";s:8:"A voir !";s:8:"videoURL";s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";s:7:"vHeight";s:3:"315";s:6:"vWidth";s:3:"560";s:7:"vPlayer";i:1;}'),
(98, NULL, '2015-03-02 23:27:48', '2015-03-02 23:27:48', NULL, '1', 27, 1, 'O:11:"BlockRecord":15:{s:5:"_dbat";i:1;s:6:"_table";s:9:"btYouTube";s:8:"_tableat";s:9:"btYouTube";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:6:{i:0;s:2:"98";i:1;s:8:"A voir !";i:2;s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";i:3;s:3:"150";i:4;s:3:"200";i:5;i:1;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"98";s:5:"title";s:8:"A voir !";s:8:"videoURL";s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";s:7:"vHeight";s:3:"150";s:6:"vWidth";s:3:"200";s:7:"vPlayer";i:1;}'),
(99, NULL, '2015-03-02 23:31:57', '2015-03-02 23:31:58', NULL, '1', 27, 1, 'O:11:"BlockRecord":15:{s:5:"_dbat";i:1;s:6:"_table";s:9:"btYouTube";s:8:"_tableat";s:9:"btYouTube";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:6:{i:0;s:2:"99";i:1;s:8:"A voir !";i:2;s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";i:3;s:3:"150";i:4;s:3:"200";i:5;i:1;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"99";s:5:"title";s:8:"A voir !";s:8:"videoURL";s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";s:7:"vHeight";s:3:"150";s:6:"vWidth";s:3:"200";s:7:"vPlayer";i:1;}'),
(100, NULL, '2015-03-02 23:33:53', '2015-03-02 23:33:53', NULL, '1', 27, 1, 'O:11:"BlockRecord":15:{s:5:"_dbat";i:1;s:6:"_table";s:9:"btYouTube";s:8:"_tableat";s:9:"btYouTube";s:6:"_where";s:7:"bID=100";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:6:{i:0;s:3:"100";i:1;s:8:"A voir !";i:2;s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";i:3;s:3:"150";i:4;s:3:"200";i:5;s:1:"1";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:3:"100";s:5:"title";s:8:"A voir !";s:8:"videoURL";s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";s:7:"vHeight";s:3:"150";s:6:"vWidth";s:3:"200";s:7:"vPlayer";s:1:"1";}'),
(101, NULL, '2015-03-02 23:34:21', '2015-03-02 23:34:21', NULL, '1', 27, 1, 'O:11:"BlockRecord":15:{s:5:"_dbat";i:1;s:6:"_table";s:9:"btYouTube";s:8:"_tableat";s:9:"btYouTube";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:6:{i:0;s:3:"101";i:1;s:8:"A voir !";i:2;s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";i:3;s:3:"250";i:4;s:3:"450";i:5;i:1;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:3:"101";s:5:"title";s:8:"A voir !";s:8:"videoURL";s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";s:7:"vHeight";s:3:"250";s:6:"vWidth";s:3:"450";s:7:"vPlayer";i:1;}'),
(102, NULL, '2015-03-02 23:35:37', '2015-03-02 23:35:37', NULL, '1', 27, 1, 'O:11:"BlockRecord":15:{s:5:"_dbat";i:1;s:6:"_table";s:9:"btYouTube";s:8:"_tableat";s:9:"btYouTube";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:6:{i:0;s:3:"102";i:1;s:9:"Ma vidéo";i:2;s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";i:3;s:3:"315";i:4;s:3:"560";i:5;i:1;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:3:"102";s:5:"title";s:9:"Ma vidéo";s:8:"videoURL";s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";s:7:"vHeight";s:3:"315";s:6:"vWidth";s:3:"560";s:7:"vPlayer";i:1;}'),
(103, NULL, '2015-03-02 23:36:12', '2015-03-02 23:36:12', NULL, '1', 27, 1, 'O:11:"BlockRecord":15:{s:5:"_dbat";i:1;s:6:"_table";s:9:"btYouTube";s:8:"_tableat";s:9:"btYouTube";s:6:"_where";s:7:"bID=103";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:6:{i:0;s:3:"103";i:1;s:9:"Ma vidéo";i:2;s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";i:3;s:3:"315";i:4;s:3:"560";i:5;s:1:"1";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:3:"103";s:5:"title";s:9:"Ma vidéo";s:8:"videoURL";s:43:"https://www.youtube.com/watch?v=z3L6xaZdp7A";s:7:"vHeight";s:3:"315";s:6:"vWidth";s:3:"560";s:7:"vPlayer";s:1:"1";}'),
(104, NULL, '2015-03-03 13:58:21', '2015-03-03 13:58:21', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:3:"104";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:3:"104";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(105, NULL, '2015-03-03 13:59:48', '2015-03-03 13:59:48', NULL, '1', 20, 1, 'O:11:"BlockRecord":24:{s:5:"_dbat";i:1;s:6:"_table";s:10:"btPageList";s:8:"_tableat";s:10:"btPageList";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:15:{i:0;s:3:"105";i:1;i:0;i:2;s:11:"display_asc";i:3;i:0;i:4;s:1:"0";i:5;s:1:"0";i:6;i:0;i:7;s:1:"1";i:8;i:0;i:9;i:0;i:10;s:0:"";i:11;s:0:"";i:12;s:1:"0";i:13;s:1:"0";i:14;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:3:"105";s:3:"num";i:0;s:7:"orderBy";s:11:"display_asc";s:9:"cParentID";i:0;s:5:"cThis";s:1:"0";s:21:"includeAllDescendents";s:1:"0";s:8:"paginate";i:0;s:14:"displayAliases";s:1:"1";s:4:"ctID";i:0;s:3:"rss";i:0;s:8:"rssTitle";s:0:"";s:14:"rssDescription";s:0:"";s:17:"truncateSummaries";s:1:"0";s:19:"displayFeaturedOnly";s:1:"0";s:13:"truncateChars";i:0;}'),
(106, NULL, '2015-03-03 14:00:59', '2015-03-03 14:01:00', NULL, '1', 20, 1, 'O:11:"BlockRecord":24:{s:5:"_dbat";i:1;s:6:"_table";s:10:"btPageList";s:8:"_tableat";s:10:"btPageList";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:15:{i:0;s:3:"106";i:1;i:0;i:2;s:11:"display_asc";i:3;i:0;i:4;s:1:"0";i:5;s:1:"0";i:6;i:0;i:7;s:1:"1";i:8;i:0;i:9;i:0;i:10;s:0:"";i:11;s:0:"";i:12;s:1:"0";i:13;s:1:"0";i:14;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:3:"106";s:3:"num";i:0;s:7:"orderBy";s:11:"display_asc";s:9:"cParentID";i:0;s:5:"cThis";s:1:"0";s:21:"includeAllDescendents";s:1:"0";s:8:"paginate";i:0;s:14:"displayAliases";s:1:"1";s:4:"ctID";i:0;s:3:"rss";i:0;s:8:"rssTitle";s:0:"";s:14:"rssDescription";s:0:"";s:17:"truncateSummaries";s:1:"0";s:19:"displayFeaturedOnly";s:1:"0";s:13:"truncateChars";i:0;}');

-- --------------------------------------------------------

--
-- Structure de la table `blocktypepermissionblocktypeaccesslist`
--

CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `blocktypepermissionblocktypeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `blocktypes`
--

CREATE TABLE IF NOT EXISTS `blocktypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `blocktypes`
--

INSERT INTO `blocktypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btActiveWhenAdded`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1, 'core_scrapbook_display', 'Scrapbook Display (Core)', 'Proxy block for blocks pasted through the scrapbook.', 1, 0, 0, 1, 0, 400, 400, 0),
(2, 'core_stack_display', 'Stack Display (Core)', 'Proxy block for stacks added through the UI.', 1, 0, 0, 1, 0, 400, 400, 0),
(3, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(4, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(5, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 1, 0, 0, 1, 0, 400, 400, 0),
(6, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 1, 0, 0, 1, 0, 400, 400, 0),
(7, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 1, 0, 0, 1, 0, 400, 400, 0),
(8, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 1, 0, 0, 0, 1, 500, 350, 0),
(9, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 1, 0, 0, 0, 2, 580, 380, 0),
(10, 'date_nav', 'Date Navigation', 'A collapsible date based navigation tree', 1, 0, 0, 0, 3, 500, 350, 0),
(11, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 1, 0, 0, 0, 4, 370, 100, 0),
(12, 'file', 'File', 'Link to files stored in the asset library.', 1, 0, 0, 0, 5, 300, 250, 0),
(13, 'flash_content', 'Flash Content', 'Embeds SWF files, including flash detection.', 1, 0, 0, 0, 6, 380, 200, 0),
(14, 'form', 'Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 7, 420, 430, 0),
(15, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 1, 0, 0, 0, 8, 750, 460, 0),
(16, 'guestbook', 'Guestbook / Comments', 'Adds blog-style comments (a guestbook) to your page.', 1, 0, 1, 0, 9, 370, 480, 0),
(17, 'html', 'HTML', 'For adding HTML by hand.', 1, 0, 0, 0, 10, 600, 465, 0),
(18, 'image', 'Image', 'Adds images and onstates from the library to pages.', 1, 0, 0, 0, 11, 400, 550, 0),
(19, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 1, 0, 0, 0, 12, 430, 400, 0),
(20, 'page_list', 'Page List', 'List pages based on type, area.', 1, 0, 0, 0, 13, 500, 350, 0),
(21, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 1, 0, 0, 0, 14, 400, 330, 0),
(22, 'search', 'Search', 'Add a search box to your site.', 1, 0, 0, 0, 15, 400, 240, 0),
(23, 'slideshow', 'Slideshow', 'Display a running loop of images.', 1, 0, 0, 0, 16, 550, 400, 0),
(24, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 1, 0, 0, 0, 17, 420, 300, 0),
(25, 'tags', 'Tags', 'List pages based on type, area.', 1, 0, 0, 0, 18, 450, 260, 0),
(26, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.', 1, 0, 0, 0, 19, 320, 220, 0),
(27, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 1, 0, 0, 0, 20, 400, 210, 0);

-- --------------------------------------------------------

--
-- Structure de la table `btcontentfile`
--

CREATE TABLE IF NOT EXISTS `btcontentfile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btcontentimage`
--

CREATE TABLE IF NOT EXISTS `btcontentimage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btcontentimage`
--

INSERT INTO `btcontentimage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `forceImageToMatchDimensions`, `altText`) VALUES
(21, 1, 0, 340, 0, '', 0, 1, ''),
(25, 2, 0, 0, 0, '', 0, 0, ''),
(29, 3, 0, 0, 0, '', 0, 0, ''),
(48, 1, 0, 0, 0, '', 0, 0, ''),
(50, 2, 0, 0, 0, '', 0, 0, ''),
(53, 3, 0, 0, 0, '', 0, 0, ''),
(87, 14, 0, 0, 200, '', 0, 0, ''),
(88, 15, 0, 0, 200, '', 0, 0, ''),
(89, 16, 0, 0, 200, '', 0, 0, ''),
(93, 14, 0, 300, 200, '', 0, 0, ''),
(94, 15, 0, 300, 200, '', 0, 0, ''),
(95, 16, 0, 300, 200, '', 0, 0, ''),
(96, 16, 0, 0, 200, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `btcontentlocal`
--

CREATE TABLE IF NOT EXISTS `btcontentlocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btcontentlocal`
--

INSERT INTO `btcontentlocal` (`bID`, `content`) VALUES
(1, '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						'),
(2, '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>'),
(3, '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>'),
(4, '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>'),
(5, '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>'),
(19, '<h2>Perfect Logic</h2>'),
(20, 'All you want your website to do'),
(22, 'Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens'),
(23, '<h2>Complete Solution</h2>'),
(24, 'A tools anything and everything you can think'),
(26, 'Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens'),
(27, '<h2>Uber Culture</h2>'),
(28, 'Fresh,Modern and ready for you'),
(30, 'Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens'),
(31, 'Welcome on my website'),
(33, '<h2>Social Media</h2>'),
(34, 'If you want to follow us, please click on the differents logos'),
(35, '<p><img src="{CCM:FID_6}" alt="LogoFb.PNG" width="62" height="62" /><img src="{CCM:FID_8}" alt="LogoRss.PNG" width="62" height="61" /><img src="{CCM:FID_9}" alt="LogoTw.PNG" width="60" height="64" /><img src="{CCM:FID_10}" alt="LogoYt.PNG" width="61" height="62" /><img src="{CCM:FID_7}" alt="LogoIn.PNG" width="59" height="61" /></p>'),
(36, '<h2>Newsletter</h2>'),
(37, 'If you want to be inform about the news, please sign up for our Newletter'),
(39, 'Welcome on my website\r\n'),
(40, 'Welcome on my website\r\n'),
(42, '<h2>Perfect logic</h2>'),
(43, '<h2>Perfect solution </h2>\r\n'),
(44, '<h2>Uber culture</h2>'),
(45, 'All you want your website to do'),
(46, 'A tools anything and everything you can think'),
(47, 'Fresh,modern and ready for you'),
(49, 'Le corps de l''article\r\n'),
(51, 'Le corps de l''article'),
(54, 'Le corps de l''article'),
(55, '<h2>Social Media</h2>\r\n'),
(56, 'If you want the news, please subscribe for our social media'),
(58, '<p><img src="{CCM:FID_6}" alt="LogoFb.PNG" width="62" height="62" /><img src="{CCM:FID_9}" alt="LogoTw.PNG" width="60" height="64" /><img src="{CCM:FID_8}" alt="LogoRss.PNG" width="62" height="61" /><img src="{CCM:FID_7}" alt="LogoIn.PNG" width="59" height="61" /><img src="{CCM:FID_10}" alt="LogoYt.PNG" width="61" height="62" /></p>'),
(59, 'If you want some news, please subscribe our Newsletter\r\n'),
(61, '<h2>Contact</h2>'),
(63, '<h2> News update </h2>'),
(64, '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="{CCM:FID_11}" alt="news1.png" width="58" height="62" /></p>'),
(65, '<p><img style="float: left;" src="{CCM:FID_12}" alt="news2.png" width="56" height="61" />  News 2</p>'),
(66, '<p><img style="float: left;" src="{CCM:FID_13}" alt="firefox.png" width="58" height="62" /> New 3</p>'),
(70, '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="{CCM:FID_11}" alt="news1.png" width="58" height="62" /></p>'),
(71, '<p><img style="float: left;" src="{CCM:FID_12}" alt="news2.png" width="56" height="61" />  News 2</p>'),
(72, '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="{CCM:FID_11}" alt="news1.png" width="58" height="62" /></p>'),
(73, '<p><img style="float: left;" src="{CCM:FID_13}" alt="firefox.png" width="58" height="62" /> New 3</p>'),
(74, '<p><img style="float: left;" src="{CCM:FID_12}" alt="news2.png" width="56" height="61" />  News 2</p>'),
(75, '<p><img style="float: left;" src="{CCM:FID_13}" alt="firefox.png" width="58" height="62" /> New 3</p>'),
(90, '<p>Ici on trouve des bouteilles d''alcools</p>'),
(91, '<p>Ici on trouve des consoles de jeux</p>'),
(92, '<p>Ici on trouve de la nourriture</p>');

-- --------------------------------------------------------

--
-- Structure de la table `btcorescrapbookdisplay`
--

CREATE TABLE IF NOT EXISTS `btcorescrapbookdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btcorestackdisplay`
--

CREATE TABLE IF NOT EXISTS `btcorestackdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btcorestackdisplay`
--

INSERT INTO `btcorestackdisplay` (`bID`, `stID`) VALUES
(16, 124),
(18, 124);

-- --------------------------------------------------------

--
-- Structure de la table `btdashboardnewsflowlatest`
--

CREATE TABLE IF NOT EXISTS `btdashboardnewsflowlatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btdashboardnewsflowlatest`
--

INSERT INTO `btdashboardnewsflowlatest` (`bID`, `slot`) VALUES
(8, 'A'),
(9, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Structure de la table `btdatenav`
--

CREATE TABLE IF NOT EXISTS `btdatenav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btexternalform`
--

CREATE TABLE IF NOT EXISTS `btexternalform` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btflashcontent`
--

CREATE TABLE IF NOT EXISTS `btflashcontent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btform`
--

CREATE TABLE IF NOT EXISTS `btform` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btform`
--

INSERT INTO `btform` (`bID`, `questionSetId`, `surveyName`, `thankyouMsg`, `notifyMeOnSubmission`, `recipientEmail`, `displayCaptcha`, `redirectCID`, `addFilesToSet`) VALUES
(38, 1425311130, 'Newsletter', 'Merci !', 0, '', 0, 0, 0),
(60, 1425333848, 'Home', 'Merci !', 0, '', 0, 0, 0),
(62, 1425334023, 'Home', 'Merci !', 0, '', 0, 0, 0),
(67, 1425334023, 'Home', 'Merci !', 0, '', 0, 0, 0),
(68, 1425334023, 'Home', 'Merci !', 0, '', 0, 0, 0),
(69, 1425334023, 'Home', 'Merci !', 0, '', 0, 0, 0),
(76, 1425333848, 'Home', 'Merci !', 0, '', 0, 0, 0),
(77, 1425334023, 'Home', 'Merci !', 0, '', 0, 0, 0),
(85, 1425337301, 'Contact', 'Merci !', 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `btformanswers`
--

CREATE TABLE IF NOT EXISTS `btformanswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `btformanswerset`
--

CREATE TABLE IF NOT EXISTS `btformanswerset` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `btformquestions`
--

CREATE TABLE IF NOT EXISTS `btformquestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Contenu de la table `btformquestions`
--

INSERT INTO `btformquestions` (`qID`, `msqID`, `bID`, `questionSetId`, `question`, `inputType`, `options`, `position`, `width`, `height`, `required`) VALUES
(1, 1, 38, 1425311130, 'Sign it ?', 'field', '', 0, 50, 3, 0),
(3, 2, 60, 1425333848, 'Sign it ?', 'field', '', 0, 50, 3, 0),
(4, 3, 62, 1425334023, 'Email', 'email', 'a:1:{s:22:"send_notification_from";i:0;}', 0, 0, 0, 0),
(5, 4, 62, 1425334023, 'Pseudo', 'field', '', 0, 50, 3, 0),
(8, 5, 62, 1425334023, 'Commentaire', 'text', '', 0, 10, 1, 0),
(9, 5, 67, 1425334023, 'Commentaire', 'text', '', 0, 10, 1, 0),
(10, 3, 67, 1425334023, 'Email', 'email', 'a:1:{s:22:"send_notification_from";i:0;}', 0, 0, 0, 0),
(11, 4, 67, 1425334023, 'Pseudo', 'field', '', 0, 50, 3, 0),
(13, 5, 68, 1425334023, 'Commentaire', 'field', '', 0, 10, 1, 0),
(15, 3, 68, 1425334023, 'Email', 'email', 'a:1:{s:22:"send_notification_from";i:0;}', 0, 0, 0, 0),
(16, 4, 68, 1425334023, 'Pseudo', 'field', '', 0, 50, 3, 0),
(17, 5, 69, 1425334023, 'Commentaire', 'field', '', 0, 10, 1, 0),
(18, 3, 69, 1425334023, 'Email', 'email', 'a:1:{s:22:"send_notification_from";i:0;}', 0, 0, 0, 0),
(19, 4, 69, 1425334023, 'Pseudo', 'field', '', 0, 50, 3, 0),
(20, 2, 76, 1425333848, 'Sign it ?', 'field', '', 0, 50, 3, 0),
(21, 5, 77, 1425334023, 'Commentaire', 'field', '', 0, 10, 1, 0),
(22, 3, 77, 1425334023, 'Email', 'email', 'a:1:{s:22:"send_notification_from";i:0;}', 0, 0, 0, 0),
(23, 4, 77, 1425334023, 'Pseudo', 'field', '', 0, 50, 3, 0),
(24, 6, 85, 1425337301, 'Nom', 'field', '', 0, 50, 3, 0),
(25, 7, 85, 1425337301, 'Prénom', 'field', '', 0, 50, 3, 0),
(26, 8, 85, 1425337301, 'Prénom', 'field', '', 0, 50, 3, 0),
(27, 9, 85, 1425337301, 'Ville', 'field', '', 0, 50, 3, 0),
(28, 10, 85, 1425337301, 'Adresse', 'field', '', 0, 50, 3, 0),
(29, 11, 85, 1425337301, 'Sexe', 'checkboxlist', 'Homme%%Femme', 0, 0, 0, 0),
(30, 12, 85, 1425337301, 'Login', 'field', '', 0, 50, 3, 1),
(31, 13, 85, 1425337301, 'Mot de passe', 'field', '', 0, 50, 3, 1),
(32, 14, 85, 1425337301, 'Email', 'email', 'a:1:{s:22:"send_notification_from";i:0;}', 0, 50, 3, 0),
(33, 15, 85, 1425337301, 'Telephone', 'telephone', '', 0, 50, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `btgooglemap`
--

CREATE TABLE IF NOT EXISTS `btgooglemap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  `balloonShow` tinyint(4) DEFAULT NULL,
  `balloonContent` longtext,
  `balloonWithLinkToMaps` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btgooglemap`
--

INSERT INTO `btgooglemap` (`bID`, `title`, `location`, `latitude`, `longitude`, `zoom`, `balloonShow`, `balloonContent`, `balloonWithLinkToMaps`) VALUES
(80, 'IUT Calais', 'IUT calais-bouloge', 0, 0, 14, 0, '', 0),
(81, 'IUT Calais', 'IUT Calais-Boulogne Rue Louis David', 0, 0, 15, 0, '', 0),
(82, 'IUT Calais', 'Rue Louis David - BP 689 - 62228 Calais Cedex', 0, 0, 2, 0, '', 0),
(83, 'IUT Calais', 'Rue Louis David Calais Cedex FRANCE', 50.9492365, 1.8853618, 2, 0, '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `btguestbook`
--

CREATE TABLE IF NOT EXISTS `btguestbook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btguestbookentries`
--

CREATE TABLE IF NOT EXISTS `btguestbookentries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` datetime DEFAULT '0000-00-00 00:00:00',
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `btnavigation`
--

CREATE TABLE IF NOT EXISTS `btnavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btnavigation`
--

INSERT INTO `btnavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
(13, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 1),
(14, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(17, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(78, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(79, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(84, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(86, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(104, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `btnextprevious`
--

CREATE TABLE IF NOT EXISTS `btnextprevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btpagelist`
--

CREATE TABLE IF NOT EXISTS `btpagelist` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btpagelist`
--

INSERT INTO `btpagelist` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `includeAllDescendents`, `paginate`, `displayAliases`, `ctID`, `rss`, `rssTitle`, `rssDescription`, `truncateSummaries`, `displayFeaturedOnly`, `truncateChars`) VALUES
(105, 0, 'display_asc', 0, 0, 0, 0, 1, 0, 0, '', '', 0, 0, 0),
(106, 0, 'display_asc', 0, 0, 0, 0, 1, 0, 0, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `btrssdisplay`
--

CREATE TABLE IF NOT EXISTS `btrssdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btsearch`
--

CREATE TABLE IF NOT EXISTS `btsearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btslideshow`
--

CREATE TABLE IF NOT EXISTS `btslideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btslideshow`
--

INSERT INTO `btslideshow` (`bID`, `fsID`, `playback`, `duration`, `fadeDuration`) VALUES
(32, 0, 'ORDER', NULL, NULL),
(41, 0, 'ORDER', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `btslideshowimg`
--

CREATE TABLE IF NOT EXISTS `btslideshowimg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `btslideshowimg`
--

INSERT INTO `btslideshowimg` (`slideshowImgId`, `bID`, `fID`, `url`, `duration`, `fadeDuration`, `groupSet`, `position`, `imgHeight`) VALUES
(1, 32, 4, '', 5, 2, 0, 0, 339),
(2, 32, 5, '', 5, 2, 0, 1, 350),
(3, 41, 4, '', 5, 2, 0, 0, 339),
(4, 41, 5, '', 5, 2, 0, 1, 350);

-- --------------------------------------------------------

--
-- Structure de la table `btsurvey`
--

CREATE TABLE IF NOT EXISTS `btsurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btsurveyoptions`
--

CREATE TABLE IF NOT EXISTS `btsurveyoptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `btsurveyresults`
--

CREATE TABLE IF NOT EXISTS `btsurveyresults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `bttags`
--

CREATE TABLE IF NOT EXISTS `bttags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btvideo`
--

CREATE TABLE IF NOT EXISTS `btvideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `btyoutube`
--

CREATE TABLE IF NOT EXISTS `btyoutube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `btyoutube`
--

INSERT INTO `btyoutube` (`bID`, `title`, `videoURL`, `vHeight`, `vWidth`, `vPlayer`) VALUES
(97, 'A voir !', 'https://www.youtube.com/watch?v=z3L6xaZdp7A', '315', '560', 1),
(98, 'A voir !', 'https://www.youtube.com/watch?v=z3L6xaZdp7A', '150', '200', 1),
(99, 'A voir !', 'https://www.youtube.com/watch?v=z3L6xaZdp7A', '150', '200', 1),
(100, 'A voir !', 'https://www.youtube.com/watch?v=z3L6xaZdp7A', '150', '200', 1),
(101, 'A voir !', 'https://www.youtube.com/watch?v=z3L6xaZdp7A', '250', '450', 1),
(102, 'Ma vidéo', 'https://www.youtube.com/watch?v=z3L6xaZdp7A', '315', '560', 1),
(103, 'Ma vidéo', 'https://www.youtube.com/watch?v=z3L6xaZdp7A', '315', '560', 1);

-- --------------------------------------------------------

--
-- Structure de la table `collectionattributevalues`
--

CREATE TABLE IF NOT EXISTS `collectionattributevalues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `collectionattributevalues`
--

INSERT INTO `collectionattributevalues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(3, 1, 3, 1),
(3, 1, 4, 2),
(4, 1, 3, 3),
(4, 1, 4, 4),
(5, 1, 3, 5),
(5, 1, 4, 6),
(6, 1, 3, 7),
(7, 1, 3, 8),
(7, 1, 4, 9),
(8, 1, 3, 10),
(8, 1, 4, 11),
(9, 1, 3, 12),
(9, 1, 4, 13),
(11, 1, 3, 14),
(11, 1, 4, 15),
(12, 1, 3, 16),
(12, 1, 4, 17),
(13, 1, 3, 18),
(13, 1, 4, 19),
(14, 1, 3, 21),
(14, 1, 4, 22),
(14, 1, 5, 20),
(15, 1, 3, 23),
(16, 1, 3, 24),
(16, 1, 4, 25),
(17, 1, 3, 26),
(17, 1, 4, 27),
(18, 1, 3, 28),
(18, 1, 4, 29),
(19, 1, 3, 30),
(19, 1, 4, 32),
(19, 1, 5, 31),
(20, 1, 3, 33),
(20, 1, 4, 35),
(20, 1, 5, 34),
(21, 1, 3, 36),
(21, 1, 4, 37),
(22, 1, 3, 38),
(23, 1, 3, 39),
(23, 1, 4, 40),
(24, 1, 3, 41),
(24, 1, 4, 42),
(25, 1, 3, 43),
(25, 1, 4, 44),
(26, 1, 3, 45),
(26, 1, 4, 46),
(28, 1, 3, 47),
(28, 1, 4, 48),
(29, 1, 3, 49),
(30, 1, 3, 50),
(31, 1, 3, 51),
(32, 1, 3, 52),
(32, 1, 4, 53),
(34, 1, 3, 54),
(34, 1, 4, 55),
(35, 1, 3, 56),
(35, 1, 4, 57),
(36, 1, 3, 58),
(37, 1, 4, 59),
(38, 1, 4, 60),
(40, 1, 3, 61),
(40, 1, 4, 62),
(41, 1, 4, 63),
(42, 1, 5, 64),
(42, 1, 8, 65),
(43, 1, 3, 66),
(43, 1, 4, 67),
(44, 1, 5, 68),
(45, 1, 5, 69),
(46, 1, 3, 70),
(47, 1, 3, 71),
(48, 1, 3, 72),
(49, 1, 3, 73),
(50, 1, 3, 74),
(51, 1, 5, 75),
(53, 1, 3, 76),
(54, 1, 3, 77),
(55, 1, 3, 78),
(56, 1, 3, 79),
(57, 1, 3, 80),
(58, 1, 3, 81),
(60, 1, 3, 82),
(61, 1, 3, 83),
(62, 1, 3, 84),
(63, 1, 3, 85),
(64, 1, 3, 86),
(65, 1, 3, 87),
(67, 1, 3, 88),
(68, 1, 3, 89),
(69, 1, 3, 90),
(71, 1, 3, 91),
(72, 1, 3, 92),
(73, 1, 3, 93),
(74, 1, 3, 94),
(77, 1, 3, 95),
(78, 1, 3, 96),
(79, 1, 3, 97),
(80, 1, 3, 98),
(82, 1, 3, 99),
(83, 1, 3, 100),
(84, 1, 3, 101),
(85, 1, 3, 102),
(86, 1, 3, 103),
(87, 1, 3, 104),
(88, 1, 3, 105),
(89, 1, 3, 106),
(90, 1, 3, 107),
(91, 1, 3, 108),
(92, 1, 8, 109),
(93, 1, 3, 110),
(94, 1, 3, 111),
(95, 1, 3, 112),
(96, 1, 3, 113),
(97, 1, 3, 114),
(98, 1, 3, 115),
(100, 1, 3, 116),
(101, 1, 3, 117),
(106, 1, 5, 118),
(107, 1, 5, 119),
(107, 1, 8, 120);

-- --------------------------------------------------------

--
-- Structure de la table `collections`
--

CREATE TABLE IF NOT EXISTS `collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=133 ;

--
-- Contenu de la table `collections`
--

INSERT INTO `collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2014-12-09 15:43:42', '2015-03-02 22:46:39', 'home'),
(2, '2014-12-09 15:44:14', '2014-12-09 15:44:18', 'dashboard'),
(3, '2014-12-09 15:44:18', '2014-12-09 15:44:18', 'composer'),
(4, '2014-12-09 15:44:19', '2014-12-09 15:44:19', 'write'),
(5, '2014-12-09 15:44:19', '2014-12-09 15:44:19', 'drafts'),
(6, '2014-12-09 15:44:19', '2014-12-09 15:44:20', 'sitemap'),
(7, '2014-12-09 15:44:20', '2014-12-09 15:44:20', 'full'),
(8, '2014-12-09 15:44:20', '2014-12-09 15:44:20', 'explore'),
(9, '2014-12-09 15:44:21', '2014-12-09 15:44:21', 'search'),
(10, '2014-12-09 15:44:21', '2014-12-09 15:44:21', 'files'),
(11, '2014-12-09 15:44:21', '2014-12-09 15:44:22', 'search'),
(12, '2014-12-09 15:44:22', '2014-12-09 15:44:22', 'attributes'),
(13, '2014-12-09 15:44:22', '2014-12-09 15:44:23', 'sets'),
(14, '2014-12-09 15:44:23', '2014-12-09 15:44:23', 'add_set'),
(15, '2014-12-09 15:44:23', '2014-12-09 15:44:24', 'users'),
(16, '2014-12-09 15:44:24', '2014-12-09 15:44:24', 'search'),
(17, '2014-12-09 15:44:24', '2014-12-09 15:44:25', 'groups'),
(18, '2014-12-09 15:44:25', '2014-12-09 15:44:25', 'attributes'),
(19, '2014-12-09 15:44:25', '2014-12-09 15:44:25', 'add'),
(20, '2014-12-09 15:44:26', '2014-12-09 15:44:26', 'add_group'),
(21, '2014-12-09 15:44:26', '2014-12-09 15:44:27', 'group_sets'),
(22, '2014-12-09 15:44:27', '2014-12-09 15:44:27', 'reports'),
(23, '2014-12-09 15:44:27', '2014-12-09 15:44:28', 'statistics'),
(24, '2014-12-09 15:44:28', '2014-12-09 15:44:28', 'forms'),
(25, '2014-12-09 15:44:28', '2014-12-09 15:44:28', 'surveys'),
(26, '2014-12-09 15:44:29', '2014-12-09 15:44:29', 'logs'),
(27, '2014-12-09 15:44:29', '2014-12-09 15:44:30', 'pages'),
(28, '2014-12-09 15:44:30', '2014-12-09 15:44:30', 'themes'),
(29, '2014-12-09 15:44:30', '2014-12-09 15:44:31', 'add'),
(30, '2014-12-09 15:44:31', '2014-12-09 15:44:31', 'inspect'),
(31, '2014-12-09 15:44:31', '2014-12-09 15:44:32', 'customize'),
(32, '2014-12-09 15:44:32', '2014-12-09 15:44:32', 'types'),
(33, '2014-12-09 15:44:32', '2014-12-09 15:44:32', 'add'),
(34, '2014-12-09 15:44:33', '2014-12-09 15:44:33', 'attributes'),
(35, '2014-12-09 15:44:33', '2014-12-09 15:44:33', 'single'),
(36, '2014-12-09 15:44:34', '2014-12-09 15:44:34', 'workflow'),
(37, '2014-12-09 15:44:34', '2014-12-09 15:44:35', 'list'),
(38, '2014-12-09 15:44:35', '2014-12-09 15:44:35', 'me'),
(39, '2014-12-09 15:44:35', '2014-12-09 15:44:36', 'blocks'),
(40, '2014-12-09 15:44:36', '2014-12-09 15:44:36', 'stacks'),
(41, '2014-12-09 15:44:36', '2014-12-09 15:44:37', 'permissions'),
(42, '2014-12-09 15:44:37', '2014-12-09 15:44:38', 'list'),
(43, '2014-12-09 15:44:38', '2014-12-09 15:44:38', 'types'),
(44, '2014-12-09 15:44:39', '2014-12-09 15:44:39', 'extend'),
(45, '2014-12-09 15:44:39', '2014-12-09 15:44:40', 'news'),
(46, '2014-12-09 15:44:40', '2014-12-09 15:44:40', 'install'),
(47, '2014-12-09 15:44:40', '2014-12-09 15:44:41', 'update'),
(48, '2014-12-09 15:44:41', '2014-12-09 15:44:41', 'connect'),
(49, '2014-12-09 15:44:41', '2014-12-09 15:44:42', 'themes'),
(50, '2014-12-09 15:44:42', '2014-12-09 15:44:42', 'add-ons'),
(51, '2014-12-09 15:44:42', '2014-12-09 15:44:43', 'system'),
(52, '2014-12-09 15:44:43', '2014-12-09 15:44:43', 'basics'),
(53, '2014-12-09 15:44:43', '2014-12-09 15:44:44', 'site_name'),
(54, '2014-12-09 15:44:44', '2014-12-09 15:44:44', 'icons'),
(55, '2014-12-09 15:44:44', '2014-12-09 15:44:45', 'editor'),
(56, '2014-12-09 15:44:45', '2014-12-09 15:44:45', 'multilingual'),
(57, '2014-12-09 15:44:45', '2014-12-09 15:44:46', 'timezone'),
(58, '2014-12-09 15:44:46', '2014-12-09 15:44:46', 'interface'),
(59, '2014-12-09 15:44:46', '2014-12-09 15:44:47', 'seo'),
(60, '2014-12-09 15:44:47', '2014-12-09 15:44:47', 'urls'),
(61, '2014-12-09 15:44:47', '2014-12-09 15:44:48', 'bulk_seo_tool'),
(62, '2014-12-09 15:44:48', '2014-12-09 15:44:48', 'tracking_codes'),
(63, '2014-12-09 15:44:48', '2014-12-09 15:44:49', 'excluded'),
(64, '2014-12-09 15:44:49', '2014-12-09 15:44:49', 'statistics'),
(65, '2014-12-09 15:44:49', '2014-12-09 15:44:50', 'search_index'),
(66, '2014-12-09 15:44:50', '2014-12-09 15:44:50', 'optimization'),
(67, '2014-12-09 15:44:51', '2014-12-09 15:44:51', 'cache'),
(68, '2014-12-09 15:44:51', '2014-12-09 15:44:51', 'clear_cache'),
(69, '2014-12-09 15:44:51', '2014-12-09 15:44:52', 'jobs'),
(70, '2014-12-09 15:44:52', '2014-12-09 15:44:52', 'permissions'),
(71, '2014-12-09 15:44:52', '2014-12-09 15:44:53', 'site'),
(72, '2014-12-09 15:44:53', '2014-12-09 15:44:53', 'files'),
(73, '2014-12-09 15:44:53', '2014-12-09 15:44:54', 'file_types'),
(74, '2014-12-09 15:44:54', '2014-12-09 15:44:54', 'tasks'),
(75, '2014-12-09 15:44:54', '2014-12-09 15:44:55', 'users'),
(76, '2014-12-09 15:44:55', '2014-12-09 15:44:55', 'advanced'),
(77, '2014-12-09 15:44:55', '2014-12-09 15:44:56', 'ip_blacklist'),
(78, '2014-12-09 15:44:56', '2014-12-09 15:44:57', 'captcha'),
(79, '2014-12-09 15:44:57', '2014-12-09 15:44:57', 'antispam'),
(80, '2014-12-09 15:44:57', '2014-12-09 15:44:58', 'maintenance_mode'),
(81, '2014-12-09 15:44:58', '2014-12-09 15:44:59', 'registration'),
(82, '2014-12-09 15:44:59', '2014-12-09 15:44:59', 'postlogin'),
(83, '2014-12-09 15:44:59', '2014-12-09 15:44:59', 'profiles'),
(84, '2014-12-09 15:44:59', '2014-12-09 15:45:00', 'public_registration'),
(85, '2014-12-09 15:45:00', '2014-12-09 15:45:01', 'mail'),
(86, '2014-12-09 15:45:01', '2014-12-09 15:45:02', 'method'),
(87, '2014-12-09 15:45:02', '2014-12-09 15:45:02', 'test_settings'),
(88, '2014-12-09 15:45:02', '2014-12-09 15:45:02', 'importers'),
(89, '2014-12-09 15:45:03', '2014-12-09 15:45:03', 'attributes'),
(90, '2014-12-09 15:45:03', '2014-12-09 15:45:03', 'sets'),
(91, '2014-12-09 15:45:04', '2014-12-09 15:45:04', 'types'),
(92, '2014-12-09 15:45:04', '2014-12-09 15:45:05', 'environment'),
(93, '2014-12-09 15:45:05', '2014-12-09 15:45:06', 'info'),
(94, '2014-12-09 15:45:06', '2014-12-09 15:45:06', 'debug'),
(95, '2014-12-09 15:45:06', '2014-12-09 15:45:06', 'logging'),
(96, '2014-12-09 15:45:07', '2014-12-09 15:45:07', 'file_storage_locations'),
(97, '2014-12-09 15:45:07', '2014-12-09 15:45:07', 'proxy'),
(98, '2014-12-09 15:45:08', '2014-12-09 15:45:08', 'backup_restore'),
(99, '2014-12-09 15:45:08', '2014-12-09 15:45:09', 'backup'),
(100, '2014-12-09 15:45:09', '2014-12-09 15:45:09', 'update'),
(101, '2014-12-09 15:45:09', '2014-12-09 15:45:09', 'database'),
(102, '2014-12-09 15:45:10', '2014-12-09 15:45:10', 'composer'),
(103, '2014-12-09 15:45:10', '2014-12-09 15:45:10', NULL),
(104, '2014-12-09 15:45:10', '2014-12-09 15:45:10', NULL),
(105, '2014-12-09 15:45:10', '2014-12-09 15:45:10', NULL),
(106, '2014-12-09 15:45:11', '2014-12-09 15:45:11', 'welcome'),
(107, '2014-12-09 15:45:12', '2014-12-09 15:45:12', 'home'),
(108, '2014-12-09 15:45:37', '2014-12-09 15:45:37', '!drafts'),
(109, '2014-12-09 15:45:37', '2014-12-09 15:45:38', '!trash'),
(110, '2014-12-09 15:45:38', '2014-12-09 15:45:39', '!stacks'),
(111, '2014-12-09 15:45:39', '2014-12-09 15:45:41', 'login'),
(112, '2014-12-09 15:45:41', '2014-12-09 15:45:43', 'register'),
(113, '2014-12-09 15:45:43', '2014-12-09 15:45:43', 'profile'),
(114, '2014-12-09 15:45:43', '2014-12-09 15:45:44', 'edit'),
(115, '2014-12-09 15:45:44', '2014-12-09 15:45:44', 'avatar'),
(116, '2014-12-09 15:45:45', '2014-12-09 15:45:45', 'messages'),
(117, '2014-12-09 15:45:45', '2014-12-09 15:45:46', 'friends'),
(118, '2014-12-09 15:45:46', '2014-12-09 15:45:46', 'page_not_found'),
(119, '2014-12-09 15:45:47', '2014-12-09 15:45:47', 'page_forbidden'),
(120, '2014-12-09 15:45:47', '2014-12-09 15:45:48', 'download_file'),
(121, '2014-12-09 15:45:48', '2014-12-09 15:45:49', 'members'),
(122, '2014-12-09 15:45:50', '2014-12-09 15:45:50', NULL),
(123, '2014-12-09 16:12:57', '2015-03-02 16:09:46', 'presentation'),
(124, '2014-12-09 16:29:04', '2014-12-09 16:29:44', 'menu'),
(126, '2015-03-02 14:24:00', '2015-03-02 14:24:00', NULL),
(127, '2015-03-02 16:09:08', '2015-03-02 23:36:18', 'produits'),
(128, '2015-03-02 16:10:04', '2015-03-02 22:43:27', 'accueil'),
(129, '2015-03-02 22:41:49', '2015-03-03 14:03:55', 'blog'),
(130, '2015-03-02 22:42:07', '2015-03-02 23:04:38', 'contact'),
(131, '2015-03-02 22:42:22', '2015-03-02 22:55:18', 'plan'),
(132, '2015-03-02 22:52:07', '2015-03-02 22:52:07', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `collectionsearchindexattributes`
--

CREATE TABLE IF NOT EXISTS `collectionsearchindexattributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `collectionsearchindexattributes`
--

INSERT INTO `collectionsearchindexattributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`) VALUES
(1, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(3, NULL, NULL, 'blog, blogging', 'icon-book', 0, 0, NULL, 0, 0),
(4, NULL, NULL, 'new blog, write blog, blogging', 'icon-pencil', 0, 0, NULL, 0, 0),
(5, NULL, NULL, 'blog drafts, composer', 'icon-book', 0, 0, NULL, 0, 0),
(6, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, 0, 0),
(7, NULL, NULL, 'pages, add page, delete page, copy, move, alias', 'icon-home', 0, 0, NULL, 0, 0),
(8, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', 'icon-road', 0, 0, NULL, 0, 0),
(9, NULL, NULL, 'find page, search page, search, find, pages, sitemap', 'icon-search', 0, 0, NULL, 0, 0),
(11, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 'icon-picture', 0, 0, NULL, 0, 0),
(12, NULL, NULL, 'file, file attributes, title, attribute, description, rename', 'icon-cog', 0, 0, NULL, 0, 0),
(13, NULL, NULL, 'files, category, categories', 'icon-list-alt', 0, 0, NULL, 0, 0),
(14, NULL, NULL, 'new file set', 'icon-plus-sign', 1, 0, NULL, 0, 0),
(15, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, 0, 0),
(16, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', 'icon-user', 0, 0, NULL, 0, 0),
(17, NULL, NULL, 'user, group, people, permissions, access, expire', 'icon-globe', 0, 0, NULL, 0, 0),
(18, NULL, NULL, 'user attributes, user data, gather data, registration data', 'icon-cog', 0, 0, NULL, 0, 0),
(19, NULL, NULL, 'new user, create', 'icon-plus-sign', 1, 0, NULL, 0, 0),
(20, NULL, NULL, 'new user group, new group, group, create', 'icon-plus', 1, 0, NULL, 0, 0),
(21, NULL, NULL, 'group set', 'icon-list', 0, 0, NULL, 0, 0),
(22, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, 0, 0),
(23, NULL, NULL, 'hits, pageviews, visitors, activity', 'icon-signal', 0, 0, NULL, 0, 0),
(24, NULL, NULL, 'forms, questions, response, data', 'icon-briefcase', 0, 0, NULL, 0, 0),
(25, NULL, NULL, 'questions, quiz, response', 'icon-tasks', 0, 0, NULL, 0, 0),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', 'icon-time', 0, 0, NULL, 0, 0),
(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', 'icon-font', 0, 0, NULL, 0, 0),
(29, NULL, NULL, 'theme', NULL, 0, 0, NULL, 0, 0),
(30, NULL, NULL, 'page types', NULL, 0, 0, NULL, 0, 0),
(31, NULL, NULL, 'custom theme, change theme, custom css, css', NULL, 0, 0, NULL, 0, 0),
(32, NULL, NULL, 'page type defaults, global block, global area, starter, template', 'icon-file', 0, 0, NULL, 0, 0),
(34, NULL, NULL, 'page attributes, custom', 'icon-cog', 0, 0, NULL, 0, 0),
(35, NULL, NULL, 'single, page, custom, application', 'icon-wrench', 0, 0, NULL, 0, 0),
(36, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, 0, 0),
(37, NULL, NULL, NULL, 'icon-list', 0, 0, NULL, 0, 0),
(38, NULL, NULL, NULL, 'icon-user', 0, 0, NULL, 0, 0),
(40, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 'icon-th', 0, 0, NULL, 0, 0),
(41, NULL, NULL, NULL, 'icon-lock', 0, 0, NULL, 0, 0),
(42, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0),
(43, NULL, NULL, 'block, refresh, custom', 'icon-wrench', 0, 0, NULL, 0, 0),
(44, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(45, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(46, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, 0, 0),
(47, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, 0, 0),
(48, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 0, 0, NULL, 0, 0),
(49, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, 0, 0),
(50, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, 0, 0),
(51, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(53, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, 0, 0),
(54, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, 0, 0),
(55, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', NULL, 0, 0, NULL, 0, 0),
(56, NULL, NULL, 'translate, translation, internationalization, multilingual', NULL, 0, 0, NULL, 0, 0),
(57, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, 0, 0),
(58, NULL, NULL, 'interface, quick nav, dashboard background, background image', NULL, 0, 0, NULL, 0, 0),
(60, NULL, NULL, 'vanity, pretty url, seo, pageview, view', NULL, 0, 0, NULL, 0, 0),
(61, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, 0, 0),
(62, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, 0, 0),
(63, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, 0, 0),
(64, NULL, NULL, 'turn off statistics, tracking, statistics, pageviews, hits', NULL, 0, 0, NULL, 0, 0),
(65, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, 0, 0),
(67, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0),
(68, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0),
(69, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, 0, 0),
(71, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, 0, 0),
(72, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, 0, 0),
(73, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, 0, 0),
(74, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, 0, 0),
(77, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, 0, 0),
(78, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, 0, 0),
(79, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, 0, 0),
(80, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, 0, 0),
(82, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, 0, 0),
(83, NULL, NULL, 'member profile, member page, community, forums, social, avatar', NULL, 0, 0, NULL, 0, 0),
(84, NULL, NULL, 'signup, new user, community', NULL, 0, 0, NULL, 0, 0),
(85, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, 0, 0),
(86, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, 0, 0),
(87, NULL, NULL, 'test smtp, test mail', NULL, 0, 0, NULL, 0, 0),
(88, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, 0, 0),
(89, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, 0, 0),
(90, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, 0, 0),
(91, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, 0, 0),
(92, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 0),
(93, NULL, NULL, 'overrides, system info, debug, support, help', NULL, 0, 0, NULL, 0, 0),
(94, NULL, NULL, 'errors, exceptions, develop, support, help', NULL, 0, 0, NULL, 0, 0),
(95, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', NULL, 0, 0, NULL, 0, 0),
(96, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, 0, 0),
(97, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, 0, 0),
(98, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, 0, 0),
(100, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, 0, 0),
(101, NULL, NULL, 'export, database, xml, starting, points, schema, refresh, custom, tables', NULL, 0, 0, NULL, 0, 0),
(106, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(107, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0),
(123, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(124, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(127, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(128, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(129, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(130, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(131, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionarealayouts`
--

CREATE TABLE IF NOT EXISTS `collectionversionarealayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `collectionversionarealayouts`
--

INSERT INTO `collectionversionarealayouts` (`cvalID`, `cID`, `cvID`, `arHandle`, `layoutID`, `position`, `areaNameNumber`) VALUES
(1, 127, 2, 'contenu', 1, 1, 1),
(2, 127, 3, 'contenu', 1, 1, 1),
(3, 127, 4, 'contenu', 1, 1, 1),
(4, 127, 5, 'contenu', 1, 1, 1),
(5, 127, 6, 'contenu', 1, 1, 1),
(6, 127, 7, 'contenu', 1, 1, 1),
(7, 127, 8, 'contenu', 1, 1, 1),
(8, 127, 9, 'contenu', 1, 1, 1),
(9, 127, 10, 'contenu', 1, 1, 1),
(10, 127, 11, 'contenu', 1, 1, 1),
(11, 127, 12, 'contenu', 1, 1, 1),
(12, 127, 13, 'contenu', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionareastyles`
--

CREATE TABLE IF NOT EXISTS `collectionversionareastyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionblocks`
--

CREATE TABLE IF NOT EXISTS `collectionversionblocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `collectionversionblocks`
--

INSERT INTO `collectionversionblocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`) VALUES
(1, 2, 13, 'Header', 0, 1, 0, 0),
(1, 3, 13, 'Header', 0, 0, 0, 0),
(1, 4, 16, 'Header', 0, 1, 0, 0),
(1, 5, 18, 'Header', 0, 1, 0, 0),
(1, 6, 18, 'Header', 0, 0, 0, 0),
(1, 7, 18, 'Header', 0, 0, 0, 0),
(1, 7, 39, 'Titre', 0, 1, 0, 0),
(1, 8, 18, 'Header', 0, 0, 0, 0),
(1, 8, 40, 'Titre', 0, 1, 0, 0),
(1, 8, 41, 'banniere', 0, 1, 0, 0),
(1, 9, 18, 'Header', 0, 0, 0, 0),
(1, 9, 40, 'Titre', 0, 0, 0, 0),
(1, 9, 41, 'banniere', 0, 0, 0, 0),
(1, 9, 42, 'col1', 0, 1, 0, 0),
(1, 9, 43, 'col2', 0, 1, 0, 0),
(1, 9, 44, 'col3', 0, 1, 0, 0),
(1, 9, 45, 'col1', 1, 1, 0, 0),
(1, 9, 46, 'col2', 1, 1, 0, 0),
(1, 9, 47, 'col3', 1, 1, 0, 0),
(1, 9, 48, 'col1', 2, 1, 0, 0),
(1, 9, 49, 'col1', 3, 1, 0, 0),
(1, 9, 50, 'col2', 2, 1, 0, 0),
(1, 9, 51, 'col2', 3, 1, 0, 0),
(1, 9, 53, 'col3', 2, 1, 0, 0),
(1, 9, 54, 'col3', 3, 1, 0, 0),
(1, 9, 55, 'social', 0, 1, 0, 0),
(1, 9, 56, 'social', 1, 1, 0, 0),
(1, 9, 58, 'social', 2, 1, 0, 0),
(1, 9, 59, 'social', 3, 1, 0, 0),
(1, 9, 60, 'social', 4, 1, 0, 0),
(1, 9, 61, 'contact', 0, 1, 0, 0),
(1, 9, 62, 'contact', 1, 1, 0, 0),
(1, 9, 63, 'actualite', 0, 1, 0, 0),
(1, 9, 64, 'actualite', 1, 1, 0, 0),
(1, 9, 65, 'actualite', 2, 1, 0, 0),
(1, 9, 66, 'actualite', 3, 1, 0, 0),
(1, 10, 18, 'Header', 0, 0, 0, 0),
(1, 10, 40, 'Titre', 0, 0, 0, 0),
(1, 10, 41, 'banniere', 0, 0, 0, 0),
(1, 10, 42, 'col1', 0, 0, 0, 0),
(1, 10, 43, 'col2', 0, 0, 0, 0),
(1, 10, 44, 'col3', 0, 0, 0, 0),
(1, 10, 45, 'col1', 1, 0, 0, 0),
(1, 10, 46, 'col2', 1, 0, 0, 0),
(1, 10, 47, 'col3', 1, 0, 0, 0),
(1, 10, 48, 'col1', 2, 0, 0, 0),
(1, 10, 49, 'col1', 3, 0, 0, 0),
(1, 10, 50, 'col2', 2, 0, 0, 0),
(1, 10, 51, 'col2', 3, 0, 0, 0),
(1, 10, 53, 'col3', 2, 0, 0, 0),
(1, 10, 54, 'col3', 3, 0, 0, 0),
(1, 10, 55, 'social', 0, 0, 0, 0),
(1, 10, 56, 'social', 1, 0, 0, 0),
(1, 10, 58, 'social', 2, 0, 0, 0),
(1, 10, 59, 'social', 3, 0, 0, 0),
(1, 10, 60, 'social', 4, 0, 0, 0),
(1, 10, 61, 'contact', 0, 0, 0, 0),
(1, 10, 63, 'actualite', 0, 0, 0, 0),
(1, 10, 64, 'actualite', 1, 0, 0, 0),
(1, 10, 65, 'actualite', 2, 0, 0, 0),
(1, 10, 66, 'actualite', 3, 0, 0, 0),
(1, 10, 67, 'contact', 1, 1, 0, 0),
(1, 11, 18, 'Header', 0, 0, 0, 0),
(1, 11, 40, 'Titre', 0, 0, 0, 0),
(1, 11, 41, 'banniere', 0, 0, 0, 0),
(1, 11, 42, 'col1', 0, 0, 0, 0),
(1, 11, 43, 'col2', 0, 0, 0, 0),
(1, 11, 44, 'col3', 0, 0, 0, 0),
(1, 11, 45, 'col1', 1, 0, 0, 0),
(1, 11, 46, 'col2', 1, 0, 0, 0),
(1, 11, 47, 'col3', 1, 0, 0, 0),
(1, 11, 48, 'col1', 2, 0, 0, 0),
(1, 11, 49, 'col1', 3, 0, 0, 0),
(1, 11, 50, 'col2', 2, 0, 0, 0),
(1, 11, 51, 'col2', 3, 0, 0, 0),
(1, 11, 53, 'col3', 2, 0, 0, 0),
(1, 11, 54, 'col3', 3, 0, 0, 0),
(1, 11, 55, 'social', 0, 0, 0, 0),
(1, 11, 56, 'social', 1, 0, 0, 0),
(1, 11, 58, 'social', 2, 0, 0, 0),
(1, 11, 59, 'social', 3, 0, 0, 0),
(1, 11, 60, 'social', 4, 0, 0, 0),
(1, 11, 61, 'contact', 0, 0, 0, 0),
(1, 11, 63, 'actualite', 0, 0, 0, 0),
(1, 11, 64, 'actualite', 1, 0, 0, 0),
(1, 11, 65, 'actualite', 2, 0, 0, 0),
(1, 11, 66, 'actualite', 3, 0, 0, 0),
(1, 11, 67, 'contact', 1, 0, 0, 0),
(1, 12, 18, 'Header', 0, 0, 0, 0),
(1, 12, 40, 'Titre', 0, 0, 0, 0),
(1, 12, 41, 'banniere', 0, 0, 0, 0),
(1, 12, 42, 'col1', 0, 0, 0, 0),
(1, 12, 43, 'col2', 0, 0, 0, 0),
(1, 12, 44, 'col3', 0, 0, 0, 0),
(1, 12, 45, 'col1', 1, 0, 0, 0),
(1, 12, 46, 'col2', 1, 0, 0, 0),
(1, 12, 47, 'col3', 1, 0, 0, 0),
(1, 12, 48, 'col1', 2, 0, 0, 0),
(1, 12, 49, 'col1', 3, 0, 0, 0),
(1, 12, 50, 'col2', 2, 0, 0, 0),
(1, 12, 51, 'col2', 3, 0, 0, 0),
(1, 12, 53, 'col3', 2, 0, 0, 0),
(1, 12, 54, 'col3', 3, 0, 0, 0),
(1, 12, 55, 'social', 0, 0, 0, 0),
(1, 12, 56, 'social', 1, 0, 0, 0),
(1, 12, 58, 'social', 2, 0, 0, 0),
(1, 12, 59, 'social', 3, 0, 0, 0),
(1, 12, 60, 'social', 4, 0, 0, 0),
(1, 12, 61, 'contact', 0, 0, 0, 0),
(1, 12, 63, 'actualite', 0, 0, 0, 0),
(1, 12, 64, 'actualite', 1, 0, 0, 0),
(1, 12, 65, 'actualite', 2, 0, 0, 0),
(1, 12, 66, 'actualite', 3, 0, 0, 0),
(1, 12, 68, 'contact', 1, 1, 0, 0),
(1, 13, 18, 'Header', 0, 0, 0, 0),
(1, 13, 40, 'Titre', 0, 0, 0, 0),
(1, 13, 41, 'banniere', 0, 0, 0, 0),
(1, 13, 42, 'col1', 0, 0, 0, 0),
(1, 13, 43, 'col2', 0, 0, 0, 0),
(1, 13, 44, 'col3', 0, 0, 0, 0),
(1, 13, 45, 'col1', 1, 0, 0, 0),
(1, 13, 46, 'col2', 1, 0, 0, 0),
(1, 13, 47, 'col3', 1, 0, 0, 0),
(1, 13, 48, 'col1', 2, 0, 0, 0),
(1, 13, 49, 'col1', 3, 0, 0, 0),
(1, 13, 50, 'col2', 2, 0, 0, 0),
(1, 13, 51, 'col2', 3, 0, 0, 0),
(1, 13, 53, 'col3', 2, 0, 0, 0),
(1, 13, 54, 'col3', 3, 0, 0, 0),
(1, 13, 55, 'social', 0, 0, 0, 0),
(1, 13, 56, 'social', 1, 0, 0, 0),
(1, 13, 58, 'social', 2, 0, 0, 0),
(1, 13, 59, 'social', 3, 0, 0, 0),
(1, 13, 60, 'social', 4, 0, 0, 0),
(1, 13, 61, 'contact', 0, 0, 0, 0),
(1, 13, 63, 'actualite', 0, 0, 0, 0),
(1, 13, 64, 'actualite', 1, 0, 0, 0),
(1, 13, 65, 'actualite', 2, 0, 0, 0),
(1, 13, 66, 'actualite', 3, 0, 0, 0),
(1, 13, 68, 'contact', 1, 0, 0, 0),
(1, 14, 18, 'Header', 0, 0, 0, 0),
(1, 14, 40, 'Titre', 0, 0, 0, 0),
(1, 14, 41, 'banniere', 0, 0, 0, 0),
(1, 14, 42, 'col1', 0, 0, 0, 0),
(1, 14, 43, 'col2', 0, 0, 0, 0),
(1, 14, 44, 'col3', 0, 0, 0, 0),
(1, 14, 45, 'col1', 1, 0, 0, 0),
(1, 14, 46, 'col2', 1, 0, 0, 0),
(1, 14, 47, 'col3', 1, 0, 0, 0),
(1, 14, 48, 'col1', 2, 0, 0, 0),
(1, 14, 49, 'col1', 3, 0, 0, 0),
(1, 14, 50, 'col2', 2, 0, 0, 0),
(1, 14, 51, 'col2', 3, 0, 0, 0),
(1, 14, 53, 'col3', 2, 0, 0, 0),
(1, 14, 54, 'col3', 3, 0, 0, 0),
(1, 14, 55, 'social', 0, 0, 0, 0),
(1, 14, 56, 'social', 1, 0, 0, 0),
(1, 14, 58, 'social', 2, 0, 0, 0),
(1, 14, 59, 'social', 3, 0, 0, 0),
(1, 14, 60, 'social', 4, 0, 0, 0),
(1, 14, 61, 'contact', 0, 0, 0, 0),
(1, 14, 63, 'actualite', 0, 0, 0, 0),
(1, 14, 64, 'actualite', 1, 0, 0, 0),
(1, 14, 65, 'actualite', 2, 0, 0, 0),
(1, 14, 66, 'actualite', 3, 0, 0, 0),
(1, 14, 69, 'contact', 1, 1, 0, 0),
(1, 15, 18, 'Header', 0, 0, 0, 0),
(1, 15, 40, 'Titre', 0, 0, 0, 0),
(1, 15, 41, 'banniere', 0, 0, 0, 0),
(1, 15, 42, 'col1', 0, 0, 0, 0),
(1, 15, 43, 'col2', 0, 0, 0, 0),
(1, 15, 44, 'col3', 0, 0, 0, 0),
(1, 15, 45, 'col1', 1, 0, 0, 0),
(1, 15, 46, 'col2', 1, 0, 0, 0),
(1, 15, 47, 'col3', 1, 0, 0, 0),
(1, 15, 48, 'col1', 2, 0, 0, 0),
(1, 15, 49, 'col1', 3, 0, 0, 0),
(1, 15, 50, 'col2', 2, 0, 0, 0),
(1, 15, 51, 'col2', 3, 0, 0, 0),
(1, 15, 53, 'col3', 2, 0, 0, 0),
(1, 15, 54, 'col3', 3, 0, 0, 0),
(1, 15, 55, 'social', 0, 0, 0, 0),
(1, 15, 56, 'social', 1, 0, 0, 0),
(1, 15, 58, 'social', 2, 0, 0, 0),
(1, 15, 59, 'social', 3, 0, 0, 0),
(1, 15, 60, 'social', 4, 0, 0, 0),
(1, 15, 61, 'contact', 0, 0, 0, 0),
(1, 15, 63, 'actualite', 0, 0, 0, 0),
(1, 15, 65, 'actualite', 2, 0, 0, 0),
(1, 15, 66, 'actualite', 3, 0, 0, 0),
(1, 15, 69, 'contact', 1, 0, 0, 0),
(1, 15, 70, 'actualite', 1, 1, 0, 0),
(1, 16, 18, 'Header', 0, 0, 0, 0),
(1, 16, 40, 'Titre', 0, 0, 0, 0),
(1, 16, 41, 'banniere', 0, 0, 0, 0),
(1, 16, 42, 'col1', 0, 0, 0, 0),
(1, 16, 43, 'col2', 0, 0, 0, 0),
(1, 16, 44, 'col3', 0, 0, 0, 0),
(1, 16, 45, 'col1', 1, 0, 0, 0),
(1, 16, 46, 'col2', 1, 0, 0, 0),
(1, 16, 47, 'col3', 1, 0, 0, 0),
(1, 16, 48, 'col1', 2, 0, 0, 0),
(1, 16, 49, 'col1', 3, 0, 0, 0),
(1, 16, 50, 'col2', 2, 0, 0, 0),
(1, 16, 51, 'col2', 3, 0, 0, 0),
(1, 16, 53, 'col3', 2, 0, 0, 0),
(1, 16, 54, 'col3', 3, 0, 0, 0),
(1, 16, 55, 'social', 0, 0, 0, 0),
(1, 16, 56, 'social', 1, 0, 0, 0),
(1, 16, 58, 'social', 2, 0, 0, 0),
(1, 16, 59, 'social', 3, 0, 0, 0),
(1, 16, 60, 'social', 4, 0, 0, 0),
(1, 16, 61, 'contact', 0, 0, 0, 0),
(1, 16, 63, 'actualite', 0, 0, 0, 0),
(1, 16, 66, 'actualite', 3, 0, 0, 0),
(1, 16, 69, 'contact', 1, 0, 0, 0),
(1, 16, 70, 'actualite', 1, 0, 0, 0),
(1, 16, 71, 'actualite', 2, 1, 0, 0),
(1, 17, 18, 'Header', 0, 0, 0, 0),
(1, 17, 40, 'Titre', 0, 0, 0, 0),
(1, 17, 41, 'banniere', 0, 0, 0, 0),
(1, 17, 42, 'col1', 0, 0, 0, 0),
(1, 17, 43, 'col2', 0, 0, 0, 0),
(1, 17, 44, 'col3', 0, 0, 0, 0),
(1, 17, 45, 'col1', 1, 0, 0, 0),
(1, 17, 46, 'col2', 1, 0, 0, 0),
(1, 17, 47, 'col3', 1, 0, 0, 0),
(1, 17, 48, 'col1', 2, 0, 0, 0),
(1, 17, 49, 'col1', 3, 0, 0, 0),
(1, 17, 50, 'col2', 2, 0, 0, 0),
(1, 17, 51, 'col2', 3, 0, 0, 0),
(1, 17, 53, 'col3', 2, 0, 0, 0),
(1, 17, 54, 'col3', 3, 0, 0, 0),
(1, 17, 55, 'social', 0, 0, 0, 0),
(1, 17, 56, 'social', 1, 0, 0, 0),
(1, 17, 58, 'social', 2, 0, 0, 0),
(1, 17, 59, 'social', 3, 0, 0, 0),
(1, 17, 60, 'social', 4, 0, 0, 0),
(1, 17, 61, 'contact', 0, 0, 0, 0),
(1, 17, 63, 'actualite', 0, 0, 0, 0),
(1, 17, 69, 'contact', 1, 0, 0, 0),
(1, 17, 71, 'actualite', 2, 0, 0, 0),
(1, 17, 72, 'actualite', 1, 1, 0, 0),
(1, 17, 73, 'actualite', 3, 1, 0, 0),
(1, 18, 18, 'Header', 0, 0, 0, 0),
(1, 18, 40, 'Titre', 0, 0, 0, 0),
(1, 18, 41, 'banniere', 0, 0, 0, 0),
(1, 18, 42, 'col1', 0, 0, 0, 0),
(1, 18, 43, 'col2', 0, 0, 0, 0),
(1, 18, 44, 'col3', 0, 0, 0, 0),
(1, 18, 45, 'col1', 1, 0, 0, 0),
(1, 18, 46, 'col2', 1, 0, 0, 0),
(1, 18, 47, 'col3', 1, 0, 0, 0),
(1, 18, 48, 'col1', 2, 0, 0, 0),
(1, 18, 49, 'col1', 3, 0, 0, 0),
(1, 18, 50, 'col2', 2, 0, 0, 0),
(1, 18, 51, 'col2', 3, 0, 0, 0),
(1, 18, 53, 'col3', 2, 0, 0, 0),
(1, 18, 54, 'col3', 3, 0, 0, 0),
(1, 18, 55, 'social', 0, 0, 0, 0),
(1, 18, 56, 'social', 1, 0, 0, 0),
(1, 18, 58, 'social', 2, 0, 0, 0),
(1, 18, 59, 'social', 3, 0, 0, 0),
(1, 18, 60, 'social', 4, 0, 0, 0),
(1, 18, 61, 'contact', 0, 0, 0, 0),
(1, 18, 63, 'actualite', 0, 0, 0, 0),
(1, 18, 69, 'contact', 1, 0, 0, 0),
(1, 18, 72, 'actualite', 1, 0, 0, 0),
(1, 18, 74, 'actualite', 2, 1, 0, 0),
(1, 18, 75, 'actualite', 3, 1, 0, 0),
(1, 19, 18, 'Header', 0, 0, 0, 0),
(1, 19, 40, 'Titre', 0, 0, 0, 0),
(1, 19, 41, 'banniere', 0, 0, 0, 0),
(1, 19, 42, 'col1', 0, 0, 0, 0),
(1, 19, 43, 'col2', 0, 0, 0, 0),
(1, 19, 44, 'col3', 0, 0, 0, 0),
(1, 19, 45, 'col1', 1, 0, 0, 0),
(1, 19, 46, 'col2', 1, 0, 0, 0),
(1, 19, 47, 'col3', 1, 0, 0, 0),
(1, 19, 48, 'col1', 2, 0, 0, 0),
(1, 19, 49, 'col1', 3, 0, 0, 0),
(1, 19, 50, 'col2', 2, 0, 0, 0),
(1, 19, 51, 'col2', 3, 0, 0, 0),
(1, 19, 53, 'col3', 2, 0, 0, 0),
(1, 19, 54, 'col3', 3, 0, 0, 0),
(1, 19, 55, 'social', 0, 0, 0, 0),
(1, 19, 56, 'social', 1, 0, 0, 0),
(1, 19, 58, 'social', 2, 0, 0, 0),
(1, 19, 59, 'social', 3, 0, 0, 0),
(1, 19, 61, 'contact', 0, 0, 0, 0),
(1, 19, 63, 'actualite', 0, 0, 0, 0),
(1, 19, 69, 'contact', 1, 0, 0, 0),
(1, 19, 72, 'actualite', 1, 0, 0, 0),
(1, 19, 74, 'actualite', 2, 0, 0, 0),
(1, 19, 75, 'actualite', 3, 0, 0, 0),
(1, 19, 76, 'social', 4, 1, 0, 0),
(1, 20, 18, 'Header', 0, 0, 0, 0),
(1, 20, 40, 'Titre', 0, 0, 0, 0),
(1, 20, 41, 'banniere', 0, 0, 0, 0),
(1, 20, 42, 'col1', 0, 0, 0, 0),
(1, 20, 43, 'col2', 0, 0, 0, 0),
(1, 20, 44, 'col3', 0, 0, 0, 0),
(1, 20, 45, 'col1', 1, 0, 0, 0),
(1, 20, 46, 'col2', 1, 0, 0, 0),
(1, 20, 47, 'col3', 1, 0, 0, 0),
(1, 20, 48, 'col1', 2, 0, 0, 0),
(1, 20, 49, 'col1', 3, 0, 0, 0),
(1, 20, 50, 'col2', 2, 0, 0, 0),
(1, 20, 51, 'col2', 3, 0, 0, 0),
(1, 20, 53, 'col3', 2, 0, 0, 0),
(1, 20, 54, 'col3', 3, 0, 0, 0),
(1, 20, 55, 'social', 0, 0, 0, 0),
(1, 20, 56, 'social', 1, 0, 0, 0),
(1, 20, 58, 'social', 2, 0, 0, 0),
(1, 20, 59, 'social', 3, 0, 0, 0),
(1, 20, 61, 'contact', 0, 0, 0, 0),
(1, 20, 63, 'actualite', 0, 0, 0, 0),
(1, 20, 72, 'actualite', 1, 0, 0, 0),
(1, 20, 74, 'actualite', 2, 0, 0, 0),
(1, 20, 75, 'actualite', 3, 0, 0, 0),
(1, 20, 76, 'social', 4, 0, 0, 0),
(1, 20, 77, 'contact', 1, 1, 0, 0),
(1, 21, 18, 'Header', 0, 0, 0, 0),
(1, 21, 40, 'Titre', 0, 0, 0, 0),
(1, 21, 41, 'banniere', 0, 0, 0, 0),
(1, 21, 42, 'col1', 0, 0, 0, 0),
(1, 21, 43, 'col2', 0, 0, 0, 0),
(1, 21, 44, 'col3', 0, 0, 0, 0),
(1, 21, 45, 'col1', 1, 0, 0, 0),
(1, 21, 46, 'col2', 1, 0, 0, 0),
(1, 21, 47, 'col3', 1, 0, 0, 0),
(1, 21, 48, 'col1', 2, 0, 0, 0),
(1, 21, 49, 'col1', 3, 0, 0, 0),
(1, 21, 50, 'col2', 2, 0, 0, 0),
(1, 21, 51, 'col2', 3, 0, 0, 0),
(1, 21, 53, 'col3', 2, 0, 0, 0),
(1, 21, 54, 'col3', 3, 0, 0, 0),
(1, 21, 55, 'social', 0, 0, 0, 0),
(1, 21, 56, 'social', 1, 0, 0, 0),
(1, 21, 58, 'social', 2, 0, 0, 0),
(1, 21, 59, 'social', 3, 0, 0, 0),
(1, 21, 61, 'contact', 0, 0, 0, 0),
(1, 21, 63, 'actualite', 0, 0, 0, 0),
(1, 21, 72, 'actualite', 1, 0, 0, 0),
(1, 21, 74, 'actualite', 2, 0, 0, 0),
(1, 21, 75, 'actualite', 3, 0, 0, 0),
(1, 21, 76, 'social', 4, 0, 0, 0),
(1, 21, 77, 'contact', 1, 0, 0, 0),
(1, 21, 78, 'Menu', 0, 1, 0, 0),
(106, 1, 1, 'Header', 0, 1, 0, 0),
(106, 1, 2, 'Column 1', 0, 1, 0, 0),
(106, 1, 3, 'Column 2', 0, 1, 0, 0),
(106, 1, 4, 'Column 3', 0, 1, 0, 0),
(106, 1, 5, 'Column 4', 0, 1, 0, 0),
(107, 1, 6, 'Primary', 0, 1, 0, 0),
(107, 1, 7, 'Primary', 1, 1, 0, 0),
(107, 1, 8, 'Secondary 1', 0, 1, 0, 0),
(107, 1, 9, 'Secondary 2', 0, 1, 0, 0),
(107, 1, 10, 'Secondary 3', 0, 1, 0, 0),
(107, 1, 11, 'Secondary 4', 0, 1, 0, 0),
(107, 1, 12, 'Secondary 5', 0, 1, 0, 0),
(123, 1, 14, 'Header', 0, 1, 0, 0),
(124, 2, 17, 'Main', 0, 1, 0, 0),
(126, 1, 19, 'col1', 0, 1, 0, 0),
(126, 1, 20, 'col1', 1, 1, 0, 0),
(126, 1, 21, 'col1', 2, 1, 0, 0),
(126, 1, 22, 'col1', 3, 1, 0, 0),
(126, 1, 23, 'col2', 0, 1, 0, 0),
(126, 1, 24, 'col2', 1, 1, 0, 0),
(126, 1, 25, 'col2', 2, 1, 0, 0),
(126, 1, 26, 'col2', 3, 1, 0, 0),
(126, 1, 27, 'col3', 0, 1, 0, 0),
(126, 1, 28, 'col3', 1, 1, 0, 0),
(126, 1, 29, 'col3', 2, 1, 0, 0),
(126, 1, 30, 'col3', 3, 1, 0, 0),
(126, 1, 31, 'Titre', 0, 1, 0, 0),
(126, 1, 32, 'banniere', 0, 1, 0, 0),
(126, 1, 33, 'social', 0, 1, 0, 0),
(126, 1, 34, 'social', 1, 1, 0, 0),
(126, 1, 35, 'social', 2, 1, 0, 0),
(126, 1, 36, 'social', 3, 1, 0, 0),
(126, 1, 37, 'social', 4, 1, 0, 0),
(126, 1, 38, 'social', 5, 1, 0, 0),
(127, 1, 19, 'col1', 0, 0, 0, 0),
(127, 1, 20, 'col1', 1, 0, 0, 0),
(127, 1, 21, 'col1', 2, 0, 0, 0),
(127, 1, 22, 'col1', 3, 0, 0, 0),
(127, 1, 23, 'col2', 0, 0, 0, 0),
(127, 1, 24, 'col2', 1, 0, 0, 0),
(127, 1, 25, 'col2', 2, 0, 0, 0),
(127, 1, 26, 'col2', 3, 0, 0, 0),
(127, 1, 27, 'col3', 0, 0, 0, 0),
(127, 1, 28, 'col3', 1, 0, 0, 0),
(127, 1, 29, 'col3', 2, 0, 0, 0),
(127, 1, 30, 'col3', 3, 0, 0, 0),
(127, 1, 31, 'Titre', 0, 0, 0, 0),
(127, 1, 32, 'banniere', 0, 0, 0, 0),
(127, 1, 33, 'social', 0, 0, 0, 0),
(127, 1, 34, 'social', 1, 0, 0, 0),
(127, 1, 35, 'social', 2, 0, 0, 0),
(127, 1, 36, 'social', 3, 0, 0, 0),
(127, 1, 37, 'social', 4, 0, 0, 0),
(127, 1, 38, 'social', 5, 0, 0, 0),
(127, 2, 19, 'col1', 0, 0, 0, 0),
(127, 2, 20, 'col1', 1, 0, 0, 0),
(127, 2, 21, 'col1', 2, 0, 0, 0),
(127, 2, 22, 'col1', 3, 0, 0, 0),
(127, 2, 23, 'col2', 0, 0, 0, 0),
(127, 2, 24, 'col2', 1, 0, 0, 0),
(127, 2, 25, 'col2', 2, 0, 0, 0),
(127, 2, 26, 'col2', 3, 0, 0, 0),
(127, 2, 27, 'col3', 0, 0, 0, 0),
(127, 2, 28, 'col3', 1, 0, 0, 0),
(127, 2, 29, 'col3', 2, 0, 0, 0),
(127, 2, 30, 'col3', 3, 0, 0, 0),
(127, 2, 31, 'Titre', 0, 0, 0, 0),
(127, 2, 32, 'banniere', 0, 0, 0, 0),
(127, 2, 33, 'social', 0, 0, 0, 0),
(127, 2, 34, 'social', 1, 0, 0, 0),
(127, 2, 35, 'social', 2, 0, 0, 0),
(127, 2, 36, 'social', 3, 0, 0, 0),
(127, 2, 37, 'social', 4, 0, 0, 0),
(127, 2, 38, 'social', 5, 0, 0, 0),
(127, 2, 86, 'Menu', 0, 1, 0, 0),
(127, 2, 87, 'contenu : Layout 1 : Cell 1', 0, 1, 0, 0),
(127, 2, 88, 'contenu : Layout 1 : Cell 2', 0, 1, 0, 0),
(127, 2, 89, 'contenu : Layout 1 : Cell 3', 0, 1, 0, 0),
(127, 2, 90, 'contenu : Layout 1 : Cell 1', 1, 1, 0, 0),
(127, 2, 91, 'contenu : Layout 1 : Cell 2', 1, 1, 0, 0),
(127, 2, 92, 'contenu : Layout 1 : Cell 3', 1, 1, 0, 0),
(127, 3, 19, 'col1', 0, 0, 0, 0),
(127, 3, 20, 'col1', 1, 0, 0, 0),
(127, 3, 21, 'col1', 2, 0, 0, 0),
(127, 3, 22, 'col1', 3, 0, 0, 0),
(127, 3, 23, 'col2', 0, 0, 0, 0),
(127, 3, 24, 'col2', 1, 0, 0, 0),
(127, 3, 25, 'col2', 2, 0, 0, 0),
(127, 3, 26, 'col2', 3, 0, 0, 0),
(127, 3, 27, 'col3', 0, 0, 0, 0),
(127, 3, 28, 'col3', 1, 0, 0, 0),
(127, 3, 29, 'col3', 2, 0, 0, 0),
(127, 3, 30, 'col3', 3, 0, 0, 0),
(127, 3, 31, 'Titre', 0, 0, 0, 0),
(127, 3, 32, 'banniere', 0, 0, 0, 0),
(127, 3, 33, 'social', 0, 0, 0, 0),
(127, 3, 34, 'social', 1, 0, 0, 0),
(127, 3, 35, 'social', 2, 0, 0, 0),
(127, 3, 36, 'social', 3, 0, 0, 0),
(127, 3, 37, 'social', 4, 0, 0, 0),
(127, 3, 38, 'social', 5, 0, 0, 0),
(127, 3, 86, 'Menu', 0, 0, 0, 0),
(127, 3, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 3, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 3, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 3, 93, 'contenu : Layout 1 : Cell 1', 0, 1, 0, 0),
(127, 3, 94, 'contenu : Layout 1 : Cell 2', 0, 1, 0, 0),
(127, 3, 95, 'contenu : Layout 1 : Cell 3', 0, 1, 0, 0),
(127, 4, 19, 'col1', 0, 0, 0, 0),
(127, 4, 20, 'col1', 1, 0, 0, 0),
(127, 4, 21, 'col1', 2, 0, 0, 0),
(127, 4, 22, 'col1', 3, 0, 0, 0),
(127, 4, 23, 'col2', 0, 0, 0, 0),
(127, 4, 24, 'col2', 1, 0, 0, 0),
(127, 4, 25, 'col2', 2, 0, 0, 0),
(127, 4, 26, 'col2', 3, 0, 0, 0),
(127, 4, 27, 'col3', 0, 0, 0, 0),
(127, 4, 28, 'col3', 1, 0, 0, 0),
(127, 4, 29, 'col3', 2, 0, 0, 0),
(127, 4, 30, 'col3', 3, 0, 0, 0),
(127, 4, 31, 'Titre', 0, 0, 0, 0),
(127, 4, 32, 'banniere', 0, 0, 0, 0),
(127, 4, 33, 'social', 0, 0, 0, 0),
(127, 4, 34, 'social', 1, 0, 0, 0),
(127, 4, 35, 'social', 2, 0, 0, 0),
(127, 4, 36, 'social', 3, 0, 0, 0),
(127, 4, 37, 'social', 4, 0, 0, 0),
(127, 4, 38, 'social', 5, 0, 0, 0),
(127, 4, 86, 'Menu', 0, 0, 0, 0),
(127, 4, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 4, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 4, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 4, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 4, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 4, 96, 'contenu : Layout 1 : Cell 3', 0, 1, 0, 0),
(127, 5, 19, 'col1', 0, 0, 0, 0),
(127, 5, 20, 'col1', 1, 0, 0, 0),
(127, 5, 21, 'col1', 2, 0, 0, 0),
(127, 5, 22, 'col1', 3, 0, 0, 0),
(127, 5, 23, 'col2', 0, 0, 0, 0),
(127, 5, 24, 'col2', 1, 0, 0, 0),
(127, 5, 25, 'col2', 2, 0, 0, 0),
(127, 5, 26, 'col2', 3, 0, 0, 0),
(127, 5, 27, 'col3', 0, 0, 0, 0),
(127, 5, 28, 'col3', 1, 0, 0, 0),
(127, 5, 29, 'col3', 2, 0, 0, 0),
(127, 5, 30, 'col3', 3, 0, 0, 0),
(127, 5, 31, 'Titre', 0, 0, 0, 0),
(127, 5, 32, 'banniere', 0, 0, 0, 0),
(127, 5, 33, 'social', 0, 0, 0, 0),
(127, 5, 34, 'social', 1, 0, 0, 0),
(127, 5, 35, 'social', 2, 0, 0, 0),
(127, 5, 36, 'social', 3, 0, 0, 0),
(127, 5, 37, 'social', 4, 0, 0, 0),
(127, 5, 38, 'social', 5, 0, 0, 0),
(127, 5, 86, 'Menu', 0, 0, 0, 0),
(127, 5, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 5, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 5, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 5, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 5, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 5, 96, 'contenu : Layout 1 : Cell 3', 0, 0, 0, 0),
(127, 5, 97, 'contenu', 0, 1, 0, 0),
(127, 6, 19, 'col1', 0, 0, 0, 0),
(127, 6, 20, 'col1', 1, 0, 0, 0),
(127, 6, 21, 'col1', 2, 0, 0, 0),
(127, 6, 22, 'col1', 3, 0, 0, 0),
(127, 6, 23, 'col2', 0, 0, 0, 0),
(127, 6, 24, 'col2', 1, 0, 0, 0),
(127, 6, 25, 'col2', 2, 0, 0, 0),
(127, 6, 26, 'col2', 3, 0, 0, 0),
(127, 6, 27, 'col3', 0, 0, 0, 0),
(127, 6, 28, 'col3', 1, 0, 0, 0),
(127, 6, 29, 'col3', 2, 0, 0, 0),
(127, 6, 30, 'col3', 3, 0, 0, 0),
(127, 6, 31, 'Titre', 0, 0, 0, 0),
(127, 6, 32, 'banniere', 0, 0, 0, 0),
(127, 6, 33, 'social', 0, 0, 0, 0),
(127, 6, 34, 'social', 1, 0, 0, 0),
(127, 6, 35, 'social', 2, 0, 0, 0),
(127, 6, 36, 'social', 3, 0, 0, 0),
(127, 6, 37, 'social', 4, 0, 0, 0),
(127, 6, 38, 'social', 5, 0, 0, 0),
(127, 6, 86, 'Menu', 0, 0, 0, 0),
(127, 6, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 6, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 6, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 6, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 6, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 6, 96, 'contenu : Layout 1 : Cell 3', 0, 0, 0, 0),
(127, 6, 98, 'contenu', 0, 1, 0, 0),
(127, 7, 19, 'col1', 0, 0, 0, 0),
(127, 7, 20, 'col1', 1, 0, 0, 0),
(127, 7, 21, 'col1', 2, 0, 0, 0),
(127, 7, 22, 'col1', 3, 0, 0, 0),
(127, 7, 23, 'col2', 0, 0, 0, 0),
(127, 7, 24, 'col2', 1, 0, 0, 0),
(127, 7, 25, 'col2', 2, 0, 0, 0),
(127, 7, 26, 'col2', 3, 0, 0, 0),
(127, 7, 27, 'col3', 0, 0, 0, 0),
(127, 7, 28, 'col3', 1, 0, 0, 0),
(127, 7, 29, 'col3', 2, 0, 0, 0),
(127, 7, 30, 'col3', 3, 0, 0, 0),
(127, 7, 31, 'Titre', 0, 0, 0, 0),
(127, 7, 32, 'banniere', 0, 0, 0, 0),
(127, 7, 33, 'social', 0, 0, 0, 0),
(127, 7, 34, 'social', 1, 0, 0, 0),
(127, 7, 35, 'social', 2, 0, 0, 0),
(127, 7, 36, 'social', 3, 0, 0, 0),
(127, 7, 37, 'social', 4, 0, 0, 0),
(127, 7, 38, 'social', 5, 0, 0, 0),
(127, 7, 86, 'Menu', 0, 0, 0, 0),
(127, 7, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 7, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 7, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 7, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 7, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 7, 96, 'contenu : Layout 1 : Cell 3', 0, 0, 0, 0),
(127, 7, 99, 'contenu', 0, 1, 0, 0),
(127, 8, 19, 'col1', 0, 0, 0, 0),
(127, 8, 20, 'col1', 1, 0, 0, 0),
(127, 8, 21, 'col1', 2, 0, 0, 0),
(127, 8, 22, 'col1', 3, 0, 0, 0),
(127, 8, 23, 'col2', 0, 0, 0, 0),
(127, 8, 24, 'col2', 1, 0, 0, 0),
(127, 8, 25, 'col2', 2, 0, 0, 0),
(127, 8, 26, 'col2', 3, 0, 0, 0),
(127, 8, 27, 'col3', 0, 0, 0, 0),
(127, 8, 28, 'col3', 1, 0, 0, 0),
(127, 8, 29, 'col3', 2, 0, 0, 0),
(127, 8, 30, 'col3', 3, 0, 0, 0),
(127, 8, 31, 'Titre', 0, 0, 0, 0),
(127, 8, 32, 'banniere', 0, 0, 0, 0),
(127, 8, 33, 'social', 0, 0, 0, 0),
(127, 8, 34, 'social', 1, 0, 0, 0),
(127, 8, 35, 'social', 2, 0, 0, 0),
(127, 8, 36, 'social', 3, 0, 0, 0),
(127, 8, 37, 'social', 4, 0, 0, 0),
(127, 8, 38, 'social', 5, 0, 0, 0),
(127, 8, 86, 'Menu', 0, 0, 0, 0),
(127, 8, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 8, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 8, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 8, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 8, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 8, 96, 'contenu : Layout 1 : Cell 3', 0, 0, 0, 0),
(127, 8, 99, 'contenu', 0, 0, 0, 0),
(127, 9, 19, 'col1', 0, 0, 0, 0),
(127, 9, 20, 'col1', 1, 0, 0, 0),
(127, 9, 21, 'col1', 2, 0, 0, 0),
(127, 9, 22, 'col1', 3, 0, 0, 0),
(127, 9, 23, 'col2', 0, 0, 0, 0),
(127, 9, 24, 'col2', 1, 0, 0, 0),
(127, 9, 25, 'col2', 2, 0, 0, 0),
(127, 9, 26, 'col2', 3, 0, 0, 0),
(127, 9, 27, 'col3', 0, 0, 0, 0),
(127, 9, 28, 'col3', 1, 0, 0, 0),
(127, 9, 29, 'col3', 2, 0, 0, 0),
(127, 9, 30, 'col3', 3, 0, 0, 0),
(127, 9, 31, 'Titre', 0, 0, 0, 0),
(127, 9, 32, 'banniere', 0, 0, 0, 0),
(127, 9, 33, 'social', 0, 0, 0, 0),
(127, 9, 34, 'social', 1, 0, 0, 0),
(127, 9, 35, 'social', 2, 0, 0, 0),
(127, 9, 36, 'social', 3, 0, 0, 0),
(127, 9, 37, 'social', 4, 0, 0, 0),
(127, 9, 38, 'social', 5, 0, 0, 0),
(127, 9, 86, 'Menu', 0, 0, 0, 0),
(127, 9, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 9, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 9, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 9, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 9, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 9, 96, 'contenu : Layout 1 : Cell 3', 0, 0, 0, 0),
(127, 9, 100, 'contenu', 0, 1, 0, 0),
(127, 10, 19, 'col1', 0, 0, 0, 0),
(127, 10, 20, 'col1', 1, 0, 0, 0),
(127, 10, 21, 'col1', 2, 0, 0, 0),
(127, 10, 22, 'col1', 3, 0, 0, 0),
(127, 10, 23, 'col2', 0, 0, 0, 0),
(127, 10, 24, 'col2', 1, 0, 0, 0),
(127, 10, 25, 'col2', 2, 0, 0, 0),
(127, 10, 26, 'col2', 3, 0, 0, 0),
(127, 10, 27, 'col3', 0, 0, 0, 0),
(127, 10, 28, 'col3', 1, 0, 0, 0),
(127, 10, 29, 'col3', 2, 0, 0, 0),
(127, 10, 30, 'col3', 3, 0, 0, 0),
(127, 10, 31, 'Titre', 0, 0, 0, 0),
(127, 10, 32, 'banniere', 0, 0, 0, 0),
(127, 10, 33, 'social', 0, 0, 0, 0),
(127, 10, 34, 'social', 1, 0, 0, 0),
(127, 10, 35, 'social', 2, 0, 0, 0),
(127, 10, 36, 'social', 3, 0, 0, 0),
(127, 10, 37, 'social', 4, 0, 0, 0),
(127, 10, 38, 'social', 5, 0, 0, 0),
(127, 10, 86, 'Menu', 0, 0, 0, 0),
(127, 10, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 10, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 10, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 10, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 10, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 10, 96, 'contenu : Layout 1 : Cell 3', 0, 0, 0, 0),
(127, 10, 101, 'contenu', 0, 1, 0, 0),
(127, 11, 19, 'col1', 0, 0, 0, 0),
(127, 11, 20, 'col1', 1, 0, 0, 0),
(127, 11, 21, 'col1', 2, 0, 0, 0),
(127, 11, 22, 'col1', 3, 0, 0, 0),
(127, 11, 23, 'col2', 0, 0, 0, 0),
(127, 11, 24, 'col2', 1, 0, 0, 0),
(127, 11, 25, 'col2', 2, 0, 0, 0),
(127, 11, 26, 'col2', 3, 0, 0, 0),
(127, 11, 27, 'col3', 0, 0, 0, 0),
(127, 11, 28, 'col3', 1, 0, 0, 0),
(127, 11, 29, 'col3', 2, 0, 0, 0),
(127, 11, 30, 'col3', 3, 0, 0, 0),
(127, 11, 31, 'Titre', 0, 0, 0, 0),
(127, 11, 32, 'banniere', 0, 0, 0, 0),
(127, 11, 33, 'social', 0, 0, 0, 0),
(127, 11, 34, 'social', 1, 0, 0, 0),
(127, 11, 35, 'social', 2, 0, 0, 0),
(127, 11, 36, 'social', 3, 0, 0, 0),
(127, 11, 37, 'social', 4, 0, 0, 0),
(127, 11, 38, 'social', 5, 0, 0, 0),
(127, 11, 86, 'Menu', 0, 0, 0, 0),
(127, 11, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 11, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 11, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 11, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 11, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 11, 96, 'contenu : Layout 1 : Cell 3', 0, 0, 0, 0),
(127, 11, 101, 'contenu', 0, 0, 0, 0),
(127, 12, 19, 'col1', 0, 0, 0, 0),
(127, 12, 20, 'col1', 1, 0, 0, 0),
(127, 12, 21, 'col1', 2, 0, 0, 0),
(127, 12, 22, 'col1', 3, 0, 0, 0),
(127, 12, 23, 'col2', 0, 0, 0, 0),
(127, 12, 24, 'col2', 1, 0, 0, 0),
(127, 12, 25, 'col2', 2, 0, 0, 0),
(127, 12, 26, 'col2', 3, 0, 0, 0),
(127, 12, 27, 'col3', 0, 0, 0, 0),
(127, 12, 28, 'col3', 1, 0, 0, 0),
(127, 12, 29, 'col3', 2, 0, 0, 0),
(127, 12, 30, 'col3', 3, 0, 0, 0),
(127, 12, 31, 'Titre', 0, 0, 0, 0),
(127, 12, 32, 'banniere', 0, 0, 0, 0),
(127, 12, 33, 'social', 0, 0, 0, 0),
(127, 12, 34, 'social', 1, 0, 0, 0),
(127, 12, 35, 'social', 2, 0, 0, 0),
(127, 12, 36, 'social', 3, 0, 0, 0),
(127, 12, 37, 'social', 4, 0, 0, 0),
(127, 12, 38, 'social', 5, 0, 0, 0),
(127, 12, 86, 'Menu', 0, 0, 0, 0),
(127, 12, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 12, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 12, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 12, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 12, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 12, 96, 'contenu : Layout 1 : Cell 3', 0, 0, 0, 0),
(127, 12, 101, 'contenu', 0, 0, 0, 0),
(127, 12, 102, 'contenu : Layout 1 : Cell 5', 0, 1, 0, 0),
(127, 13, 19, 'col1', 0, 0, 0, 0),
(127, 13, 20, 'col1', 1, 0, 0, 0),
(127, 13, 21, 'col1', 2, 0, 0, 0),
(127, 13, 22, 'col1', 3, 0, 0, 0),
(127, 13, 23, 'col2', 0, 0, 0, 0),
(127, 13, 24, 'col2', 1, 0, 0, 0),
(127, 13, 25, 'col2', 2, 0, 0, 0),
(127, 13, 26, 'col2', 3, 0, 0, 0),
(127, 13, 27, 'col3', 0, 0, 0, 0),
(127, 13, 28, 'col3', 1, 0, 0, 0),
(127, 13, 29, 'col3', 2, 0, 0, 0),
(127, 13, 30, 'col3', 3, 0, 0, 0),
(127, 13, 31, 'Titre', 0, 0, 0, 0),
(127, 13, 32, 'banniere', 0, 0, 0, 0),
(127, 13, 33, 'social', 0, 0, 0, 0),
(127, 13, 34, 'social', 1, 0, 0, 0),
(127, 13, 35, 'social', 2, 0, 0, 0),
(127, 13, 36, 'social', 3, 0, 0, 0),
(127, 13, 37, 'social', 4, 0, 0, 0),
(127, 13, 38, 'social', 5, 0, 0, 0),
(127, 13, 86, 'Menu', 0, 0, 0, 0),
(127, 13, 90, 'contenu : Layout 1 : Cell 1', 1, 0, 0, 0),
(127, 13, 91, 'contenu : Layout 1 : Cell 2', 1, 0, 0, 0),
(127, 13, 92, 'contenu : Layout 1 : Cell 3', 1, 0, 0, 0),
(127, 13, 93, 'contenu : Layout 1 : Cell 1', 0, 0, 0, 0),
(127, 13, 94, 'contenu : Layout 1 : Cell 2', 0, 0, 0, 0),
(127, 13, 96, 'contenu : Layout 1 : Cell 3', 0, 0, 0, 0),
(127, 13, 103, 'contenu : Layout 1 : Cell 5', 0, 1, 0, 0),
(128, 1, 19, 'col1', 0, 0, 0, 0),
(128, 1, 20, 'col1', 1, 0, 0, 0),
(128, 1, 21, 'col1', 2, 0, 0, 0),
(128, 1, 22, 'col1', 3, 0, 0, 0),
(128, 1, 23, 'col2', 0, 0, 0, 0),
(128, 1, 24, 'col2', 1, 0, 0, 0),
(128, 1, 25, 'col2', 2, 0, 0, 0),
(128, 1, 26, 'col2', 3, 0, 0, 0),
(128, 1, 27, 'col3', 0, 0, 0, 0),
(128, 1, 28, 'col3', 1, 0, 0, 0),
(128, 1, 29, 'col3', 2, 0, 0, 0),
(128, 1, 30, 'col3', 3, 0, 0, 0),
(128, 1, 31, 'Titre', 0, 0, 0, 0),
(128, 1, 32, 'banniere', 0, 0, 0, 0),
(128, 1, 33, 'social', 0, 0, 0, 0),
(128, 1, 34, 'social', 1, 0, 0, 0),
(128, 1, 35, 'social', 2, 0, 0, 0),
(128, 1, 36, 'social', 3, 0, 0, 0),
(128, 1, 37, 'social', 4, 0, 0, 0),
(128, 1, 38, 'social', 5, 0, 0, 0),
(129, 2, 104, 'Menu', 0, 1, 0, 0),
(129, 2, 105, 'contenu', 0, 1, 0, 0),
(129, 3, 104, 'Menu', 0, 0, 0, 0),
(129, 3, 106, 'contenu', 0, 1, 0, 0),
(130, 2, 84, 'Menu', 0, 1, 0, 0),
(130, 2, 85, 'contenu', 0, 1, 0, 0),
(131, 2, 79, 'Menu', 0, 1, 0, 0),
(131, 3, 79, 'Menu', 0, 0, 0, 0),
(131, 3, 80, 'contenu', 0, 1, 0, 0),
(131, 4, 79, 'Menu', 0, 0, 0, 0),
(131, 4, 81, 'contenu', 0, 1, 0, 0),
(131, 5, 79, 'Menu', 0, 0, 0, 0),
(131, 5, 82, 'contenu', 0, 1, 0, 0),
(131, 6, 79, 'Menu', 0, 0, 0, 0),
(131, 6, 83, 'contenu', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionblocksoutputcache`
--

CREATE TABLE IF NOT EXISTS `collectionversionblocksoutputcache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `collectionversionblocksoutputcache`
--

INSERT INTO `collectionversionblocksoutputcache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 5, 17, 'Main', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/Concrete5/concrete5.6.3.2/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/Concrete5/concrete5.6.3.2/index.php/presentation/" target="_self" class="">Présentation</a></li></ul>', 1420561100),
(1, 7, 39, 'Titre', '\n<div id="HTMLBlock39" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583164949),
(1, 8, 39, 'Titre', '\n<div id="HTMLBlock39" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583165056),
(1, 8, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583165186),
(1, 8, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583165226),
(1, 9, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583165505),
(1, 9, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583165504),
(1, 9, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583185789),
(1, 9, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583185829),
(1, 9, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583185862),
(1, 9, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583185894),
(1, 9, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583185962),
(1, 9, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583186001),
(1, 9, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583186042),
(1, 9, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583186066),
(1, 9, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583186114),
(1, 9, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583186132),
(1, 9, 52, 'col2', '\n<div id="HTMLBlock52" class="HTMLBlock">\nLe corps de l''article</div>', 1583186133),
(1, 9, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583186178),
(1, 9, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583186193),
(1, 9, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583186303),
(1, 9, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583186456),
(1, 9, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583186514),
(1, 9, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583186618),
(1, 9, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583186736),
(1, 9, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583187140),
(1, 9, 64, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583187484),
(1, 9, 65, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583187651),
(1, 9, 66, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583187721),
(1, 10, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188065),
(1, 10, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188065),
(1, 10, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188065),
(1, 10, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188065),
(1, 10, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188065),
(1, 10, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188065),
(1, 10, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188065),
(1, 10, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188065),
(1, 10, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188065),
(1, 10, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188065),
(1, 10, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188065),
(1, 10, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188065),
(1, 10, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188065),
(1, 10, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188065),
(1, 10, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188065),
(1, 10, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188065),
(1, 10, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188065),
(1, 10, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188065),
(1, 10, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188065),
(1, 10, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188066),
(1, 10, 64, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188066),
(1, 10, 65, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188066),
(1, 10, 66, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188066),
(1, 11, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188093),
(1, 11, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188093),
(1, 11, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188093),
(1, 11, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188093),
(1, 11, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188093),
(1, 11, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188093),
(1, 11, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188093),
(1, 11, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188093),
(1, 11, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188093),
(1, 11, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188093),
(1, 11, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188093),
(1, 11, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188093),
(1, 11, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188093),
(1, 11, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188093),
(1, 11, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188093),
(1, 11, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188093),
(1, 11, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188093),
(1, 11, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188094),
(1, 11, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188094),
(1, 11, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188094),
(1, 11, 64, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188094),
(1, 11, 65, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188094),
(1, 11, 66, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188094),
(1, 12, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188156),
(1, 12, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188156),
(1, 12, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188156),
(1, 12, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188156),
(1, 12, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188156),
(1, 12, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188156),
(1, 12, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188156),
(1, 12, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188156),
(1, 12, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188156),
(1, 12, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188156),
(1, 12, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188156),
(1, 12, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188156),
(1, 12, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188156),
(1, 12, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188156),
(1, 12, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188156),
(1, 12, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188156),
(1, 12, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188156),
(1, 12, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188156),
(1, 12, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188156),
(1, 12, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188156),
(1, 12, 64, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188157),
(1, 12, 65, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188157),
(1, 12, 66, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188157),
(1, 13, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188322),
(1, 13, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188322),
(1, 13, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188322),
(1, 13, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188322),
(1, 13, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188322),
(1, 13, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188322),
(1, 13, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188322),
(1, 13, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188322),
(1, 13, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188322),
(1, 13, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188322),
(1, 13, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188322),
(1, 13, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188322),
(1, 13, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188322),
(1, 13, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188322),
(1, 13, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188322),
(1, 13, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188322),
(1, 13, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188323),
(1, 13, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188323),
(1, 13, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188323),
(1, 13, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188323),
(1, 13, 64, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188323),
(1, 13, 65, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188323),
(1, 13, 66, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188323),
(1, 14, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188356),
(1, 14, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188356),
(1, 14, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188356),
(1, 14, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188357),
(1, 14, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188357),
(1, 14, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188356),
(1, 14, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188357),
(1, 14, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188357),
(1, 14, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188356),
(1, 14, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188356),
(1, 14, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188357),
(1, 14, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188357),
(1, 14, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188357),
(1, 14, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188357),
(1, 14, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188357),
(1, 14, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188357),
(1, 14, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188357),
(1, 14, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188357),
(1, 14, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188357),
(1, 14, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188357),
(1, 14, 64, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188357),
(1, 14, 65, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188357),
(1, 14, 66, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188357),
(1, 15, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188401),
(1, 15, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188401),
(1, 15, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188401),
(1, 15, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188402);
INSERT INTO `collectionversionblocksoutputcache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 15, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188402),
(1, 15, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188401),
(1, 15, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188402),
(1, 15, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188402),
(1, 15, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188401),
(1, 15, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188402),
(1, 15, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188402),
(1, 15, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188402),
(1, 15, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188402),
(1, 15, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188402),
(1, 15, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188402),
(1, 15, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188402),
(1, 15, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188402),
(1, 15, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188402),
(1, 15, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188402),
(1, 15, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188402),
(1, 15, 65, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188402),
(1, 15, 66, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188402),
(1, 15, 70, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188402),
(1, 16, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188523),
(1, 16, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188523),
(1, 16, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188523),
(1, 16, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188524),
(1, 16, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188524),
(1, 16, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188523),
(1, 16, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188524),
(1, 16, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188524),
(1, 16, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188523),
(1, 16, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188524),
(1, 16, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188524),
(1, 16, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188524),
(1, 16, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188524),
(1, 16, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188524),
(1, 16, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188524),
(1, 16, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188524),
(1, 16, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188524),
(1, 16, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188524),
(1, 16, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188524),
(1, 16, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188524),
(1, 16, 65, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188524),
(1, 16, 66, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188524),
(1, 16, 70, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188524),
(1, 16, 71, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188543),
(1, 17, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188596),
(1, 17, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188596),
(1, 17, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188596),
(1, 17, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188596),
(1, 17, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188596),
(1, 17, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188596),
(1, 17, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188596),
(1, 17, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188596),
(1, 17, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188596),
(1, 17, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188596),
(1, 17, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188596),
(1, 17, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188596),
(1, 17, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188596),
(1, 17, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188596),
(1, 17, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188596),
(1, 17, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188596),
(1, 17, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188596),
(1, 17, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188596),
(1, 17, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188596),
(1, 17, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188596),
(1, 17, 66, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188597),
(1, 17, 71, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188597),
(1, 17, 72, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188597),
(1, 17, 73, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188615),
(1, 18, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188693),
(1, 18, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188693),
(1, 18, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188693),
(1, 18, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188693),
(1, 18, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188694),
(1, 18, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188693),
(1, 18, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188693),
(1, 18, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188694),
(1, 18, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188693),
(1, 18, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188693),
(1, 18, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188693),
(1, 18, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188693),
(1, 18, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188694),
(1, 18, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188694),
(1, 18, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188694),
(1, 18, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188694),
(1, 18, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188694),
(1, 18, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188694),
(1, 18, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188694),
(1, 18, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188694),
(1, 18, 71, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188694),
(1, 18, 72, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188694),
(1, 18, 73, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188694),
(1, 18, 74, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188709),
(1, 18, 75, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188726),
(1, 19, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188775),
(1, 19, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188775),
(1, 19, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188775),
(1, 19, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188775),
(1, 19, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188776),
(1, 19, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188775),
(1, 19, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188775),
(1, 19, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188776),
(1, 19, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188775),
(1, 19, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188775),
(1, 19, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188775),
(1, 19, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188775),
(1, 19, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188776),
(1, 19, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188776),
(1, 19, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188776),
(1, 19, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188776),
(1, 19, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188776),
(1, 19, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188776),
(1, 19, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188776),
(1, 19, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188776),
(1, 19, 72, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188776),
(1, 19, 74, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188776),
(1, 19, 75, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188776),
(1, 20, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583188815),
(1, 20, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583188815),
(1, 20, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583188815),
(1, 20, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583188816),
(1, 20, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583188816),
(1, 20, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583188815),
(1, 20, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583188816),
(1, 20, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583188816),
(1, 20, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583188816),
(1, 20, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583188816),
(1, 20, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583188816),
(1, 20, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583188816),
(1, 20, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583188816),
(1, 20, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583188816),
(1, 20, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583188816),
(1, 20, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583188816),
(1, 20, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583188816),
(1, 20, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583188816),
(1, 20, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583188816),
(1, 20, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583188816),
(1, 20, 72, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583188816),
(1, 20, 74, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583188816),
(1, 20, 75, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583188816),
(1, 21, 40, 'Titre', '\n<div id="HTMLBlock40" class="HTMLBlock">\nWelcome on my website\r\n</div>', 1583189056),
(1, 21, 41, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper41 = {\n\n	bID:41,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper41.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+41+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper41.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper41.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display41" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter41" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583189056),
(1, 21, 42, 'col1', '\n<div id="HTMLBlock42" class="HTMLBlock">\n<h2>Perfect logic</h2></div>', 1583189056),
(1, 21, 43, 'col2', '\n<div id="HTMLBlock43" class="HTMLBlock">\n<h2>Perfect solution </h2>\r\n</div>', 1583189056),
(1, 21, 44, 'col3', '\n<div id="HTMLBlock44" class="HTMLBlock">\n<h2>Uber culture</h2></div>', 1583189056),
(1, 21, 45, 'col1', '\n<div id="HTMLBlock45" class="HTMLBlock">\nAll you want your website to do</div>', 1583189056),
(1, 21, 46, 'col2', '\n<div id="HTMLBlock46" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583189056),
(1, 21, 47, 'col3', '\n<div id="HTMLBlock47" class="HTMLBlock">\nFresh,modern and ready for you</div>', 1583189056),
(1, 21, 48, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583189056),
(1, 21, 49, 'col1', '\n<div id="HTMLBlock49" class="HTMLBlock">\nLe corps de l''article\r\n</div>', 1583189056),
(1, 21, 50, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583189056),
(1, 21, 51, 'col2', '\n<div id="HTMLBlock51" class="HTMLBlock">\nLe corps de l''article</div>', 1583189056),
(1, 21, 53, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583189056),
(1, 21, 54, 'col3', '\n<div id="HTMLBlock54" class="HTMLBlock">\nLe corps de l''article</div>', 1583189056),
(1, 21, 55, 'social', '\n<div id="HTMLBlock55" class="HTMLBlock">\n<h2>Social Media</h2>\r\n</div>', 1583189056),
(1, 21, 56, 'social', '\n<div id="HTMLBlock56" class="HTMLBlock">\nIf you want the news, please subscribe for our social media</div>', 1583189056),
(1, 21, 58, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /></p>', 1583189056),
(1, 21, 59, 'social', '\n<div id="HTMLBlock59" class="HTMLBlock">\nIf you want some news, please subscribe our Newsletter\r\n</div>', 1583189057),
(1, 21, 61, 'contact', '\n<div id="HTMLBlock61" class="HTMLBlock">\n<h2>Contact</h2></div>', 1583189057),
(1, 21, 63, 'actualite', '\n<div id="HTMLBlock63" class="HTMLBlock">\n<h2> News update </h2></div>', 1583189057),
(1, 21, 72, 'actualite', '<p style="text-align: left;"> Voici la new 1  <img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/5214/2533/4501/news1.png" alt="news1.png" width="58" height="62" /></p>', 1583189057),
(1, 21, 74, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/2614/2533/4822/news2.png" alt="news2.png" width="56" height="61" />  News 2</p>', 1583189057),
(1, 21, 75, 'actualite', '<p><img style="float: left;" src="/Concrete5/concrete5.6.3.2/files/4014/2533/4893/firefox.png" alt="firefox.png" width="58" height="62" /> New 3</p>', 1583189057),
(106, 1, 1, 'Header', '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						', 1575906600),
(106, 1, 2, 'Column 1', '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>', 1575906600),
(106, 1, 3, 'Column 2', '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>', 1575906600),
(106, 1, 4, 'Column 3', '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>', 1575906600),
(106, 1, 5, 'Column 4', '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>', 1575906600),
(107, 1, 6, 'Primary', '\n<h1>Bienvenue</h1>\n<br/>\n\n<p><span class="label notice">Mettre à jour concrete5</span> La dernière version de concrete5 est la version <strong>5.6.3.3</strong>, et vous utilisez actuellement la version <strong>5.6.3.2</strong>. <a class="" href="/Concrete5/concrete5.6.3.2/index.php/dashboard/system/backup_restore/update/">En savoir plus et mettre à jour.</a></p>\n\n\n\n', 1425477464),
(107, 1, 8, 'Secondary 1', '<div>\n<h2>Get Involved</h2>\r\n<p><a href="http://www.concrete5.org/developers/submitting-code/marketplace-submission-rules/prb-team/">Join the Peer Review Board</a> and be part of the team that vets add-ons and themes for our marketplace. </p></div>\n\n', 1425398269),
(107, 1, 9, 'Secondary 2', '<div>\n<p class="p1" style="padding-left: 30px;"><br /><br /><a href="http://www.concrete5.org/about/blog/concrete5-sightings/concrete5-7-editor-s-guide-released/" target="_blank"><img src="http://newsflow.concrete5.org/files/3314/1382/7213/5.7_EditorsGuide_1.png" alt="5.7_EditorsGuide_1.png" width="200" height="81" /></a></p></div>\n\n', 1425398269),
(107, 1, 10, 'Secondary 3', '<h6>thèmes vedettes</h6>\n	<div class="clearfix">\n	<img src="http://www.concrete5.org/files/7512/3967/5248/marketplace_thumb.png" width="97" height="97" style="float: left; margin-right: 10px; margin-bottom: 10px" />\n	<h3>LoadFooV2</h3>\n	<p>A clean design, in black, lime, and white</p>\n	</div>\n	\n	<a href="javascript:void(0)" onclick="ccm_getMarketplaceItemDetails(7)" href="http://www.concrete5.org/marketplace/themes/loadfoov2" class="btn">En savoir plus</a>\n', 1425398271),
(107, 1, 11, 'Secondary 4', '<h6>Extensions vedettes</h6>\n	<div class="clearfix">\n	<img src="http://www.concrete5.org/files/3714/0354/6881/core_commerce_icon.png" width="97" height="97" style="float: left; margin-right: 10px; margin-bottom: 10px" />\n	<h3>eCommerce</h3>\n	<p>eCommerce for your concrete5 site. The official eCommerce add-on makes it easy to add and update products.</p>\n	</div>\n	\n	<a href="javascript:void(0)" onclick="ccm_getMarketplaceItemDetails(53)" class="btn">En savoir plus</a>\n', 1425398274);
INSERT INTO `collectionversionblocksoutputcache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(107, 1, 12, 'Secondary 5', '<div>\n<style type="text/css">\n\ndiv.deal-of-day { padding-left: 30px; }\ndiv.deal-of-day p { margin-bottom: 10px;}\ndiv.deal-of-day h4 { margin-bottom: 8px;}\n\n.deal-of-day span.deal-of-day-offer-marketplace-icon { \n	display: block;\n	float: left;\n	width: 40px;\n}\n\n.deal-of-day .deal-of-day-offer-description {\n	\n}\n\n.deal-of-day .deal-of-day-offer-deal-description {\n	display: block;\n	float: right;\n	width: 80%;\n}\n.deal-of-day br { clear: both; }\n\n.deal-of-day .deal-of-day-offer-marketplace-title { display: none;}\n.deal-of-day .deal-of-day-offer-marketplace-description { display: none;}\n\n.deal-of-day .deal-of-day-offer-deal-description span { clear:both; }\n\n.deal-of-day .deal-of-day-offer-addons { \n	font-size: 10px; \n	text-transform: uppercase;\n	color: #999;\n}\n</style>\n\n<div id="deal-of-day-0" class="deal-of-day">\n	<h6>Marketplace Deal of the Day</h6>\n</div></div>\n\n	<div class="newsflow-paging-next"><a href="javascript:void(0)" onclick="ccm_showNewsflowOffsite(341)"><span></span></a></div>\n\n	<script type="text/javascript">\n	$(function() {\n		ccm_setNewsflowPagingArrowHeight();\n	});\n	</script>\n	\n', 1425398275),
(126, 1, 19, 'col1', '\n<div id="HTMLBlock19" class="HTMLBlock">\n<h2>Perfect Logic</h2></div>', 1583160458),
(126, 1, 20, 'col1', '\n<div id="HTMLBlock20" class="HTMLBlock">\nAll you want your website to do</div>', 1583160010),
(126, 1, 21, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583160788),
(126, 1, 22, 'col1', '\n<div id="HTMLBlock22" class="HTMLBlock">\nErat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens</div>', 1583161358),
(126, 1, 23, 'col2', '\n<div id="HTMLBlock23" class="HTMLBlock">\n<h2>Complete Solution</h2></div>', 1583161446),
(126, 1, 24, 'col2', '\n<div id="HTMLBlock24" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583161217),
(126, 1, 25, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583161267),
(126, 1, 26, 'col2', '\n<div id="HTMLBlock26" class="HTMLBlock">\nErat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens</div>', 1583161370),
(126, 1, 27, 'col3', '\n<div id="HTMLBlock27" class="HTMLBlock">\n<h2>Uber Culture</h2></div>', 1583161571),
(126, 1, 28, 'col3', '\n<div id="HTMLBlock28" class="HTMLBlock">\nFresh,Modern and ready for you</div>', 1583161630),
(126, 1, 29, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583161700),
(126, 1, 30, 'col3', '\n<div id="HTMLBlock30" class="HTMLBlock">\nErat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens</div>', 1583161741),
(126, 1, 31, 'Titre', '\n<div id="HTMLBlock31" class="HTMLBlock">\nWelcome on my website</div>', 1583161876),
(126, 1, 32, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper32 = {\n\n	bID:32,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper32.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+32+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper32.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper32.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display32" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter32" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583162258),
(126, 1, 33, 'social', '\n<div id="HTMLBlock33" class="HTMLBlock">\n<h2>Social Media</h2></div>', 1583162492),
(126, 1, 34, 'social', '\n<div id="HTMLBlock34" class="HTMLBlock">\nIf you want to follow us, please click on the differents logos</div>', 1583163008),
(126, 1, 35, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /></p>', 1583163266),
(126, 1, 36, 'social', '\n<div id="HTMLBlock36" class="HTMLBlock">\n<h2>Newsletter</h2></div>', 1583163558),
(126, 1, 37, 'social', '\n<div id="HTMLBlock37" class="HTMLBlock">\nIf you want to be inform about the news, please sign up for our Newletter</div>', 1583163735),
(127, 1, 19, 'col1', '\n<div id="HTMLBlock19" class="HTMLBlock">\n<h2>Perfect Logic</h2></div>', 1583165357),
(127, 1, 20, 'col1', '\n<div id="HTMLBlock20" class="HTMLBlock">\nAll you want your website to do</div>', 1583165357),
(127, 1, 21, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583165358),
(127, 1, 22, 'col1', '\n<div id="HTMLBlock22" class="HTMLBlock">\nErat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens</div>', 1583165358),
(127, 1, 23, 'col2', '\n<div id="HTMLBlock23" class="HTMLBlock">\n<h2>Complete Solution</h2></div>', 1583165358),
(127, 1, 24, 'col2', '\n<div id="HTMLBlock24" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583165358),
(127, 1, 25, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583165358),
(127, 1, 26, 'col2', '\n<div id="HTMLBlock26" class="HTMLBlock">\nErat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens</div>', 1583165358),
(127, 1, 27, 'col3', '\n<div id="HTMLBlock27" class="HTMLBlock">\n<h2>Uber Culture</h2></div>', 1583165358),
(127, 1, 28, 'col3', '\n<div id="HTMLBlock28" class="HTMLBlock">\nFresh,Modern and ready for you</div>', 1583165358),
(127, 1, 29, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583165358),
(127, 1, 30, 'col3', '\n<div id="HTMLBlock30" class="HTMLBlock">\nErat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens</div>', 1583165358),
(127, 1, 31, 'Titre', '\n<div id="HTMLBlock31" class="HTMLBlock">\nWelcome on my website</div>', 1583165357),
(127, 1, 32, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper32 = {\n\n	bID:32,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper32.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+32+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper32.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper32.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display32" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter32" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583165357),
(127, 1, 33, 'social', '\n<div id="HTMLBlock33" class="HTMLBlock">\n<h2>Social Media</h2></div>', 1583165358),
(127, 1, 34, 'social', '\n<div id="HTMLBlock34" class="HTMLBlock">\nIf you want to follow us, please click on the differents logos</div>', 1583165358),
(127, 1, 35, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /></p>', 1583165358),
(127, 1, 36, 'social', '\n<div id="HTMLBlock36" class="HTMLBlock">\n<h2>Newsletter</h2></div>', 1583165358),
(127, 1, 37, 'social', '\n<div id="HTMLBlock37" class="HTMLBlock">\nIf you want to be inform about the news, please sign up for our Newletter</div>', 1583165358),
(127, 2, 87, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/501c7fc0f3797f679774f21368e0bd60_f14.jpg"  width="300" height="200" />', 1583191200),
(127, 2, 88, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/cf39796f1f4bfccdd354b7a866e6a135_f15.jpg"  width="273" height="200" />', 1583191179),
(127, 2, 89, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583191301),
(127, 2, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583191321),
(127, 2, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583191341),
(127, 2, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583191359),
(127, 3, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583191434),
(127, 3, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583191434),
(127, 3, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583191434),
(127, 3, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583191388),
(127, 3, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583191398),
(127, 3, 95, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/801a711e13b7eca27bf63d812e4a8ff1_f16.jpg"  width="300" height="148" />', 1583191426),
(127, 4, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583191487),
(127, 4, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583191487),
(127, 4, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583191487),
(127, 4, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583191487),
(127, 4, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583191487),
(127, 4, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583191513),
(127, 5, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583191631),
(127, 5, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583191631),
(127, 5, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583191631),
(127, 5, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583191631),
(127, 5, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583191631),
(127, 5, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583191631),
(127, 6, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583191674),
(127, 6, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583191675),
(127, 6, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583191675),
(127, 6, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583191674),
(127, 6, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583191674),
(127, 6, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583191675),
(127, 7, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583191931),
(127, 7, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583191931),
(127, 7, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583191931),
(127, 7, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583191931),
(127, 7, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583191931),
(127, 7, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583191931),
(127, 8, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583191993),
(127, 8, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583191993),
(127, 8, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583191993),
(127, 8, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583191993),
(127, 8, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583191993),
(127, 8, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583191993),
(127, 9, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583192034),
(127, 9, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583192034),
(127, 9, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583192034),
(127, 9, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583192034),
(127, 9, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583192034),
(127, 9, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583192034),
(127, 10, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583192067),
(127, 10, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583192067),
(127, 10, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583192067),
(127, 10, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583192067),
(127, 10, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583192067),
(127, 10, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583192067),
(127, 11, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583192095),
(127, 11, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583192095),
(127, 11, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583192095),
(127, 11, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583192095),
(127, 11, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583192095),
(127, 11, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583192095),
(127, 12, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583192144),
(127, 12, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583192144),
(127, 12, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583192144),
(127, 12, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583192144),
(127, 12, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583192144),
(127, 12, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583192144),
(127, 13, 90, 'contenu : Layout 1 : Cell 1', '<p>Ici on trouve des bouteilles d''alcools</p>', 1583192173),
(127, 13, 91, 'contenu : Layout 1 : Cell 2', '<p>Ici on trouve des consoles de jeux</p>', 1583192173),
(127, 13, 92, 'contenu : Layout 1 : Cell 3', '<p>Ici on trouve de la nourriture</p>', 1583192173),
(127, 13, 93, 'contenu : Layout 1 : Cell 1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1290e8521652cf71707658f52aa1e90a_f14.jpg"  width="300" height="200" />', 1583192173),
(127, 13, 94, 'contenu : Layout 1 : Cell 2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/051c5f01d075cd1ba4fe8bfa7a6cb72e_f15.jpg"  width="273" height="200" />', 1583192173),
(127, 13, 96, 'contenu : Layout 1 : Cell 3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/cache/1aff54c22876e45fbdfebe1fe8458b5e_f16.jpg"  width="403" height="200" />', 1583192173),
(128, 1, 19, 'col1', '\n<div id="HTMLBlock19" class="HTMLBlock">\n<h2>Perfect Logic</h2></div>', 1583165426),
(128, 1, 20, 'col1', '\n<div id="HTMLBlock20" class="HTMLBlock">\nAll you want your website to do</div>', 1583165426),
(128, 1, 21, 'col1', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/2614/2530/7302/ImgArticle1.png" width="298" height="189" />', 1583165426),
(128, 1, 22, 'col1', '\n<div id="HTMLBlock22" class="HTMLBlock">\nErat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens</div>', 1583165426),
(128, 1, 23, 'col2', '\n<div id="HTMLBlock23" class="HTMLBlock">\n<h2>Complete Solution</h2></div>', 1583165426),
(128, 1, 24, 'col2', '\n<div id="HTMLBlock24" class="HTMLBlock">\nA tools anything and everything you can think</div>', 1583165426),
(128, 1, 25, 'col2', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/8614/2530/8449/ImgArticle2.png" width="298" height="193" />', 1583165426),
(128, 1, 26, 'col2', '\n<div id="HTMLBlock26" class="HTMLBlock">\nErat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens</div>', 1583165426),
(128, 1, 27, 'col3', '\n<div id="HTMLBlock27" class="HTMLBlock">\n<h2>Uber Culture</h2></div>', 1583165426),
(128, 1, 28, 'col3', '\n<div id="HTMLBlock28" class="HTMLBlock">\nFresh,Modern and ready for you</div>', 1583165426),
(128, 1, 29, 'col3', '<img border="0" class="ccm-image-block" alt="" src="/Concrete5/concrete5.6.3.2/files/7314/2530/8885/ImgArticle3.png" width="298" height="193" />', 1583165426),
(128, 1, 30, 'col3', '\n<div id="HTMLBlock30" class="HTMLBlock">\nErat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens</div>', 1583165426),
(128, 1, 31, 'Titre', '\n<div id="HTMLBlock31" class="HTMLBlock">\nWelcome on my website</div>', 1583165426),
(128, 1, 32, 'banniere', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper32 = {\n\n	bID:32,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper32.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;});			\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+32+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/Concrete5/concrete5.6.3.2/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML=''<img src="''+imgURL+''" >'';\n		el.innerHTML=''<div style="height:''+this.imgInfos[num].imgHeight+''px; background:url(\\''''+escape(imgURL)+''\\'') center no-repeat">&nbsp;</div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper32.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(linkURL){\n		//override for custom behavior\n	},\n	imgInfos:[\n				{\n				fileName:"banniere.png",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/5314/2530/9419/banniere.png",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:339			}\n		,			{\n				fileName:"Formation.jpg",\n				fullFilePath:"/Concrete5/concrete5.6.3.2/files/6514/2530/9439/Formation.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"",\n				groupSet:0,\n				imgHeight:350			}\n			]\n}\n$(function(){ccmSlideShowHelper32.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display32" style="height:350px" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter32" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1583165426),
(128, 1, 33, 'social', '\n<div id="HTMLBlock33" class="HTMLBlock">\n<h2>Social Media</h2></div>', 1583165426),
(128, 1, 34, 'social', '\n<div id="HTMLBlock34" class="HTMLBlock">\nIf you want to follow us, please click on the differents logos</div>', 1583165426),
(128, 1, 35, 'social', '<p><img src="/Concrete5/concrete5.6.3.2/files/8514/2530/9970/LogoFb.PNG" alt="LogoFb.PNG" width="62" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/5914/2530/9997/LogoRss.PNG" alt="LogoRss.PNG" width="62" height="61" /><img src="/Concrete5/concrete5.6.3.2/files/4214/2531/0011/LogoTw.PNG" alt="LogoTw.PNG" width="60" height="64" /><img src="/Concrete5/concrete5.6.3.2/files/5814/2531/0030/LogoYt.PNG" alt="LogoYt.PNG" width="61" height="62" /><img src="/Concrete5/concrete5.6.3.2/files/1214/2530/9982/LogoIn.PNG" alt="LogoIn.PNG" width="59" height="61" /></p>', 1583165426),
(128, 1, 36, 'social', '\n<div id="HTMLBlock36" class="HTMLBlock">\n<h2>Newsletter</h2></div>', 1583165426),
(128, 1, 37, 'social', '\n<div id="HTMLBlock37" class="HTMLBlock">\nIf you want to be inform about the news, please sign up for our Newletter</div>', 1583165426);

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionblockstyles`
--

CREATE TABLE IF NOT EXISTS `collectionversionblockstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `collectionversionblockstyles`
--

INSERT INTO `collectionversionblockstyles` (`cID`, `cvID`, `bID`, `arHandle`, `csrID`) VALUES
(1, 2, 13, 'Header', 2),
(1, 3, 13, 'Header', 3),
(1, 5, 18, 'Header', 11),
(1, 6, 18, 'Header', 11),
(1, 7, 18, 'Header', 11),
(1, 8, 18, 'Header', 11),
(1, 8, 40, 'Titre', 41),
(1, 8, 41, 'banniere', 42),
(1, 9, 18, 'Header', 11),
(1, 9, 40, 'Titre', 41),
(1, 9, 41, 'banniere', 42),
(1, 9, 45, 'col1', 43),
(1, 9, 46, 'col2', 44),
(1, 9, 47, 'col3', 45),
(1, 9, 49, 'col1', 46),
(1, 9, 51, 'col2', 47),
(1, 9, 54, 'col3', 48),
(1, 9, 55, 'social', 50),
(1, 9, 56, 'social', 51),
(1, 9, 58, 'social', 52),
(1, 9, 59, 'social', 53),
(1, 9, 61, 'contact', 54),
(1, 9, 62, 'contact', 57),
(1, 9, 63, 'actualite', 58),
(1, 9, 64, 'actualite', 61),
(1, 9, 65, 'actualite', 62),
(1, 9, 66, 'actualite', 65),
(1, 10, 18, 'Header', 11),
(1, 10, 40, 'Titre', 41),
(1, 10, 41, 'banniere', 42),
(1, 10, 45, 'col1', 43),
(1, 10, 46, 'col2', 44),
(1, 10, 47, 'col3', 45),
(1, 10, 49, 'col1', 46),
(1, 10, 51, 'col2', 47),
(1, 10, 54, 'col3', 48),
(1, 10, 55, 'social', 50),
(1, 10, 56, 'social', 51),
(1, 10, 58, 'social', 52),
(1, 10, 59, 'social', 53),
(1, 10, 61, 'contact', 54),
(1, 10, 63, 'actualite', 58),
(1, 10, 64, 'actualite', 61),
(1, 10, 65, 'actualite', 62),
(1, 10, 66, 'actualite', 65),
(1, 10, 67, 'contact', 57),
(1, 11, 18, 'Header', 11),
(1, 11, 40, 'Titre', 41),
(1, 11, 41, 'banniere', 42),
(1, 11, 45, 'col1', 43),
(1, 11, 46, 'col2', 44),
(1, 11, 47, 'col3', 45),
(1, 11, 49, 'col1', 46),
(1, 11, 51, 'col2', 47),
(1, 11, 54, 'col3', 48),
(1, 11, 55, 'social', 50),
(1, 11, 56, 'social', 51),
(1, 11, 58, 'social', 52),
(1, 11, 59, 'social', 53),
(1, 11, 61, 'contact', 54),
(1, 11, 63, 'actualite', 58),
(1, 11, 64, 'actualite', 61),
(1, 11, 65, 'actualite', 62),
(1, 11, 66, 'actualite', 65),
(1, 11, 67, 'contact', 66),
(1, 12, 18, 'Header', 11),
(1, 12, 40, 'Titre', 41),
(1, 12, 41, 'banniere', 42),
(1, 12, 45, 'col1', 43),
(1, 12, 46, 'col2', 44),
(1, 12, 47, 'col3', 45),
(1, 12, 49, 'col1', 46),
(1, 12, 51, 'col2', 47),
(1, 12, 54, 'col3', 48),
(1, 12, 55, 'social', 50),
(1, 12, 56, 'social', 51),
(1, 12, 58, 'social', 52),
(1, 12, 59, 'social', 53),
(1, 12, 61, 'contact', 54),
(1, 12, 63, 'actualite', 58),
(1, 12, 64, 'actualite', 61),
(1, 12, 65, 'actualite', 62),
(1, 12, 66, 'actualite', 65),
(1, 12, 68, 'contact', 68),
(1, 13, 18, 'Header', 11),
(1, 13, 40, 'Titre', 41),
(1, 13, 41, 'banniere', 42),
(1, 13, 45, 'col1', 43),
(1, 13, 46, 'col2', 44),
(1, 13, 47, 'col3', 45),
(1, 13, 49, 'col1', 46),
(1, 13, 51, 'col2', 47),
(1, 13, 54, 'col3', 48),
(1, 13, 55, 'social', 50),
(1, 13, 56, 'social', 51),
(1, 13, 58, 'social', 52),
(1, 13, 59, 'social', 53),
(1, 13, 61, 'contact', 54),
(1, 13, 63, 'actualite', 58),
(1, 13, 64, 'actualite', 61),
(1, 13, 65, 'actualite', 62),
(1, 13, 66, 'actualite', 65),
(1, 13, 68, 'contact', 69),
(1, 14, 18, 'Header', 11),
(1, 14, 40, 'Titre', 41),
(1, 14, 41, 'banniere', 42),
(1, 14, 45, 'col1', 43),
(1, 14, 46, 'col2', 44),
(1, 14, 47, 'col3', 45),
(1, 14, 49, 'col1', 46),
(1, 14, 51, 'col2', 47),
(1, 14, 54, 'col3', 48),
(1, 14, 55, 'social', 50),
(1, 14, 56, 'social', 51),
(1, 14, 58, 'social', 52),
(1, 14, 59, 'social', 53),
(1, 14, 61, 'contact', 54),
(1, 14, 63, 'actualite', 58),
(1, 14, 64, 'actualite', 61),
(1, 14, 65, 'actualite', 62),
(1, 14, 66, 'actualite', 65),
(1, 14, 69, 'contact', 70),
(1, 15, 18, 'Header', 11),
(1, 15, 40, 'Titre', 41),
(1, 15, 41, 'banniere', 42),
(1, 15, 45, 'col1', 43),
(1, 15, 46, 'col2', 44),
(1, 15, 47, 'col3', 45),
(1, 15, 49, 'col1', 46),
(1, 15, 51, 'col2', 47),
(1, 15, 54, 'col3', 48),
(1, 15, 55, 'social', 50),
(1, 15, 56, 'social', 51),
(1, 15, 58, 'social', 52),
(1, 15, 59, 'social', 53),
(1, 15, 61, 'contact', 54),
(1, 15, 63, 'actualite', 58),
(1, 15, 65, 'actualite', 62),
(1, 15, 66, 'actualite', 65),
(1, 15, 69, 'contact', 70),
(1, 15, 70, 'actualite', 71),
(1, 16, 18, 'Header', 11),
(1, 16, 40, 'Titre', 41),
(1, 16, 41, 'banniere', 42),
(1, 16, 45, 'col1', 43),
(1, 16, 46, 'col2', 44),
(1, 16, 47, 'col3', 45),
(1, 16, 49, 'col1', 46),
(1, 16, 51, 'col2', 47),
(1, 16, 54, 'col3', 48),
(1, 16, 55, 'social', 50),
(1, 16, 56, 'social', 51),
(1, 16, 58, 'social', 52),
(1, 16, 59, 'social', 53),
(1, 16, 61, 'contact', 54),
(1, 16, 63, 'actualite', 58),
(1, 16, 66, 'actualite', 65),
(1, 16, 69, 'contact', 70),
(1, 16, 70, 'actualite', 72),
(1, 16, 71, 'actualite', 73),
(1, 17, 18, 'Header', 11),
(1, 17, 40, 'Titre', 41),
(1, 17, 41, 'banniere', 42),
(1, 17, 45, 'col1', 43),
(1, 17, 46, 'col2', 44),
(1, 17, 47, 'col3', 45),
(1, 17, 49, 'col1', 46),
(1, 17, 51, 'col2', 47),
(1, 17, 54, 'col3', 48),
(1, 17, 55, 'social', 50),
(1, 17, 56, 'social', 51),
(1, 17, 58, 'social', 52),
(1, 17, 59, 'social', 53),
(1, 17, 61, 'contact', 54),
(1, 17, 63, 'actualite', 58),
(1, 17, 69, 'contact', 70),
(1, 17, 71, 'actualite', 73),
(1, 17, 72, 'actualite', 74),
(1, 17, 73, 'actualite', 75),
(1, 18, 18, 'Header', 11),
(1, 18, 40, 'Titre', 41),
(1, 18, 41, 'banniere', 42),
(1, 18, 45, 'col1', 43),
(1, 18, 46, 'col2', 44),
(1, 18, 47, 'col3', 45),
(1, 18, 49, 'col1', 46),
(1, 18, 51, 'col2', 47),
(1, 18, 54, 'col3', 48),
(1, 18, 55, 'social', 50),
(1, 18, 56, 'social', 51),
(1, 18, 58, 'social', 52),
(1, 18, 59, 'social', 53),
(1, 18, 61, 'contact', 54),
(1, 18, 63, 'actualite', 58),
(1, 18, 69, 'contact', 70),
(1, 18, 72, 'actualite', 76),
(1, 18, 74, 'actualite', 77),
(1, 18, 75, 'actualite', 78),
(1, 19, 18, 'Header', 11),
(1, 19, 40, 'Titre', 41),
(1, 19, 41, 'banniere', 42),
(1, 19, 45, 'col1', 43),
(1, 19, 46, 'col2', 44),
(1, 19, 47, 'col3', 45),
(1, 19, 49, 'col1', 46),
(1, 19, 51, 'col2', 47),
(1, 19, 54, 'col3', 48),
(1, 19, 55, 'social', 50),
(1, 19, 56, 'social', 51),
(1, 19, 58, 'social', 52),
(1, 19, 59, 'social', 53),
(1, 19, 61, 'contact', 54),
(1, 19, 63, 'actualite', 58),
(1, 19, 69, 'contact', 70),
(1, 19, 72, 'actualite', 76),
(1, 19, 74, 'actualite', 77),
(1, 19, 75, 'actualite', 78),
(1, 19, 76, 'social', 79),
(1, 20, 18, 'Header', 11),
(1, 20, 40, 'Titre', 41),
(1, 20, 41, 'banniere', 42),
(1, 20, 45, 'col1', 43),
(1, 20, 46, 'col2', 44),
(1, 20, 47, 'col3', 45),
(1, 20, 49, 'col1', 46),
(1, 20, 51, 'col2', 47),
(1, 20, 54, 'col3', 48),
(1, 20, 55, 'social', 50),
(1, 20, 56, 'social', 51),
(1, 20, 58, 'social', 52),
(1, 20, 59, 'social', 53),
(1, 20, 61, 'contact', 54),
(1, 20, 63, 'actualite', 58),
(1, 20, 72, 'actualite', 76),
(1, 20, 74, 'actualite', 77),
(1, 20, 75, 'actualite', 78),
(1, 20, 76, 'social', 80),
(1, 20, 77, 'contact', 81),
(1, 21, 18, 'Header', 11),
(1, 21, 40, 'Titre', 41),
(1, 21, 41, 'banniere', 42),
(1, 21, 45, 'col1', 43),
(1, 21, 46, 'col2', 44),
(1, 21, 47, 'col3', 45),
(1, 21, 49, 'col1', 46),
(1, 21, 51, 'col2', 47),
(1, 21, 54, 'col3', 48),
(1, 21, 55, 'social', 50),
(1, 21, 56, 'social', 51),
(1, 21, 58, 'social', 52),
(1, 21, 59, 'social', 53),
(1, 21, 61, 'contact', 54),
(1, 21, 63, 'actualite', 58),
(1, 21, 72, 'actualite', 76),
(1, 21, 74, 'actualite', 77),
(1, 21, 75, 'actualite', 78),
(1, 21, 76, 'social', 80),
(1, 21, 77, 'contact', 81),
(1, 21, 78, 'Menu', 82),
(126, 1, 19, 'col1', 14),
(126, 1, 20, 'col1', 13),
(126, 1, 21, 'col1', 18),
(126, 1, 22, 'col1', 22),
(126, 1, 24, 'col2', 24),
(126, 1, 25, 'col2', 25),
(126, 1, 26, 'col2', 23),
(126, 1, 28, 'col3', 26),
(126, 1, 30, 'col3', 27),
(126, 1, 31, 'Titre', 28),
(126, 1, 32, 'banniere', 29),
(126, 1, 33, 'social', 40),
(126, 1, 34, 'social', 31),
(126, 1, 35, 'social', 35),
(126, 1, 36, 'social', 37),
(126, 1, 37, 'social', 38),
(126, 1, 38, 'social', 39),
(127, 1, 19, 'col1', 14),
(127, 1, 20, 'col1', 13),
(127, 1, 21, 'col1', 18),
(127, 1, 22, 'col1', 22),
(127, 1, 24, 'col2', 24),
(127, 1, 25, 'col2', 25),
(127, 1, 26, 'col2', 23),
(127, 1, 28, 'col3', 26),
(127, 1, 30, 'col3', 27),
(127, 1, 31, 'Titre', 28),
(127, 1, 32, 'banniere', 29),
(127, 1, 33, 'social', 40),
(127, 1, 34, 'social', 31),
(127, 1, 35, 'social', 35),
(127, 1, 36, 'social', 37),
(127, 1, 37, 'social', 38),
(127, 1, 38, 'social', 39),
(127, 2, 19, 'col1', 14),
(127, 2, 20, 'col1', 13),
(127, 2, 21, 'col1', 18),
(127, 2, 22, 'col1', 22),
(127, 2, 24, 'col2', 24),
(127, 2, 25, 'col2', 25),
(127, 2, 26, 'col2', 23),
(127, 2, 28, 'col3', 26),
(127, 2, 30, 'col3', 27),
(127, 2, 31, 'Titre', 28),
(127, 2, 32, 'banniere', 29),
(127, 2, 33, 'social', 40),
(127, 2, 34, 'social', 31),
(127, 2, 35, 'social', 35),
(127, 2, 36, 'social', 37),
(127, 2, 37, 'social', 38),
(127, 2, 38, 'social', 39),
(127, 2, 86, 'Menu', 85),
(127, 3, 19, 'col1', 14),
(127, 3, 20, 'col1', 13),
(127, 3, 21, 'col1', 18),
(127, 3, 22, 'col1', 22),
(127, 3, 24, 'col2', 24),
(127, 3, 25, 'col2', 25),
(127, 3, 26, 'col2', 23),
(127, 3, 28, 'col3', 26),
(127, 3, 30, 'col3', 27),
(127, 3, 31, 'Titre', 28),
(127, 3, 32, 'banniere', 29),
(127, 3, 33, 'social', 40),
(127, 3, 34, 'social', 31),
(127, 3, 35, 'social', 35),
(127, 3, 36, 'social', 37),
(127, 3, 37, 'social', 38),
(127, 3, 38, 'social', 39),
(127, 3, 86, 'Menu', 85),
(127, 4, 19, 'col1', 14),
(127, 4, 20, 'col1', 13),
(127, 4, 21, 'col1', 18),
(127, 4, 22, 'col1', 22),
(127, 4, 24, 'col2', 24),
(127, 4, 25, 'col2', 25),
(127, 4, 26, 'col2', 23),
(127, 4, 28, 'col3', 26),
(127, 4, 30, 'col3', 27),
(127, 4, 31, 'Titre', 28),
(127, 4, 32, 'banniere', 29),
(127, 4, 33, 'social', 40),
(127, 4, 34, 'social', 31),
(127, 4, 35, 'social', 35),
(127, 4, 36, 'social', 37),
(127, 4, 37, 'social', 38),
(127, 4, 38, 'social', 39),
(127, 4, 86, 'Menu', 85),
(127, 5, 19, 'col1', 14),
(127, 5, 20, 'col1', 13),
(127, 5, 21, 'col1', 18),
(127, 5, 22, 'col1', 22),
(127, 5, 24, 'col2', 24),
(127, 5, 25, 'col2', 25),
(127, 5, 26, 'col2', 23),
(127, 5, 28, 'col3', 26),
(127, 5, 30, 'col3', 27),
(127, 5, 31, 'Titre', 28),
(127, 5, 32, 'banniere', 29),
(127, 5, 33, 'social', 40),
(127, 5, 34, 'social', 31),
(127, 5, 35, 'social', 35),
(127, 5, 36, 'social', 37),
(127, 5, 37, 'social', 38),
(127, 5, 38, 'social', 39),
(127, 5, 86, 'Menu', 85),
(127, 5, 97, 'contenu', 86),
(127, 6, 19, 'col1', 14),
(127, 6, 20, 'col1', 13),
(127, 6, 21, 'col1', 18),
(127, 6, 22, 'col1', 22),
(127, 6, 24, 'col2', 24),
(127, 6, 25, 'col2', 25),
(127, 6, 26, 'col2', 23),
(127, 6, 28, 'col3', 26),
(127, 6, 30, 'col3', 27),
(127, 6, 31, 'Titre', 28),
(127, 6, 32, 'banniere', 29),
(127, 6, 33, 'social', 40),
(127, 6, 34, 'social', 31),
(127, 6, 35, 'social', 35),
(127, 6, 36, 'social', 37),
(127, 6, 37, 'social', 38),
(127, 6, 38, 'social', 39),
(127, 6, 86, 'Menu', 85),
(127, 6, 98, 'contenu', 86),
(127, 7, 19, 'col1', 14),
(127, 7, 20, 'col1', 13),
(127, 7, 21, 'col1', 18),
(127, 7, 22, 'col1', 22),
(127, 7, 24, 'col2', 24),
(127, 7, 25, 'col2', 25),
(127, 7, 26, 'col2', 23),
(127, 7, 28, 'col3', 26),
(127, 7, 30, 'col3', 27),
(127, 7, 31, 'Titre', 28),
(127, 7, 32, 'banniere', 29),
(127, 7, 33, 'social', 40),
(127, 7, 34, 'social', 31),
(127, 7, 35, 'social', 35),
(127, 7, 36, 'social', 37),
(127, 7, 37, 'social', 38),
(127, 7, 38, 'social', 39),
(127, 7, 86, 'Menu', 85),
(127, 7, 99, 'contenu', 87),
(127, 8, 19, 'col1', 14),
(127, 8, 20, 'col1', 13),
(127, 8, 21, 'col1', 18),
(127, 8, 22, 'col1', 22),
(127, 8, 24, 'col2', 24),
(127, 8, 25, 'col2', 25),
(127, 8, 26, 'col2', 23),
(127, 8, 28, 'col3', 26),
(127, 8, 30, 'col3', 27),
(127, 8, 31, 'Titre', 28),
(127, 8, 32, 'banniere', 29),
(127, 8, 33, 'social', 40),
(127, 8, 34, 'social', 31),
(127, 8, 35, 'social', 35),
(127, 8, 36, 'social', 37),
(127, 8, 37, 'social', 38),
(127, 8, 38, 'social', 39),
(127, 8, 86, 'Menu', 85),
(127, 8, 99, 'contenu', 88),
(127, 9, 19, 'col1', 14),
(127, 9, 20, 'col1', 13),
(127, 9, 21, 'col1', 18),
(127, 9, 22, 'col1', 22),
(127, 9, 24, 'col2', 24),
(127, 9, 25, 'col2', 25),
(127, 9, 26, 'col2', 23),
(127, 9, 28, 'col3', 26),
(127, 9, 30, 'col3', 27),
(127, 9, 31, 'Titre', 28),
(127, 9, 32, 'banniere', 29),
(127, 9, 33, 'social', 40),
(127, 9, 34, 'social', 31),
(127, 9, 35, 'social', 35),
(127, 9, 36, 'social', 37),
(127, 9, 37, 'social', 38),
(127, 9, 38, 'social', 39),
(127, 9, 86, 'Menu', 85),
(127, 9, 100, 'contenu', 89),
(127, 10, 19, 'col1', 14),
(127, 10, 20, 'col1', 13),
(127, 10, 21, 'col1', 18),
(127, 10, 22, 'col1', 22),
(127, 10, 24, 'col2', 24),
(127, 10, 25, 'col2', 25),
(127, 10, 26, 'col2', 23),
(127, 10, 28, 'col3', 26),
(127, 10, 30, 'col3', 27),
(127, 10, 31, 'Titre', 28),
(127, 10, 32, 'banniere', 29),
(127, 10, 33, 'social', 40),
(127, 10, 34, 'social', 31),
(127, 10, 35, 'social', 35),
(127, 10, 36, 'social', 37),
(127, 10, 37, 'social', 38),
(127, 10, 38, 'social', 39),
(127, 10, 86, 'Menu', 85),
(127, 10, 101, 'contenu', 89),
(127, 11, 19, 'col1', 14),
(127, 11, 20, 'col1', 13),
(127, 11, 21, 'col1', 18),
(127, 11, 22, 'col1', 22),
(127, 11, 24, 'col2', 24),
(127, 11, 25, 'col2', 25),
(127, 11, 26, 'col2', 23),
(127, 11, 28, 'col3', 26),
(127, 11, 30, 'col3', 27),
(127, 11, 31, 'Titre', 28),
(127, 11, 32, 'banniere', 29),
(127, 11, 33, 'social', 40),
(127, 11, 34, 'social', 31),
(127, 11, 35, 'social', 35),
(127, 11, 36, 'social', 37),
(127, 11, 37, 'social', 38),
(127, 11, 38, 'social', 39),
(127, 11, 86, 'Menu', 85),
(127, 11, 101, 'contenu', 90),
(127, 12, 19, 'col1', 14),
(127, 12, 20, 'col1', 13),
(127, 12, 21, 'col1', 18),
(127, 12, 22, 'col1', 22),
(127, 12, 24, 'col2', 24),
(127, 12, 25, 'col2', 25),
(127, 12, 26, 'col2', 23),
(127, 12, 28, 'col3', 26),
(127, 12, 30, 'col3', 27),
(127, 12, 31, 'Titre', 28),
(127, 12, 32, 'banniere', 29),
(127, 12, 33, 'social', 40),
(127, 12, 34, 'social', 31),
(127, 12, 35, 'social', 35),
(127, 12, 36, 'social', 37),
(127, 12, 37, 'social', 38),
(127, 12, 38, 'social', 39),
(127, 12, 86, 'Menu', 85),
(127, 12, 101, 'contenu', 90),
(127, 13, 19, 'col1', 14),
(127, 13, 20, 'col1', 13),
(127, 13, 21, 'col1', 18),
(127, 13, 22, 'col1', 22),
(127, 13, 24, 'col2', 24),
(127, 13, 25, 'col2', 25),
(127, 13, 26, 'col2', 23),
(127, 13, 28, 'col3', 26),
(127, 13, 30, 'col3', 27),
(127, 13, 31, 'Titre', 28),
(127, 13, 32, 'banniere', 29),
(127, 13, 33, 'social', 40),
(127, 13, 34, 'social', 31),
(127, 13, 35, 'social', 35),
(127, 13, 36, 'social', 37),
(127, 13, 37, 'social', 38),
(127, 13, 38, 'social', 39),
(127, 13, 86, 'Menu', 85),
(127, 13, 103, 'contenu : Layout 1 : Cell 5', 91),
(128, 1, 19, 'col1', 14),
(128, 1, 20, 'col1', 13),
(128, 1, 21, 'col1', 18),
(128, 1, 22, 'col1', 22),
(128, 1, 24, 'col2', 24),
(128, 1, 25, 'col2', 25),
(128, 1, 26, 'col2', 23),
(128, 1, 28, 'col3', 26),
(128, 1, 30, 'col3', 27),
(128, 1, 31, 'Titre', 28),
(128, 1, 32, 'banniere', 29),
(128, 1, 33, 'social', 40),
(128, 1, 34, 'social', 31),
(128, 1, 35, 'social', 35),
(128, 1, 36, 'social', 37),
(128, 1, 37, 'social', 38),
(128, 1, 38, 'social', 39),
(129, 2, 104, 'Menu', 92),
(129, 2, 105, 'contenu', 93),
(129, 3, 104, 'Menu', 92),
(129, 3, 106, 'contenu', 95),
(130, 2, 84, 'Menu', 84),
(131, 2, 79, 'Menu', 83),
(131, 3, 79, 'Menu', 83),
(131, 4, 79, 'Menu', 83),
(131, 5, 79, 'Menu', 83),
(131, 6, 79, 'Menu', 83);

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionrelatededits`
--

CREATE TABLE IF NOT EXISTS `collectionversionrelatededits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectionversions`
--

CREATE TABLE IF NOT EXISTS `collectionversions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `collectionversions`
--

INSERT INTO `collectionversions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `ptID`, `ctID`, `cvActivateDatetime`) VALUES
(1, 1, 'Home', 'home', '', '2014-12-09 15:43:42', '2014-12-09 15:43:42', 'Initial Version', 0, 0, 1, NULL, 18, 4, NULL),
(1, 2, 'Home', 'home', '', '2014-12-09 15:43:42', '2014-12-09 16:00:07', 'Version 2', 0, 0, 1, 1, 18, 4, NULL),
(1, 3, 'Home', 'home', '', '2014-12-09 15:43:42', '2014-12-09 16:13:56', 'Version 3', 0, 0, 1, 1, 18, 4, NULL),
(1, 4, 'Home', 'home', '', '2014-12-09 15:43:42', '2014-12-09 16:15:00', 'Nouvelle version 4', 0, 0, 1, 1, 18, 4, NULL),
(1, 5, 'Home', 'home', '', '2014-12-09 15:43:42', '2014-12-09 16:30:34', 'Version 5', 0, 0, 1, 1, 18, 4, NULL),
(1, 6, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 14:25:03', 'Version 6', 0, 0, 1, 1, 18, 6, NULL),
(1, 7, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 16:02:28', 'Version 7', 0, 0, 1, 1, 18, 6, NULL),
(1, 8, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 16:04:15', 'Version 8', 0, 0, 1, 1, 18, 6, NULL),
(1, 9, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 16:11:44', 'Version 9', 0, 0, 1, 1, 18, 6, NULL),
(1, 10, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:27:33', 'Version 10', 0, 0, 1, NULL, 18, 6, NULL),
(1, 11, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:28:10', 'Version 11', 0, 0, 1, NULL, 18, 6, NULL),
(1, 12, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:28:56', 'Version 12', 0, 0, 1, NULL, 18, 6, NULL),
(1, 13, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:31:58', 'Version 13', 0, 0, 1, NULL, 18, 6, NULL),
(1, 14, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:32:32', 'Version 14', 0, 0, 1, NULL, 18, 6, NULL),
(1, 15, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:33:17', 'Version 15', 0, 0, 1, NULL, 18, 6, NULL),
(1, 16, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:35:21', 'Version 16', 0, 0, 1, NULL, 18, 6, NULL),
(1, 17, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:36:33', 'Version 17', 0, 0, 1, 1, 18, 6, NULL),
(1, 18, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:38:11', 'Version 18', 0, 0, 1, 1, 18, 6, NULL),
(1, 19, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:39:32', 'Version 19', 0, 0, 1, NULL, 18, 6, NULL),
(1, 20, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:40:12', 'Version 20', 0, 0, 1, 1, 18, 6, NULL),
(1, 21, 'Home', 'home', '', '2014-12-09 15:43:42', '2015-03-02 22:43:44', 'Version 21', 1, 0, 1, 1, 18, 6, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2014-12-09 15:44:14', '2014-12-09 15:44:14', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(3, 1, 'Composer', 'composer', 'Write for your site.', '2014-12-09 15:44:18', '2014-12-09 15:44:18', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(4, 1, 'Write', 'write', '', '2014-12-09 15:44:19', '2014-12-09 15:44:19', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(5, 1, 'Drafts', 'drafts', '', '2014-12-09 15:44:19', '2014-12-09 15:44:19', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(6, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2014-12-09 15:44:19', '2014-12-09 15:44:19', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(7, 1, 'Full Sitemap', 'full', '', '2014-12-09 15:44:20', '2014-12-09 15:44:20', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(8, 1, 'Flat View', 'explore', '', '2014-12-09 15:44:20', '2014-12-09 15:44:20', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(9, 1, 'Page Search', 'search', '', '2014-12-09 15:44:21', '2014-12-09 15:44:21', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(10, 1, 'Files', 'files', 'All documents and images.', '2014-12-09 15:44:21', '2014-12-09 15:44:21', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(11, 1, 'File Manager', 'search', '', '2014-12-09 15:44:21', '2014-12-09 15:44:21', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(12, 1, 'Attributes', 'attributes', '', '2014-12-09 15:44:22', '2014-12-09 15:44:22', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(13, 1, 'File Sets', 'sets', '', '2014-12-09 15:44:22', '2014-12-09 15:44:22', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(14, 1, 'Add File Set', 'add_set', '', '2014-12-09 15:44:23', '2014-12-09 15:44:23', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(15, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2014-12-09 15:44:23', '2014-12-09 15:44:23', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(16, 1, 'Search Users', 'search', '', '2014-12-09 15:44:24', '2014-12-09 15:44:24', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(17, 1, 'User Groups', 'groups', '', '2014-12-09 15:44:24', '2014-12-09 15:44:24', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(18, 1, 'Attributes', 'attributes', '', '2014-12-09 15:44:25', '2014-12-09 15:44:25', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(19, 1, 'Add User', 'add', '', '2014-12-09 15:44:25', '2014-12-09 15:44:25', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(20, 1, 'Add Group', 'add_group', '', '2014-12-09 15:44:26', '2014-12-09 15:44:26', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(21, 1, 'Group Sets', 'group_sets', '', '2014-12-09 15:44:26', '2014-12-09 15:44:26', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(22, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2014-12-09 15:44:27', '2014-12-09 15:44:27', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(23, 1, 'Statistics', 'statistics', 'View your site activity.', '2014-12-09 15:44:27', '2014-12-09 15:44:27', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2014-12-09 15:44:28', '2014-12-09 15:44:28', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2014-12-09 15:44:28', '2014-12-09 15:44:28', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2014-12-09 15:44:29', '2014-12-09 15:44:29', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2014-12-09 15:44:29', '2014-12-09 15:44:29', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2014-12-09 15:44:30', '2014-12-09 15:44:30', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(29, 1, 'Add', 'add', '', '2014-12-09 15:44:30', '2014-12-09 15:44:30', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(30, 1, 'Inspect', 'inspect', '', '2014-12-09 15:44:31', '2014-12-09 15:44:31', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(31, 1, 'Customize', 'customize', '', '2014-12-09 15:44:31', '2014-12-09 15:44:31', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(32, 1, 'Page Types', 'types', 'What goes in your site.', '2014-12-09 15:44:32', '2014-12-09 15:44:32', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(33, 1, 'Add Page Type', 'add', 'Add page types to your site.', '2014-12-09 15:44:32', '2014-12-09 15:44:32', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(34, 1, 'Attributes', 'attributes', '', '2014-12-09 15:44:33', '2014-12-09 15:44:33', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(35, 1, 'Single Pages', 'single', '', '2014-12-09 15:44:33', '2014-12-09 15:44:33', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(36, 1, 'Workflow', 'workflow', '', '2014-12-09 15:44:34', '2014-12-09 15:44:34', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(37, 1, 'Workflow List', 'list', '', '2014-12-09 15:44:34', '2014-12-09 15:44:34', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(38, 1, 'Waiting for Me', 'me', '', '2014-12-09 15:44:35', '2014-12-09 15:44:35', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(39, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2014-12-09 15:44:35', '2014-12-09 15:44:35', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(40, 1, 'Stacks', 'stacks', 'Share content across your site.', '2014-12-09 15:44:36', '2014-12-09 15:44:36', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(41, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2014-12-09 15:44:36', '2014-12-09 15:44:36', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(42, 1, 'Stack List', 'list', '', '2014-12-09 15:44:37', '2014-12-09 15:44:37', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(43, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2014-12-09 15:44:38', '2014-12-09 15:44:38', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(44, 1, 'Extend concrete5', 'extend', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '2014-12-09 15:44:39', '2014-12-09 15:44:39', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(45, 1, 'Dashboard', 'news', '', '2014-12-09 15:44:39', '2014-12-09 15:44:39', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(46, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2014-12-09 15:44:40', '2014-12-09 15:44:40', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(47, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2014-12-09 15:44:40', '2014-12-09 15:44:40', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(48, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2014-12-09 15:44:41', '2014-12-09 15:44:41', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(49, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2014-12-09 15:44:41', '2014-12-09 15:44:41', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(50, 1, 'Get More Add-Ons', 'add-ons', 'Download add-ons from concrete5.org.', '2014-12-09 15:44:42', '2014-12-09 15:44:42', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(51, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2014-12-09 15:44:42', '2014-12-09 15:44:42', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(52, 1, 'Basics', 'basics', 'Basic information about your website.', '2014-12-09 15:44:43', '2014-12-09 15:44:43', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(53, 1, 'Site Name', 'site_name', '', '2014-12-09 15:44:43', '2014-12-09 15:44:43', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(54, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2014-12-09 15:44:44', '2014-12-09 15:44:44', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(55, 1, 'Rich Text Editor', 'editor', '', '2014-12-09 15:44:44', '2014-12-09 15:44:44', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(56, 1, 'Languages', 'multilingual', '', '2014-12-09 15:44:45', '2014-12-09 15:44:45', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(57, 1, 'Time Zone', 'timezone', '', '2014-12-09 15:44:45', '2014-12-09 15:44:45', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(58, 1, 'Interface Preferences', 'interface', '', '2014-12-09 15:44:46', '2014-12-09 15:44:46', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(59, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs, statistics and tracking codes.', '2014-12-09 15:44:46', '2014-12-09 15:44:46', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(60, 1, 'Pretty URLs', 'urls', '', '2014-12-09 15:44:47', '2014-12-09 15:44:47', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(61, 1, 'Bulk SEO Updater', 'bulk_seo_tool', '', '2014-12-09 15:44:47', '2014-12-09 15:44:47', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(62, 1, 'Tracking Codes', 'tracking_codes', '', '2014-12-09 15:44:48', '2014-12-09 15:44:48', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(63, 1, 'Excluded URL Word List', 'excluded', '', '2014-12-09 15:44:48', '2014-12-09 15:44:48', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(64, 1, 'Statistics', 'statistics', '', '2014-12-09 15:44:49', '2014-12-09 15:44:49', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(65, 1, 'Search Index', 'search_index', '', '2014-12-09 15:44:49', '2014-12-09 15:44:49', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(66, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2014-12-09 15:44:50', '2014-12-09 15:44:50', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(67, 1, 'Cache & Speed Settings', 'cache', '', '2014-12-09 15:44:51', '2014-12-09 15:44:51', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(68, 1, 'Clear Cache', 'clear_cache', '', '2014-12-09 15:44:51', '2014-12-09 15:44:51', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(69, 1, 'Automated Jobs', 'jobs', '', '2014-12-09 15:44:51', '2014-12-09 15:44:51', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(70, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2014-12-09 15:44:52', '2014-12-09 15:44:52', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(71, 1, 'Site Access', 'site', '', '2014-12-09 15:44:52', '2014-12-09 15:44:52', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(72, 1, 'File Manager Permissions', 'files', '', '2014-12-09 15:44:53', '2014-12-09 15:44:53', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(73, 1, 'Allowed File Types', 'file_types', '', '2014-12-09 15:44:53', '2014-12-09 15:44:53', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(74, 1, 'Task Permissions', 'tasks', '', '2014-12-09 15:44:54', '2014-12-09 15:44:54', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(75, 1, 'User Permissions', 'users', '', '2014-12-09 15:44:54', '2014-12-09 15:44:54', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(76, 1, 'Advanced Permissions', 'advanced', '', '2014-12-09 15:44:55', '2014-12-09 15:44:55', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(77, 1, 'IP Blacklist', 'ip_blacklist', '', '2014-12-09 15:44:55', '2014-12-09 15:44:55', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(78, 1, 'Captcha Setup', 'captcha', '', '2014-12-09 15:44:56', '2014-12-09 15:44:56', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(79, 1, 'Spam Control', 'antispam', '', '2014-12-09 15:44:57', '2014-12-09 15:44:57', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(80, 1, 'Maintenance Mode', 'maintenance_mode', '', '2014-12-09 15:44:57', '2014-12-09 15:44:57', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(81, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2014-12-09 15:44:58', '2014-12-09 15:44:58', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(82, 1, 'Login Destination', 'postlogin', '', '2014-12-09 15:44:59', '2014-12-09 15:44:59', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(83, 1, 'Public Profiles', 'profiles', '', '2014-12-09 15:44:59', '2014-12-09 15:44:59', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(84, 1, 'Public Registration', 'public_registration', '', '2014-12-09 15:44:59', '2014-12-09 15:44:59', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(85, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2014-12-09 15:45:00', '2014-12-09 15:45:00', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(86, 1, 'SMTP Method', 'method', '', '2014-12-09 15:45:01', '2014-12-09 15:45:01', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(87, 1, 'Test Mail Settings', 'test_settings', '', '2014-12-09 15:45:02', '2014-12-09 15:45:02', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(88, 1, 'Email Importers', 'importers', '', '2014-12-09 15:45:02', '2014-12-09 15:45:02', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(89, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2014-12-09 15:45:03', '2014-12-09 15:45:03', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(90, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2014-12-09 15:45:03', '2014-12-09 15:45:03', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(91, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2014-12-09 15:45:04', '2014-12-09 15:45:04', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(92, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2014-12-09 15:45:04', '2014-12-09 15:45:04', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(93, 1, 'Environment Information', 'info', '', '2014-12-09 15:45:05', '2014-12-09 15:45:05', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(94, 1, 'Debug Settings', 'debug', '', '2014-12-09 15:45:06', '2014-12-09 15:45:06', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(95, 1, 'Logging Settings', 'logging', '', '2014-12-09 15:45:06', '2014-12-09 15:45:06', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(96, 1, 'File Storage Locations', 'file_storage_locations', '', '2014-12-09 15:45:07', '2014-12-09 15:45:07', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(97, 1, 'Proxy Server', 'proxy', '', '2014-12-09 15:45:07', '2014-12-09 15:45:07', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(98, 1, 'Backup & Restore', 'backup_restore', 'Backup or restore your website.', '2014-12-09 15:45:08', '2014-12-09 15:45:08', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(99, 1, 'Backup Database', 'backup', '', '2014-12-09 15:45:08', '2014-12-09 15:45:08', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(100, 1, 'Update concrete5', 'update', '', '2014-12-09 15:45:09', '2014-12-09 15:45:09', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(101, 1, 'Database XML', 'database', '', '2014-12-09 15:45:09', '2014-12-09 15:45:09', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(102, 1, 'Composer', 'composer', '', '2014-12-09 15:45:10', '2014-12-09 15:45:10', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(103, 1, '', NULL, NULL, '2014-12-09 15:45:10', '2014-12-09 15:45:10', 'Initial Version', 1, 0, NULL, NULL, 0, 1, NULL),
(104, 1, '', NULL, NULL, '2014-12-09 15:45:10', '2014-12-09 15:45:10', 'Initial Version', 1, 0, NULL, NULL, 0, 2, NULL),
(105, 1, '', NULL, NULL, '2014-12-09 15:45:10', '2014-12-09 15:45:10', 'Initial Version', 1, 0, NULL, NULL, 0, 3, NULL),
(106, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2014-12-09 15:45:11', '2014-12-09 15:45:11', 'Initial Version', 1, 0, 1, NULL, 18, 3, NULL),
(107, 1, 'Customize Dashboard Home', 'home', '', '2014-12-09 15:45:12', '2014-12-09 15:45:12', 'Initial Version', 1, 0, 1, NULL, 18, 2, NULL),
(108, 1, 'Drafts', '!drafts', '', '2014-12-09 15:45:37', '2014-12-09 15:45:37', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(109, 1, 'Trash', '!trash', '', '2014-12-09 15:45:37', '2014-12-09 15:45:37', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(110, 1, 'Stacks', '!stacks', '', '2014-12-09 15:45:38', '2014-12-09 15:45:38', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(111, 1, 'Login', 'login', '', '2014-12-09 15:45:39', '2014-12-09 15:45:39', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(112, 1, 'Register', 'register', '', '2014-12-09 15:45:41', '2014-12-09 15:45:41', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(113, 1, 'Profile', 'profile', '', '2014-12-09 15:45:43', '2014-12-09 15:45:43', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(114, 1, 'Edit', 'edit', '', '2014-12-09 15:45:43', '2014-12-09 15:45:43', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(115, 1, 'Avatar', 'avatar', '', '2014-12-09 15:45:44', '2014-12-09 15:45:44', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(116, 1, 'Messages', 'messages', '', '2014-12-09 15:45:45', '2014-12-09 15:45:45', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(117, 1, 'Friends', 'friends', '', '2014-12-09 15:45:45', '2014-12-09 15:45:45', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(118, 1, 'Page Not Found', 'page_not_found', '', '2014-12-09 15:45:46', '2014-12-09 15:45:46', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(119, 1, 'Page Forbidden', 'page_forbidden', '', '2014-12-09 15:45:47', '2014-12-09 15:45:47', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(120, 1, 'Download File', 'download_file', '', '2014-12-09 15:45:47', '2014-12-09 15:45:47', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(121, 1, 'Members', 'members', '', '2014-12-09 15:45:48', '2014-12-09 15:45:48', 'Initial Version', 1, 0, 1, NULL, 18, 0, NULL),
(122, 1, '', NULL, NULL, '2014-12-09 15:45:50', '2014-12-09 15:45:50', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL),
(123, 1, 'Présentation', 'presentation', '', '2014-12-09 16:12:00', '2014-12-09 16:12:57', 'Version 1', 1, 0, 1, 1, 18, 4, NULL),
(124, 1, 'Menu', 'menu', NULL, '2014-12-09 16:29:04', '2014-12-09 16:29:04', 'Initial Version', 0, 0, 1, NULL, 18, 1, NULL),
(124, 2, 'Menu', 'menu', NULL, '2014-12-09 16:29:04', '2014-12-09 16:29:40', 'Nouvelle version 2', 1, 0, 1, 1, 18, 1, NULL),
(126, 1, '', NULL, NULL, '2015-03-02 14:24:00', '2015-03-02 14:24:00', 'Version 1', 1, 0, NULL, NULL, 0, 6, NULL),
(127, 1, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 16:09:08', 'Initial Version', 0, 0, 1, 1, 18, 6, NULL),
(127, 2, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:15:31', 'Version 2', 0, 0, 1, 1, 18, 7, NULL),
(127, 3, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:23:04', 'Version 3', 0, 0, 1, 1, 18, 7, NULL),
(127, 4, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:24:35', 'Version 4', 0, 0, 1, 1, 18, 7, NULL),
(127, 5, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:26:51', 'Version 5', 0, 0, 1, 1, 18, 7, NULL),
(127, 6, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:27:45', 'Version 6', 0, 0, 1, 1, 18, 7, NULL),
(127, 7, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:31:54', 'Version 7', 0, 0, 1, 1, 18, 7, NULL),
(127, 8, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:33:11', 'Version 8', 0, 0, 1, 1, 18, 7, NULL),
(127, 9, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:33:50', 'Version 9', 0, 0, 1, 1, 18, 7, NULL),
(127, 10, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:34:19', 'Version 10', 0, 0, 1, 1, 18, 7, NULL),
(127, 11, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:34:51', 'Version 11', 0, 0, 1, 1, 18, 7, NULL),
(127, 12, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:35:35', 'Version 12', 0, 0, 1, 1, 18, 7, NULL),
(127, 13, 'Produits', 'produits', '', '2015-03-02 16:08:00', '2015-03-02 23:36:02', 'Version 13', 1, 0, 1, 1, 18, 7, NULL),
(128, 1, 'Accueil', 'accueil', '', '2015-03-02 16:09:00', '2015-03-02 16:10:04', 'Initial Version', 1, 0, 1, 1, 18, 6, NULL),
(129, 1, 'Blog', 'blog', '', '2015-03-02 22:41:00', '2015-03-02 22:41:49', 'Initial Version', 0, 0, 1, 1, 18, 4, NULL),
(129, 2, 'Blog', 'blog', '', '2015-03-02 22:41:00', '2015-03-03 13:58:21', 'Version 2', 0, 0, 1, 1, 18, 4, NULL),
(129, 3, 'Blog', 'blog', '', '2015-03-02 22:41:00', '2015-03-03 14:00:59', 'Version 3', 1, 0, 1, 1, 18, 4, NULL),
(130, 1, 'Contact', 'contact', '', '2015-03-02 22:41:00', '2015-03-02 22:42:07', 'Initial Version', 0, 0, 1, 1, 18, 4, NULL),
(130, 2, 'Contact', 'contact', '', '2015-03-02 22:41:00', '2015-03-02 23:01:10', 'Version 2', 1, 0, 1, 1, 18, 4, NULL),
(131, 1, 'Plan', 'plan', '', '2015-03-02 22:42:00', '2015-03-02 22:42:22', 'Initial Version', 0, 0, 1, 1, 18, 4, NULL),
(131, 2, 'Plan', 'plan', '', '2015-03-02 22:42:00', '2015-03-02 22:44:56', 'Version 2', 0, 0, 1, 1, 18, 4, NULL),
(131, 3, 'Plan', 'plan', '', '2015-03-02 22:42:00', '2015-03-02 22:47:38', 'Version 3', 0, 0, 1, 1, 18, 4, NULL),
(131, 4, 'Plan', 'plan', '', '2015-03-02 22:42:00', '2015-03-02 22:49:11', 'Version 4', 0, 0, 1, 1, 18, 4, NULL),
(131, 5, 'Plan', 'plan', '', '2015-03-02 22:42:00', '2015-03-02 22:50:08', 'Version 5', 0, 0, 1, 1, 18, 4, NULL),
(131, 6, 'Plan', 'plan', '', '2015-03-02 22:42:00', '2015-03-02 22:54:54', 'Version 6', 1, 0, 1, 1, 18, 4, NULL),
(132, 1, '', NULL, NULL, '2015-03-02 22:52:07', '2015-03-02 22:52:07', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `composercontentlayout`
--

CREATE TABLE IF NOT EXISTS `composercontentlayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `composerdrafts`
--

CREATE TABLE IF NOT EXISTS `composerdrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `composertypes`
--

CREATE TABLE IF NOT EXISTS `composertypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `config`
--

INSERT INTO `config` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('ACCESS_ENTITY_UPDATED', '2015-03-02 13:41:42', '1425307302', 0, 0),
('ANTISPAM_LOG_SPAM', '2014-12-09 14:45:50', '1', 0, 0),
('APP_VERSION_LATEST', '2015-03-02 12:25:48', '5.6.3.3', 0, 0),
('CONTENTS_TXT_EDITOR_HEIGHT', '2015-03-02 21:15:53', '380', 0, 0),
('CONTENTS_TXT_EDITOR_MODE', '2015-03-02 21:15:53', 'ADVANCED', 0, 0),
('CONTENTS_TXT_EDITOR_WIDTH', '2015-03-02 21:15:53', '580', 0, 0),
('DO_PAGE_REINDEX_CHECK', '2015-03-03 13:03:57', '0', 0, 0),
('ENABLE_BLOCK_CACHE', '2014-12-09 14:45:50', '1', 0, 0),
('ENABLE_LOG_EMAILS', '2014-12-09 14:45:49', '1', 0, 0),
('ENABLE_LOG_ERRORS', '2014-12-09 14:45:49', '1', 0, 0),
('ENABLE_MARKETPLACE_SUPPORT', '2014-12-09 14:45:49', '1', 0, 0),
('ENABLE_OVERRIDE_CACHE', '2014-12-09 14:45:50', '1', 0, 0),
('FULL_PAGE_CACHE_GLOBAL', '2014-12-09 14:45:49', '0', 0, 0),
('NEWSFLOW_LAST_VIEWED', '2015-03-03 13:57:43', '1425391063', 1, 0),
('SECURITY_TOKEN_ENCRYPTION', '2014-12-09 14:45:58', 'SKTxjRfAvX3m0hcVxYt93grLoScDSI61Qc9PCbKufkLGBErv9XvDtlSJgyMi1NZc', 0, 0),
('SECURITY_TOKEN_JOBS', '2014-12-09 14:45:58', 'Ps80qROse9b8UAlcHiU4XVfwfwcccntJR3pv6Me4tWArGCKxOHpjnE6IagatbPxT', 0, 0),
('SECURITY_TOKEN_VALIDATION', '2014-12-09 14:45:58', 'ybQlnyBsA0UunKBeXbfif0ccWxO2JhsLtAk7pczVHOWosBZCT0oMlqAHtKQ6XKJy', 0, 0),
('SEEN_INTRODUCTION', '2014-12-09 14:49:59', '1', 0, 0),
('SITE', '2014-12-09 14:45:54', 'MonSite', 0, 0),
('SITE_APP_VERSION', '2014-12-09 14:45:54', '5.6.3.2', 0, 0),
('SITE_DEBUG_LEVEL', '2014-12-09 14:45:49', '1', 0, 0),
('SITE_INSTALLED_APP_VERSION', '2014-12-09 14:45:54', '5.6.3.2', 0, 0),
('SITE_LOCALE', '2014-12-09 14:45:54', 'fr_FR', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `customstylepresets`
--

CREATE TABLE IF NOT EXISTS `customstylepresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `customstylepresets`
--

INSERT INTO `customstylepresets` (`cspID`, `cspName`, `csrID`) VALUES
(1, '', 18),
(2, '', 52),
(3, '', 95);

-- --------------------------------------------------------

--
-- Structure de la table `customstylerules`
--

CREATE TABLE IF NOT EXISTS `customstylerules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- Contenu de la table `customstylerules`
--

INSERT INTO `customstylerules` (`csrID`, `css_id`, `css_class`, `css_serialized`, `css_custom`) VALUES
(1, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:7:"justify";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"inset";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(2, '', '', 'a:20:{s:11:"font_family";s:15:"Times New Roman";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:7:"justify";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(3, '', '', 'a:20:{s:11:"font_family";s:15:"Times New Roman";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:7:"justify";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'border-radius : 10px 10px;'),
(4, '', '', 'a:20:{s:11:"font_family";s:15:"Times New Roman";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:7:"justify";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'border-radius : 10px 10px;\r\nfloat : left'),
(5, '', '', 'a:20:{s:11:"font_family";s:15:"Times New Roman";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:7:"justify";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'border-radius : 10px 10px;\r\n'),
(6, '', '', 'a:20:{s:11:"font_family";s:15:"Times New Roman";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'border-radius : 10px 10px;\r\n'),
(7, '', '', 'a:20:{s:11:"font_family";s:15:"Times New Roman";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'border-radius : 10px 10px;\r\nlist-style : none;'),
(8, '', '', 'a:20:{s:11:"font_family";s:15:"Times New Roman";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'border-radius : 10px 10px;\r\nwidth : 100%'),
(9, '', '', 'a:20:{s:11:"font_family";s:15:"Times New Roman";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'border-radius : 10px 10px;\r\n'),
(10, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(11, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(12, 'Titre', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(13, '', 'SousTitre', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(14, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(15, 'MonImage', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(16, '', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(17, 'First MonImage', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(18, 'FirstMonImage', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:3:"340";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(19, 'First', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(20, '', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(21, '', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'width:100%'),
(22, '', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(23, '', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(24, '', 'SousTitre', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(25, 'MonImage', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(26, '', 'SousTitre', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(27, '', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(28, 'Titre', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(29, 'banniere', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(30, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:6:"dotted";s:12:"border_color";s:7:"#9c9393";s:12:"border_width";s:1:"1";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(31, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:2:"12";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(32, 'SocialMedia', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(33, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', '	padding-left: 5px;\r\n	width: 65px;\r\n	height: 55px;'),
(34, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'padding-left: 5px;\r\n	width: 360px;\r\n	height: 55px;'),
(35, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', '\r\nwidth: 360px;\r\nheight: 55px;'),
(36, 'Newsletter', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(37, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'font-size: 18px;'),
(38, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'font-size: 12px'),
(39, 'Newsletter', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(40, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:6:"dotted";s:12:"border_color";s:7:"#9c9393";s:12:"border_width";s:1:"1";s:15:"border_position";s:6:"bottom";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(41, 'Titre', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(42, 'banniere', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(43, '', 'SousTitre', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(44, '', 'SousTitre', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(45, '', 'SousTitre', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(46, '', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(47, '', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(48, '', 'CorpsArticle', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(49, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:6:"dotted";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"3";s:15:"border_position";s:6:"bottom";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(50, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:6:"dotted";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"3";s:15:"border_position";s:6:"bottom";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:1:"5";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(51, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:7:"#6e6d6d";s:9:"font_size";s:2:"12";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(52, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'width: 360px;\r\nheight: 55px;'),
(53, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:2:"12";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(54, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:6:"dotted";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"3";s:15:"border_position";s:6:"bottom";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:1:"5";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(55, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 200px;'),
(56, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(57, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 200px;'),
(58, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:6:"dotted";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"3";s:15:"border_position";s:6:"bottom";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:1:"5";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(59, 'News', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(60, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(61, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 40px;'),
(62, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 40px;'),
(63, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 50px'),
(64, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 50px'),
(65, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 10'),
(66, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(67, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 200px;'),
(68, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:2:"10";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 200px;'),
(69, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:2:"10";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 150px;'),
(70, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:2:"10";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 175px;'),
(71, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:2:"10";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 40px;'),
(72, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:2:"10";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 70px;'),
(73, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 70px;'),
(74, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:2:"10";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 60px;'),
(75, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 60px'),
(76, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:2:"10";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 65px;'),
(77, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 65px;'),
(78, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 65px'),
(79, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 100px;'),
(80, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 120px;'),
(81, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:2:"10";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'height: 200px;');
INSERT INTO `customstylerules` (`csrID`, `css_id`, `css_class`, `css_serialized`, `css_custom`) VALUES
(82, 'menu', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(83, 'menu', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(84, 'menu', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(85, 'menu', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(86, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:3:"300";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(87, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(88, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'width:200px;\r\nheight:100px;'),
(89, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:3:"150";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'width:400px;\r\nheight:250px;'),
(90, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:3:"300";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'width:400px;\r\nheight:250px;'),
(91, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:2:"50";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(92, 'menu', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:0:"";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(93, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:2:"18";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', ''),
(94, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:2:"18";s:11:"line_height";s:0:"";s:10:"text_align";s:0:"";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'width: 200px;\r\nheight: 200px;'),
(95, '', '', 'a:20:{s:11:"font_family";s:7:"inherit";s:5:"color";s:0:"";s:9:"font_size";s:2:"18";s:11:"line_height";s:0:"";s:10:"text_align";s:7:"justify";s:16:"background_color";s:0:"";s:12:"border_style";s:4:"none";s:12:"border_color";s:0:"";s:12:"border_width";s:1:"0";s:15:"border_position";s:4:"full";s:10:"margin_top";s:0:"";s:12:"margin_right";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:11:"padding_top";s:0:"";s:13:"padding_right";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:16:"background_image";s:1:"0";s:17:"background_repeat";s:9:"no-repeat";}', 'width: 200px;\r\nheight: 200px;\r\nfont-size: 18px;');

-- --------------------------------------------------------

--
-- Structure de la table `downloadstatistics`
--

CREATE TABLE IF NOT EXISTS `downloadstatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `fileattributevalues`
--

CREATE TABLE IF NOT EXISTS `fileattributevalues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `fileattributevalues`
--

INSERT INTO `fileattributevalues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 12, 121),
(1, 1, 13, 122),
(2, 1, 12, 123),
(2, 1, 13, 124),
(3, 1, 12, 125),
(3, 1, 13, 126),
(4, 1, 12, 127),
(4, 1, 13, 128),
(5, 1, 12, 129),
(5, 1, 13, 130),
(6, 1, 12, 131),
(6, 1, 13, 132),
(7, 1, 12, 133),
(7, 1, 13, 134),
(8, 1, 12, 135),
(8, 1, 13, 136),
(9, 1, 12, 137),
(9, 1, 13, 138),
(10, 1, 12, 139),
(10, 1, 13, 140),
(11, 1, 12, 141),
(11, 1, 13, 142),
(12, 1, 12, 143),
(12, 1, 13, 144),
(13, 1, 12, 145),
(13, 1, 13, 146),
(14, 1, 12, 147),
(14, 1, 13, 148),
(15, 1, 12, 149),
(15, 1, 13, 150),
(16, 1, 12, 151),
(16, 1, 13, 152);

-- --------------------------------------------------------

--
-- Structure de la table `filepermissionassignments`
--

CREATE TABLE IF NOT EXISTS `filepermissionassignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `filepermissionfiletypes`
--

CREATE TABLE IF NOT EXISTS `filepermissionfiletypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `files`
--

INSERT INTO `files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1, '2015-03-02 14:41:42', 1, 0, 126, 0, NULL),
(2, '2015-03-02 15:00:49', 1, 0, 126, 0, NULL),
(3, '2015-03-02 15:08:05', 1, 0, 126, 0, NULL),
(4, '2015-03-02 15:16:59', 1, 0, 126, 0, NULL),
(5, '2015-03-02 15:17:19', 1, 0, 0, 0, NULL),
(6, '2015-03-02 15:26:10', 1, 0, 126, 0, NULL),
(7, '2015-03-02 15:26:22', 1, 0, 0, 0, NULL),
(8, '2015-03-02 15:26:37', 1, 0, 0, 0, NULL),
(9, '2015-03-02 15:26:51', 1, 0, 0, 0, NULL),
(10, '2015-03-02 15:27:10', 1, 0, 0, 0, NULL),
(11, '2015-03-02 22:15:01', 1, 0, 1, 0, NULL),
(12, '2015-03-02 22:20:22', 1, 0, 1, 0, NULL),
(13, '2015-03-02 22:21:33', 1, 0, 1, 0, NULL),
(14, '2015-03-02 23:18:27', 1, 0, 127, 0, NULL),
(15, '2015-03-02 23:19:07', 1, 0, 127, 0, NULL),
(16, '2015-03-02 23:21:25', 1, 0, 127, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `filesearchindexattributes`
--

CREATE TABLE IF NOT EXISTS `filesearchindexattributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `filesearchindexattributes`
--

INSERT INTO `filesearchindexattributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1, '298.0000', '189.0000', '0.0000'),
(2, '298.0000', '193.0000', '0.0000'),
(3, '298.0000', '193.0000', '0.0000'),
(4, '938.0000', '339.0000', '0.0000'),
(5, '560.0000', '350.0000', '0.0000'),
(6, '62.0000', '62.0000', '0.0000'),
(7, '59.0000', '61.0000', '0.0000'),
(8, '62.0000', '61.0000', '0.0000'),
(9, '60.0000', '64.0000', '0.0000'),
(10, '61.0000', '62.0000', '0.0000'),
(11, '58.0000', '62.0000', '0.0000'),
(12, '56.0000', '61.0000', '0.0000'),
(13, '58.0000', '62.0000', '0.0000'),
(14, '600.0000', '400.0000', '0.0000'),
(15, '800.0000', '586.0000', '0.0000'),
(16, '645.0000', '320.0000', '0.0000');

-- --------------------------------------------------------

--
-- Structure de la table `filesetfiles`
--

CREATE TABLE IF NOT EXISTS `filesetfiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `filesetpermissionassignments`
--

CREATE TABLE IF NOT EXISTS `filesetpermissionassignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `filesetpermissionassignments`
--

INSERT INTO `filesetpermissionassignments` (`fsID`, `paID`, `pkID`) VALUES
(0, 44, 35),
(0, 45, 36),
(0, 46, 37),
(0, 47, 38),
(0, 48, 39),
(0, 49, 40),
(0, 50, 42),
(0, 51, 41),
(0, 52, 43);

-- --------------------------------------------------------

--
-- Structure de la table `filesetpermissionfiletypeaccesslist`
--

CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `filesetpermissionfiletypeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `filesets`
--

CREATE TABLE IF NOT EXISTS `filesets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `filesetsavedsearches`
--

CREATE TABLE IF NOT EXISTS `filesetsavedsearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `filestoragelocations`
--

CREATE TABLE IF NOT EXISTS `filestoragelocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fileversionlog`
--

CREATE TABLE IF NOT EXISTS `fileversionlog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `fileversionlog`
--

INSERT INTO `fileversionlog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(1, 1, 1, 5, 12),
(2, 1, 1, 5, 13),
(3, 2, 1, 5, 12),
(4, 2, 1, 5, 13),
(5, 3, 1, 5, 12),
(6, 3, 1, 5, 13),
(7, 4, 1, 5, 12),
(8, 4, 1, 5, 13),
(9, 5, 1, 5, 12),
(10, 5, 1, 5, 13),
(11, 6, 1, 5, 12),
(12, 6, 1, 5, 13),
(13, 7, 1, 5, 12),
(14, 7, 1, 5, 13),
(15, 8, 1, 5, 12),
(16, 8, 1, 5, 13),
(17, 9, 1, 5, 12),
(18, 9, 1, 5, 13),
(19, 10, 1, 5, 12),
(20, 10, 1, 5, 13),
(21, 11, 1, 5, 12),
(22, 11, 1, 5, 13),
(23, 12, 1, 5, 12),
(24, 12, 1, 5, 13),
(25, 13, 1, 5, 12),
(26, 13, 1, 5, 13),
(27, 14, 1, 5, 12),
(28, 14, 1, 5, 13),
(29, 15, 1, 5, 12),
(30, 15, 1, 5, 13),
(31, 16, 1, 5, 12),
(32, 16, 1, 5, 13);

-- --------------------------------------------------------

--
-- Structure de la table `fileversions`
--

CREATE TABLE IF NOT EXISTS `fileversions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `fileversions`
--

INSERT INTO `fileversions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasThumbnail1`, `fvHasThumbnail2`, `fvHasThumbnail3`, `fvExtension`, `fvType`) VALUES
(1, 1, 'ImgArticle1.png', '261425307302', 1, 84883, 'ImgArticle1.png', '', '', 1, '2015-03-02 14:41:42', 1, 1, '2015-03-02 14:41:42', 1, 1, 0, 'png', 1),
(2, 1, 'ImgArticle2.png', '861425308449', 1, 92125, 'ImgArticle2.png', '', '', 1, '2015-03-02 15:00:49', 1, 1, '2015-03-02 15:00:49', 1, 1, 0, 'png', 1),
(3, 1, 'ImgArticle3.png', '731425308885', 1, 72292, 'ImgArticle3.png', '', '', 1, '2015-03-02 15:08:05', 1, 1, '2015-03-02 15:08:05', 1, 1, 0, 'png', 1),
(4, 1, 'banniere.png', '531425309419', 1, 556382, 'banniere.png', '', '', 1, '2015-03-02 15:16:59', 1, 1, '2015-03-02 15:16:59', 1, 1, 0, 'png', 1),
(5, 1, 'Formation.jpg', '651425309439', 1, 106709, 'Formation.jpg', '', '', 1, '2015-03-02 15:17:19', 1, 1, '2015-03-02 15:17:19', 1, 1, 0, 'jpg', 1),
(6, 1, 'LogoFb.PNG', '851425309970', 1, 7202, 'LogoFb.PNG', '', '', 1, '2015-03-02 15:26:10', 1, 1, '2015-03-02 15:26:10', 1, 1, 0, 'PNG', 1),
(7, 1, 'LogoIn.PNG', '121425309982', 1, 7739, 'LogoIn.PNG', '', '', 1, '2015-03-02 15:26:22', 1, 1, '2015-03-02 15:26:22', 1, 1, 0, 'PNG', 1),
(8, 1, 'LogoRss.PNG', '591425309997', 1, 8326, 'LogoRss.PNG', '', '', 1, '2015-03-02 15:26:37', 1, 1, '2015-03-02 15:26:37', 1, 1, 0, 'PNG', 1),
(9, 1, 'LogoTw.PNG', '421425310011', 1, 7077, 'LogoTw.PNG', '', '', 1, '2015-03-02 15:26:51', 1, 1, '2015-03-02 15:26:51', 1, 1, 0, 'PNG', 1),
(10, 1, 'LogoYt.PNG', '581425310030', 1, 9122, 'LogoYt.PNG', '', '', 1, '2015-03-02 15:27:11', 1, 1, '2015-03-02 15:27:11', 1, 1, 0, 'PNG', 1),
(11, 1, 'news1.png', '521425334501', 1, 6339, 'news1.png', '', '', 1, '2015-03-02 22:15:02', 1, 1, '2015-03-02 22:15:02', 1, 1, 0, 'png', 1),
(12, 1, 'news2.png', '261425334822', 1, 5215, 'news2.png', '', '', 1, '2015-03-02 22:20:22', 1, 1, '2015-03-02 22:20:22', 1, 1, 0, 'png', 1),
(13, 1, 'firefox.png', '401425334893', 1, 6883, 'firefox.png', '', '', 1, '2015-03-02 22:21:33', 1, 1, '2015-03-02 22:21:33', 1, 1, 0, 'png', 1),
(14, 1, 'alcool.jpg', '981425338307', 1, 115295, 'alcool.jpg', '', '', 1, '2015-03-02 23:18:27', 1, 1, '2015-03-02 23:18:27', 1, 1, 0, 'jpg', 1),
(15, 1, '6005_choix-console.jpg', '391425338347', 1, 29282, '6005_choix-console.jpg', '', '', 1, '2015-03-02 23:19:07', 1, 1, '2015-03-02 23:19:07', 1, 1, 0, 'jpg', 1),
(16, 1, '5052321.jpg', '531425338485', 1, 77476, '5052321.jpg', '', '', 1, '2015-03-02 23:21:25', 1, 1, '2015-03-02 23:21:25', 1, 1, 0, 'jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `groups`
--

INSERT INTO `groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `groupsetgroups`
--

CREATE TABLE IF NOT EXISTS `groupsetgroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `groupsets`
--

CREATE TABLE IF NOT EXISTS `groupsets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `jobs`
--

INSERT INTO `jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.', '2014-12-09 15:44:14', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2014-12-09 15:44:14', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2014-12-09 15:44:14', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(4, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2014-12-09 15:44:14', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(5, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2014-12-09 15:44:14', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Structure de la table `jobsetjobs`
--

CREATE TABLE IF NOT EXISTS `jobsetjobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jobsetjobs`
--

INSERT INTO `jobsetjobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `jobsets`
--

CREATE TABLE IF NOT EXISTS `jobsets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `jobsets`
--

INSERT INTO `jobsets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Structure de la table `jobslog`
--

CREATE TABLE IF NOT EXISTS `jobslog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `layoutpresets`
--

CREATE TABLE IF NOT EXISTS `layoutpresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `layouts`
--

CREATE TABLE IF NOT EXISTS `layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `layouts`
--

INSERT INTO `layouts` (`layoutID`, `layout_rows`, `layout_columns`, `spacing`, `breakpoints`, `locked`) VALUES
(1, 2, 3, 10, '33%,67%', 0);

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `logs`
--

INSERT INTO `logs` (`logID`, `logType`, `timestamp`, `logText`, `logUserID`, `logIsInternal`) VALUES
(1, 'exceptions', '2015-01-06 16:38:36', 'Une erreur de traitement de courriel est survenue. Impossible d''envoyer le courriel :Unable to send mail. mail(): Failed to connect to mailserver at &amp;quot;localhost&amp;quot; port 25, verify your &amp;quot;SMTP&amp;quot; and &amp;quot;smtp_port&amp;quot; setting in php.ini or use ini_set()\n#0 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\libraries\\3rdparty\\Zend\\Mail\\Transport\\Abstract.php(348): Zend_Mail_Transport_Sendmail-&gt;_sendMail()\n#1 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\libraries\\3rdparty\\Zend\\Mail.php(1194): Zend_Mail_Transport_Abstract-&gt;send(Object(Zend_Mail))\n#2 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\helpers\\mail.php(369): Zend_Mail-&gt;send(NULL)\n#3 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\controllers\\single_pages\\login.php(462): Concrete5_Helper_Mail-&gt;sendMail()\n#4 [internal function]: Concrete5_Controller_Login-&gt;forgot_password()\n#5 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\libraries\\controller.php(267): call_user_func_array(Array, Array)\n#6 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\libraries\\controller.php(237): Concrete5_Library_Controller-&gt;runTask(''forgot_password'', Array)\n#7 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\libraries\\view.php(787): Concrete5_Library_Controller-&gt;setupAndRun()\n#8 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#9 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\index.php(2): require(''C:\\wamp\\www\\Con...'')\n#10 {main}\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: Wallaert.kevin@hotmail.fr\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;Wallaert.kevin@hotmail.fr&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site MonSite \n\nVotre nom d''utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l''adresse suivante:\n\nhttp://127.0.0.1/Concrete5/concrete5.6.3.2/index.php/login/change_password/VCbHbuPvrkopGLG5fkHsJBm4gayIzSkHXUBoXVpXYzsTirf7Z80tchbsljwh3UXY/\n\nMerci de votre visite!\n\n\n', NULL, 1),
(2, 'sent_emails', '2015-01-06 16:38:36', '**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: Wallaert.kevin@hotmail.fr\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;Wallaert.kevin@hotmail.fr&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site MonSite \n\nVotre nom d''utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l''adresse suivante:\n\nhttp://127.0.0.1/Concrete5/concrete5.6.3.2/index.php/login/change_password/VCbHbuPvrkopGLG5fkHsJBm4gayIzSkHXUBoXVpXYzsTirf7Z80tchbsljwh3UXY/\n\nMerci de votre visite!\n\n\n', NULL, 1),
(3, 'exceptions', '2015-03-02 13:22:03', 'Une erreur de traitement de courriel est survenue. Impossible d''envoyer le courriel :Unable to send mail. mail(): Failed to connect to mailserver at &amp;quot;localhost&amp;quot; port 25, verify your &amp;quot;SMTP&amp;quot; and &amp;quot;smtp_port&amp;quot; setting in php.ini or use ini_set()\n#0 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\libraries\\3rdparty\\Zend\\Mail\\Transport\\Abstract.php(348): Zend_Mail_Transport_Sendmail-&gt;_sendMail()\n#1 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\libraries\\3rdparty\\Zend\\Mail.php(1194): Zend_Mail_Transport_Abstract-&gt;send(Object(Zend_Mail))\n#2 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\helpers\\mail.php(369): Zend_Mail-&gt;send(NULL)\n#3 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\controllers\\single_pages\\login.php(462): Concrete5_Helper_Mail-&gt;sendMail()\n#4 [internal function]: Concrete5_Controller_Login-&gt;forgot_password()\n#5 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\libraries\\controller.php(267): call_user_func_array(Array, Array)\n#6 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\libraries\\controller.php(237): Concrete5_Library_Controller-&gt;runTask(''forgot_password'', Array)\n#7 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\core\\libraries\\view.php(787): Concrete5_Library_Controller-&gt;setupAndRun()\n#8 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\concrete\\dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#9 C:\\wamp\\www\\Concrete5\\concrete5.6.3.2\\index.php(2): require(''C:\\wamp\\www\\Con...'')\n#10 {main}\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: Wallaert.kevin@hotmail.fr\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;Wallaert.kevin@hotmail.fr&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site MonSite \n\nVotre nom d''utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l''adresse suivante:\n\nhttp://127.0.0.1/Concrete5/concrete5.6.3.2/index.php/login/change_password/e9DlpiZD3QOMGfFn7NJC5HLVq7E0tgYlG4DhfgVNATYvazSnvQUUrHnw2Nboj9Sa/\n\nMerci de votre visite!\n\n\n', NULL, 1),
(4, 'sent_emails', '2015-03-02 13:22:03', '**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: Wallaert.kevin@hotmail.fr\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;Wallaert.kevin@hotmail.fr&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site MonSite \n\nVotre nom d''utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l''adresse suivante:\n\nhttp://127.0.0.1/Concrete5/concrete5.6.3.2/index.php/login/change_password/e9DlpiZD3QOMGfFn7NJC5HLVq7E0tgYlG4DhfgVNATYvazSnvQUUrHnw2Nboj9Sa/\n\nMerci de votre visite!\n\n\n', NULL, 1),
(5, 'Action sur la page', '2015-03-02 16:03:57', 'Page &quot;&quot; du chemin &quot;&quot; supprim&eacute;e\n', 1, 0),
(6, 'Action sur la page', '2015-03-02 16:09:46', 'Page &quot;Pr&eacute;sentation&quot; du chemin &quot;/presentation&quot; d&eacute;plac&eacute;e &agrave; la corbeille\n', 1, 0),
(7, 'Action sur la page', '2015-03-02 22:43:27', 'Page &quot;Accueil&quot; du chemin &quot;/accueil&quot; d&eacute;plac&eacute;e &agrave; la corbeille\n', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `mailimporters`
--

CREATE TABLE IF NOT EXISTS `mailimporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `mailimporters`
--

INSERT INTO `mailimporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Structure de la table `mailvalidationhashes`
--

CREATE TABLE IF NOT EXISTS `mailvalidationhashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `pagepaths`
--

CREATE TABLE IF NOT EXISTS `pagepaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Contenu de la table `pagepaths`
--

INSERT INTO `pagepaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`) VALUES
(1, 2, '/dashboard', '1'),
(2, 3, '/dashboard/composer', '1'),
(3, 4, '/dashboard/composer/write', '1'),
(4, 5, '/dashboard/composer/drafts', '1'),
(5, 6, '/dashboard/sitemap', '1'),
(6, 7, '/dashboard/sitemap/full', '1'),
(7, 8, '/dashboard/sitemap/explore', '1'),
(8, 9, '/dashboard/sitemap/search', '1'),
(9, 10, '/dashboard/files', '1'),
(10, 11, '/dashboard/files/search', '1'),
(11, 12, '/dashboard/files/attributes', '1'),
(12, 13, '/dashboard/files/sets', '1'),
(13, 14, '/dashboard/files/add_set', '1'),
(14, 15, '/dashboard/users', '1'),
(15, 16, '/dashboard/users/search', '1'),
(16, 17, '/dashboard/users/groups', '1'),
(17, 18, '/dashboard/users/attributes', '1'),
(18, 19, '/dashboard/users/add', '1'),
(19, 20, '/dashboard/users/add_group', '1'),
(20, 21, '/dashboard/users/group_sets', '1'),
(21, 22, '/dashboard/reports', '1'),
(22, 23, '/dashboard/reports/statistics', '1'),
(23, 24, '/dashboard/reports/forms', '1'),
(24, 25, '/dashboard/reports/surveys', '1'),
(25, 26, '/dashboard/reports/logs', '1'),
(26, 27, '/dashboard/pages', '1'),
(27, 28, '/dashboard/pages/themes', '1'),
(28, 29, '/dashboard/pages/themes/add', '1'),
(29, 30, '/dashboard/pages/themes/inspect', '1'),
(30, 31, '/dashboard/pages/themes/customize', '1'),
(31, 32, '/dashboard/pages/types', '1'),
(32, 33, '/dashboard/pages/types/add', '1'),
(33, 34, '/dashboard/pages/attributes', '1'),
(34, 35, '/dashboard/pages/single', '1'),
(35, 36, '/dashboard/workflow', '1'),
(36, 37, '/dashboard/workflow/list', '1'),
(37, 38, '/dashboard/workflow/me', '1'),
(38, 39, '/dashboard/blocks', '1'),
(39, 40, '/dashboard/blocks/stacks', '1'),
(40, 41, '/dashboard/blocks/permissions', '1'),
(41, 42, '/dashboard/blocks/stacks/list', '1'),
(42, 43, '/dashboard/blocks/types', '1'),
(43, 44, '/dashboard/extend', '1'),
(44, 45, '/dashboard/news', '1'),
(45, 46, '/dashboard/extend/install', '1'),
(46, 47, '/dashboard/extend/update', '1'),
(47, 48, '/dashboard/extend/connect', '1'),
(48, 49, '/dashboard/extend/themes', '1'),
(49, 50, '/dashboard/extend/add-ons', '1'),
(50, 51, '/dashboard/system', '1'),
(51, 52, '/dashboard/system/basics', '1'),
(52, 53, '/dashboard/system/basics/site_name', '1'),
(53, 54, '/dashboard/system/basics/icons', '1'),
(54, 55, '/dashboard/system/basics/editor', '1'),
(55, 56, '/dashboard/system/basics/multilingual', '1'),
(56, 57, '/dashboard/system/basics/timezone', '1'),
(57, 58, '/dashboard/system/basics/interface', '1'),
(58, 59, '/dashboard/system/seo', '1'),
(59, 60, '/dashboard/system/seo/urls', '1'),
(60, 61, '/dashboard/system/seo/bulk_seo_tool', '1'),
(61, 62, '/dashboard/system/seo/tracking_codes', '1'),
(62, 63, '/dashboard/system/seo/excluded', '1'),
(63, 64, '/dashboard/system/seo/statistics', '1'),
(64, 65, '/dashboard/system/seo/search_index', '1'),
(65, 66, '/dashboard/system/optimization', '1'),
(66, 67, '/dashboard/system/optimization/cache', '1'),
(67, 68, '/dashboard/system/optimization/clear_cache', '1'),
(68, 69, '/dashboard/system/optimization/jobs', '1'),
(69, 70, '/dashboard/system/permissions', '1'),
(70, 71, '/dashboard/system/permissions/site', '1'),
(71, 72, '/dashboard/system/permissions/files', '1'),
(72, 73, '/dashboard/system/permissions/file_types', '1'),
(73, 74, '/dashboard/system/permissions/tasks', '1'),
(74, 75, '/dashboard/system/permissions/users', '1'),
(75, 76, '/dashboard/system/permissions/advanced', '1'),
(76, 77, '/dashboard/system/permissions/ip_blacklist', '1'),
(77, 78, '/dashboard/system/permissions/captcha', '1'),
(78, 79, '/dashboard/system/permissions/antispam', '1'),
(79, 80, '/dashboard/system/permissions/maintenance_mode', '1'),
(80, 81, '/dashboard/system/registration', '1'),
(81, 82, '/dashboard/system/registration/postlogin', '1'),
(82, 83, '/dashboard/system/registration/profiles', '1'),
(83, 84, '/dashboard/system/registration/public_registration', '1'),
(84, 85, '/dashboard/system/mail', '1'),
(85, 86, '/dashboard/system/mail/method', '1'),
(86, 87, '/dashboard/system/mail/method/test_settings', '1'),
(87, 88, '/dashboard/system/mail/importers', '1'),
(88, 89, '/dashboard/system/attributes', '1'),
(89, 90, '/dashboard/system/attributes/sets', '1'),
(90, 91, '/dashboard/system/attributes/types', '1'),
(91, 92, '/dashboard/system/environment', '1'),
(92, 93, '/dashboard/system/environment/info', '1'),
(93, 94, '/dashboard/system/environment/debug', '1'),
(94, 95, '/dashboard/system/environment/logging', '1'),
(95, 96, '/dashboard/system/environment/file_storage_locations', '1'),
(96, 97, '/dashboard/system/environment/proxy', '1'),
(97, 98, '/dashboard/system/backup_restore', '1'),
(98, 99, '/dashboard/system/backup_restore/backup', '1'),
(99, 100, '/dashboard/system/backup_restore/update', '1'),
(100, 101, '/dashboard/system/backup_restore/database', '1'),
(101, 102, '/dashboard/pages/types/composer', '1'),
(102, 106, '/dashboard/welcome', '1'),
(103, 107, '/dashboard/home', '1'),
(104, 108, '/!drafts', '1'),
(105, 109, '/!trash', '1'),
(106, 110, '/!stacks', '1'),
(107, 111, '/login', '1'),
(108, 112, '/register', '1'),
(109, 113, '/profile', '1'),
(110, 114, '/profile/edit', '1'),
(111, 115, '/profile/avatar', '1'),
(112, 116, '/profile/messages', '1'),
(113, 117, '/profile/friends', '1'),
(114, 118, '/page_not_found', '1'),
(115, 119, '/page_forbidden', '1'),
(116, 120, '/download_file', '1'),
(117, 121, '/members', '1'),
(120, 124, '/!stacks/menu', '1'),
(122, 123, '/!trash/presentation', '1'),
(127, 128, '/!trash/accueil', '1'),
(132, 131, '/plan', '1'),
(133, 130, '/contact', '1'),
(145, 127, '/produits', '1'),
(147, 129, '/blog', '1');

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionassignments`
--

CREATE TABLE IF NOT EXISTS `pagepermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pagepermissionassignments`
--

INSERT INTO `pagepermissionassignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 53),
(1, 2, 54),
(1, 3, 55),
(1, 4, 56),
(1, 5, 57),
(1, 6, 58),
(1, 7, 59),
(1, 8, 60),
(1, 9, 61),
(1, 10, 62),
(1, 11, 63),
(1, 12, 64),
(1, 13, 65),
(1, 14, 66),
(1, 15, 67),
(1, 16, 68),
(2, 1, 19),
(2, 2, 21),
(2, 3, 20),
(2, 4, 26),
(2, 5, 22),
(2, 6, 23),
(2, 7, 28),
(2, 8, 30),
(2, 9, 32),
(2, 10, 29),
(2, 11, 33),
(2, 12, 34),
(2, 13, 24),
(2, 14, 27),
(2, 15, 25),
(2, 16, 31),
(42, 1, 35),
(42, 3, 36),
(111, 1, 39),
(111, 3, 40),
(112, 1, 41),
(112, 3, 42);

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionpagetypeaccesslist`
--

CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionpagetypeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionpropertyaccesslist`
--

CREATE TABLE IF NOT EXISTS `pagepermissionpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionpropertyattributeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionthemeaccesslist`
--

CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionthemeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pages`
--

INSERT INTO `pages` (`cID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 15, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/view.php', 0, NULL, 0, 1, 2, 0, 2, 0, -1, '0', 0, 1),
(4, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/write.php', 0, NULL, 0, 1, 0, 0, 3, 0, -1, '0', 0, 1),
(5, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/drafts.php', 0, NULL, 0, 1, 0, 1, 3, 0, -1, '0', 0, 1),
(6, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 1, 2, 0, -1, '0', 0, 1),
(7, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 6, 0, -1, '0', 0, 1),
(8, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 6, 0, -1, '0', 0, 1),
(9, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 6, 0, -1, '0', 0, 1),
(10, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 2, 2, 0, -1, '0', 0, 1),
(11, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 10, 0, -1, '0', 0, 1),
(12, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 10, 0, -1, '0', 0, 1),
(13, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 10, 0, -1, '0', 0, 1),
(14, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 10, 0, -1, '0', 0, 1),
(15, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 6, 3, 2, 0, -1, '0', 0, 1),
(16, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 15, 0, -1, '0', 0, 1),
(17, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 0, 1, 15, 0, -1, '0', 0, 1),
(18, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 15, 0, -1, '0', 0, 1),
(19, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 15, 0, -1, '0', 0, 1),
(20, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 15, 0, -1, '0', 0, 1),
(21, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 15, 0, -1, '0', 0, 1),
(22, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 4, 4, 2, 0, -1, '0', 0, 1),
(23, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/statistics.php', 0, NULL, 0, 1, 0, 0, 22, 0, -1, '0', 0, 1),
(24, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 1, 22, 0, -1, '0', 0, 1),
(25, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 2, 22, 0, -1, '0', 0, 1),
(26, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 3, 22, 0, -1, '0', 0, 1),
(27, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 4, 5, 2, 0, -1, '0', 0, 1),
(28, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 3, 0, 27, 0, -1, '0', 0, 1),
(29, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/add.php', 0, NULL, 0, 1, 0, 0, 28, 0, -1, '0', 0, 1),
(30, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 1, 28, 0, -1, '0', 0, 1),
(31, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/customize.php', 0, NULL, 0, 1, 0, 2, 28, 0, -1, '0', 0, 1),
(32, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 2, 1, 27, 0, -1, '0', 0, 1),
(33, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 0, 32, 0, -1, '0', 0, 1),
(34, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 2, 27, 0, -1, '0', 0, 1),
(35, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 3, 27, 0, -1, '0', 0, 1),
(36, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, -1, '0', 0, 1),
(37, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/list.php', 0, NULL, 0, 1, 0, 0, 36, 0, -1, '0', 0, 1),
(38, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 1, 36, 0, -1, '0', 0, 1),
(39, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, -1, '0', 0, 1),
(40, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 39, 0, -1, '0', 0, 1),
(41, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 39, 0, -1, '0', 0, 1),
(42, 0, 1, 0, NULL, NULL, NULL, 1, 42, 'OVERRIDE', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 40, 0, -1, '0', 0, 1),
(43, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 39, 0, -1, '0', 0, 1),
(44, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, -1, '0', 0, 1),
(45, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, -1, '0', 0, 1),
(46, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 44, 0, -1, '0', 0, 1),
(47, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 44, 0, -1, '0', 0, 1),
(48, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 44, 0, -1, '0', 0, 1),
(49, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 44, 0, -1, '0', 0, 1),
(50, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/add-ons.php', 0, NULL, 0, 1, 0, 4, 44, 0, -1, '0', 0, 1),
(51, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 9, 10, 2, 0, -1, '0', 0, 1),
(52, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 6, 0, 51, 0, -1, '0', 0, 1),
(53, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/site_name.php', 0, NULL, 0, 1, 0, 0, 52, 0, -1, '0', 0, 1),
(54, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 1, 52, 0, -1, '0', 0, 1),
(55, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 2, 52, 0, -1, '0', 0, 1),
(56, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 3, 52, 0, -1, '0', 0, 1),
(57, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 4, 52, 0, -1, '0', 0, 1),
(58, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/interface.php', 0, NULL, 0, 1, 0, 5, 52, 0, -1, '0', 0, 1),
(59, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 6, 1, 51, 0, -1, '0', 0, 1),
(60, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 59, 0, -1, '0', 0, 1),
(61, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk_seo_tool.php', 0, NULL, 0, 1, 0, 1, 59, 0, -1, '0', 0, 1),
(62, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/tracking_codes.php', 0, NULL, 0, 1, 0, 2, 59, 0, -1, '0', 0, 1),
(63, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 59, 0, -1, '0', 0, 1),
(64, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/statistics.php', 0, NULL, 0, 1, 0, 4, 59, 0, -1, '0', 0, 1),
(65, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/search_index.php', 0, NULL, 0, 1, 0, 5, 59, 0, -1, '0', 0, 1),
(66, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 3, 2, 51, 0, -1, '0', 0, 1),
(67, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 66, 0, -1, '0', 0, 1),
(68, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clear_cache.php', 0, NULL, 0, 1, 0, 1, 66, 0, -1, '0', 0, 1),
(69, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 66, 0, -1, '0', 0, 1),
(70, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 10, 3, 51, 0, -1, '0', 0, 1),
(71, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 70, 0, -1, '0', 0, 1),
(72, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/files.php', 0, NULL, 0, 1, 0, 1, 70, 0, -1, '0', 0, 1),
(73, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/file_types.php', 0, NULL, 0, 1, 0, 2, 70, 0, -1, '0', 0, 1),
(74, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 3, 70, 0, -1, '0', 0, 1),
(75, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 4, 70, 0, -1, '0', 0, 1),
(76, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 5, 70, 0, -1, '0', 0, 1),
(77, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/ip_blacklist.php', 0, NULL, 0, 1, 0, 6, 70, 0, -1, '0', 0, 1),
(78, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 7, 70, 0, -1, '0', 0, 1),
(79, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 8, 70, 0, -1, '0', 0, 1),
(80, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance_mode.php', 0, NULL, 0, 1, 0, 9, 70, 0, -1, '0', 0, 1),
(81, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 3, 4, 51, 0, -1, '0', 0, 1),
(82, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 81, 0, -1, '0', 0, 1),
(83, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 81, 0, -1, '0', 0, 1),
(84, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/public_registration.php', 0, NULL, 0, 1, 0, 2, 81, 0, -1, '0', 0, 1),
(85, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 5, 51, 0, -1, '0', 0, 1),
(86, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 85, 0, -1, '0', 0, 1),
(87, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test_settings.php', 0, NULL, 0, 1, 0, 0, 86, 0, -1, '0', 0, 1),
(88, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 85, 0, -1, '0', 0, 1),
(89, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 2, 6, 51, 0, -1, '0', 0, 1),
(90, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 89, 0, -1, '0', 0, 1),
(91, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 89, 0, -1, '0', 0, 1),
(92, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 7, 51, 0, -1, '0', 0, 1),
(93, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 92, 0, -1, '0', 0, 1),
(94, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 92, 0, -1, '0', 0, 1),
(95, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 92, 0, -1, '0', 0, 1),
(96, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/file_storage_locations.php', 0, NULL, 0, 1, 0, 3, 92, 0, -1, '0', 0, 1),
(97, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 4, 92, 0, -1, '0', 0, 1),
(98, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/view.php', 0, NULL, 0, 1, 3, 8, 51, 0, -1, '0', 0, 1),
(99, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/backup.php', 0, NULL, 0, 1, 0, 0, 98, 0, -1, '0', 0, 1),
(100, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/update.php', 0, NULL, 0, 1, 0, 1, 98, 0, -1, '0', 0, 1),
(101, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/database.php', 0, NULL, 0, 1, 0, 2, 98, 0, -1, '0', 0, 1),
(102, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/composer.php', 0, NULL, 0, 1, 0, 1, 32, 0, -1, '0', 0, 1),
(103, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(104, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(105, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(106, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, -1, '0', 0, 1),
(107, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, -1, '0', 0, 1),
(108, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(109, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 2, 0, 0, 0, -1, '0', 0, 1),
(110, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 1, 0, 0, 0, -1, '0', 0, 1),
(111, 0, 1, 0, NULL, NULL, NULL, 1, 111, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(112, 0, 1, 0, NULL, NULL, NULL, 1, 112, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(113, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/view.php', 0, NULL, 0, 1, 4, 0, 1, 0, -1, '0', 0, 1),
(114, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/edit.php', 0, NULL, 0, 1, 0, 0, 113, 0, -1, '0', 0, 1),
(115, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/avatar.php', 0, NULL, 0, 1, 0, 1, 113, 0, -1, '0', 0, 1),
(116, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/messages.php', 0, NULL, 0, 1, 0, 2, 113, 0, -1, '0', 0, 1),
(117, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/friends.php', 0, NULL, 0, 1, 0, 3, 113, 0, -1, '0', 0, 1),
(118, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(119, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(120, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, -1, '0', 0, 1),
(121, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members.php', 0, NULL, 0, 1, 0, 2, 1, 0, -1, '0', 0, 1),
(122, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(123, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 0, 0, 4, 109, 0, -1, '0', 0, 1),
(124, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 110, 0, -1, '0', 0, 1),
(126, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(127, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 1, 0, -1, '0', 0, 0),
(128, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 0, 0, 6, 109, 0, -1, '0', 0, 1),
(129, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 1, 0, -1, '0', 0, 0),
(130, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 1, 0, -1, '0', 0, 0),
(131, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 1, 0, -1, '0', 0, 0),
(132, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pagesearchindex`
--

CREATE TABLE IF NOT EXISTS `pagesearchindex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pagesearchindex`
--

INSERT INTO `pagesearchindex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(3, '', 'Composer', 'Write for your site.', '/dashboard/composer', '2014-12-09 15:44:18', '2014-12-09 15:45:12', NULL, 0),
(4, '', 'Write', '', '/dashboard/composer/write', '2014-12-09 15:44:19', '2014-12-09 15:45:13', NULL, 0),
(5, '', 'Drafts', '', '/dashboard/composer/drafts', '2014-12-09 15:44:19', '2014-12-09 15:45:13', NULL, 0),
(6, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2014-12-09 15:44:19', '2014-12-09 15:45:13', NULL, 0),
(7, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2014-12-09 15:44:20', '2014-12-09 15:45:14', NULL, 0),
(8, '', 'Flat View', '', '/dashboard/sitemap/explore', '2014-12-09 15:44:20', '2014-12-09 15:45:14', NULL, 0),
(9, '', 'Page Search', '', '/dashboard/sitemap/search', '2014-12-09 15:44:21', '2014-12-09 15:45:14', NULL, 0),
(11, '', 'File Manager', '', '/dashboard/files/search', '2014-12-09 15:44:21', '2014-12-09 15:45:15', NULL, 0),
(12, '', 'Attributes', '', '/dashboard/files/attributes', '2014-12-09 15:44:22', '2014-12-09 15:45:15', NULL, 0),
(13, '', 'File Sets', '', '/dashboard/files/sets', '2014-12-09 15:44:22', '2014-12-09 15:45:15', NULL, 0),
(14, '', 'Add File Set', '', '/dashboard/files/add_set', '2014-12-09 15:44:23', '2014-12-09 15:45:16', NULL, 0),
(15, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2014-12-09 15:44:23', '2014-12-09 15:45:16', NULL, 0),
(16, '', 'Search Users', '', '/dashboard/users/search', '2014-12-09 15:44:24', '2014-12-09 15:45:16', NULL, 0),
(17, '', 'User Groups', '', '/dashboard/users/groups', '2014-12-09 15:44:24', '2014-12-09 15:45:17', NULL, 0),
(18, '', 'Attributes', '', '/dashboard/users/attributes', '2014-12-09 15:44:25', '2014-12-09 15:45:17', NULL, 0),
(19, '', 'Add User', '', '/dashboard/users/add', '2014-12-09 15:44:25', '2014-12-09 15:45:18', NULL, 0),
(20, '', 'Add Group', '', '/dashboard/users/add_group', '2014-12-09 15:44:26', '2014-12-09 15:45:18', NULL, 0),
(21, '', 'Group Sets', '', '/dashboard/users/group_sets', '2014-12-09 15:44:26', '2014-12-09 15:45:19', NULL, 0),
(22, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2014-12-09 15:44:27', '2014-12-09 15:45:19', NULL, 0),
(23, '', 'Statistics', 'View your site activity.', '/dashboard/reports/statistics', '2014-12-09 15:44:27', '2014-12-09 15:45:19', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2014-12-09 15:44:28', '2014-12-09 15:45:19', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2014-12-09 15:44:28', '2014-12-09 15:45:20', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2014-12-09 15:44:29', '2014-12-09 15:45:20', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2014-12-09 15:44:30', '2014-12-09 15:45:21', NULL, 0),
(29, '', 'Add', '', '/dashboard/pages/themes/add', '2014-12-09 15:44:30', '2014-12-09 15:45:21', NULL, 0),
(30, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2014-12-09 15:44:31', '2014-12-09 15:45:21', NULL, 0),
(31, '', 'Customize', '', '/dashboard/pages/themes/customize', '2014-12-09 15:44:31', '2014-12-09 15:45:21', NULL, 0),
(32, '', 'Page Types', 'What goes in your site.', '/dashboard/pages/types', '2014-12-09 15:44:32', '2014-12-09 15:45:21', NULL, 0),
(34, '', 'Attributes', '', '/dashboard/pages/attributes', '2014-12-09 15:44:33', '2014-12-09 15:45:22', NULL, 0),
(35, '', 'Single Pages', '', '/dashboard/pages/single', '2014-12-09 15:44:33', '2014-12-09 15:45:22', NULL, 0),
(36, '', 'Workflow', '', '/dashboard/workflow', '2014-12-09 15:44:34', '2014-12-09 15:45:22', NULL, 0),
(37, '', 'Workflow List', '', '/dashboard/workflow/list', '2014-12-09 15:44:34', '2014-12-09 15:45:22', NULL, 0),
(38, '', 'Waiting for Me', '', '/dashboard/workflow/me', '2014-12-09 15:44:35', '2014-12-09 15:45:22', NULL, 0),
(40, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2014-12-09 15:44:36', '2014-12-09 15:45:23', NULL, 0),
(41, '', 'Block & Stack Permissions', 'Control who can add blocks and stacks on your site.', '/dashboard/blocks/permissions', '2014-12-09 15:44:36', '2014-12-09 15:45:23', NULL, 0),
(42, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2014-12-09 15:44:37', '2014-12-09 15:45:23', NULL, 0),
(43, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2014-12-09 15:44:38', '2014-12-09 15:45:24', NULL, 0),
(44, '', 'Extend concrete5', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '/dashboard/extend', '2014-12-09 15:44:39', '2014-12-09 15:45:24', NULL, 0),
(45, '', 'Dashboard', '', '/dashboard/news', '2014-12-09 15:44:39', '2014-12-09 15:45:24', NULL, 0),
(46, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2014-12-09 15:44:40', '2014-12-09 15:45:24', NULL, 0),
(47, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2014-12-09 15:44:40', '2014-12-09 15:45:24', NULL, 0),
(48, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2014-12-09 15:44:41', '2014-12-09 15:45:24', NULL, 0),
(49, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2014-12-09 15:44:41', '2014-12-09 15:45:25', NULL, 0),
(50, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/add-ons', '2014-12-09 15:44:42', '2014-12-09 15:45:25', NULL, 0),
(51, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2014-12-09 15:44:42', '2014-12-09 15:45:25', NULL, 0),
(53, '', 'Site Name', '', '/dashboard/system/basics/site_name', '2014-12-09 15:44:43', '2014-12-09 15:45:25', NULL, 0),
(54, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2014-12-09 15:44:44', '2014-12-09 15:45:25', NULL, 0),
(55, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2014-12-09 15:44:44', '2014-12-09 15:45:25', NULL, 0),
(56, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2014-12-09 15:44:45', '2014-12-09 15:45:25', NULL, 0),
(57, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2014-12-09 15:44:45', '2014-12-09 15:45:26', NULL, 0),
(58, '', 'Interface Preferences', '', '/dashboard/system/basics/interface', '2014-12-09 15:44:46', '2014-12-09 15:45:26', NULL, 0),
(60, '', 'Pretty URLs', '', '/dashboard/system/seo/urls', '2014-12-09 15:44:47', '2014-12-09 15:45:26', NULL, 0),
(61, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk_seo_tool', '2014-12-09 15:44:47', '2014-12-09 15:45:26', NULL, 0),
(62, '', 'Tracking Codes', '', '/dashboard/system/seo/tracking_codes', '2014-12-09 15:44:48', '2014-12-09 15:45:26', NULL, 0),
(63, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2014-12-09 15:44:48', '2014-12-09 15:45:26', NULL, 0),
(64, '', 'Statistics', '', '/dashboard/system/seo/statistics', '2014-12-09 15:44:49', '2014-12-09 15:45:26', NULL, 0),
(65, '', 'Search Index', '', '/dashboard/system/seo/search_index', '2014-12-09 15:44:49', '2014-12-09 15:45:27', NULL, 0),
(67, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2014-12-09 15:44:51', '2014-12-09 15:45:27', NULL, 0),
(68, '', 'Clear Cache', '', '/dashboard/system/optimization/clear_cache', '2014-12-09 15:44:51', '2014-12-09 15:45:27', NULL, 0),
(69, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2014-12-09 15:44:51', '2014-12-09 15:45:27', NULL, 0),
(71, '', 'Site Access', '', '/dashboard/system/permissions/site', '2014-12-09 15:44:52', '2014-12-09 15:45:27', NULL, 0),
(72, '', 'File Manager Permissions', '', '/dashboard/system/permissions/files', '2014-12-09 15:44:53', '2014-12-09 15:45:27', NULL, 0),
(73, '', 'Allowed File Types', '', '/dashboard/system/permissions/file_types', '2014-12-09 15:44:53', '2014-12-09 15:45:27', NULL, 0),
(74, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2014-12-09 15:44:54', '2014-12-09 15:45:28', NULL, 0),
(77, '', 'IP Blacklist', '', '/dashboard/system/permissions/ip_blacklist', '2014-12-09 15:44:55', '2014-12-09 15:45:28', NULL, 0),
(78, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2014-12-09 15:44:56', '2014-12-09 15:45:28', NULL, 0),
(79, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2014-12-09 15:44:57', '2014-12-09 15:45:28', NULL, 0),
(80, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance_mode', '2014-12-09 15:44:57', '2014-12-09 15:45:28', NULL, 0),
(82, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2014-12-09 15:44:59', '2014-12-09 15:45:29', NULL, 0),
(83, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2014-12-09 15:44:59', '2014-12-09 15:45:29', NULL, 0),
(84, '', 'Public Registration', '', '/dashboard/system/registration/public_registration', '2014-12-09 15:44:59', '2014-12-09 15:45:29', NULL, 0),
(85, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2014-12-09 15:45:00', '2014-12-09 15:45:29', NULL, 0),
(86, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2014-12-09 15:45:01', '2014-12-09 15:45:29', NULL, 0),
(87, '', 'Test Mail Settings', '', '/dashboard/system/mail/method/test_settings', '2014-12-09 15:45:02', '2014-12-09 15:45:29', NULL, 0),
(88, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2014-12-09 15:45:02', '2014-12-09 15:45:30', NULL, 0),
(89, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2014-12-09 15:45:03', '2014-12-09 15:45:30', NULL, 0),
(90, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2014-12-09 15:45:03', '2014-12-09 15:45:30', NULL, 0),
(91, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2014-12-09 15:45:04', '2014-12-09 15:45:30', NULL, 0),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, '', 'Environment Information', '', '/dashboard/system/environment/info', '2014-12-09 15:45:05', '2014-12-09 15:45:30', NULL, 0),
(94, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2014-12-09 15:45:06', '2014-12-09 15:45:30', NULL, 0),
(95, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2014-12-09 15:45:06', '2014-12-09 15:45:31', NULL, 0),
(96, '', 'File Storage Locations', '', '/dashboard/system/environment/file_storage_locations', '2014-12-09 15:45:07', '2014-12-09 15:45:31', NULL, 0),
(97, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2014-12-09 15:45:07', '2014-12-09 15:45:31', NULL, 0),
(98, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup_restore', '2014-12-09 15:45:08', '2014-12-09 15:45:31', NULL, 0),
(100, '', 'Update concrete5', '', '/dashboard/system/backup_restore/update', '2014-12-09 15:45:09', '2014-12-09 15:45:31', NULL, 0),
(101, '', 'Database XML', '', '/dashboard/system/backup_restore/database', '2014-12-09 15:45:09', '2014-12-09 15:45:31', NULL, 0),
(106, '	Welcome to concrete5.\n						It''s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor''s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer''s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer''s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive''s Guide \n						  ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2014-12-09 15:45:11', '2014-12-09 15:45:34', NULL, 0),
(107, '', 'Customize Dashboard Home', '', '/dashboard/home', '2014-12-09 15:45:12', '2014-12-09 15:45:37', NULL, 0),
(1, 'Welcome on my website\r\n Perfect logic Perfect solution \r\n Uber culture All you want your website to do A tools anything and everything you can think Fresh,modern and ready for you Le corps de l''article\r\n Le corps de l''article Le corps de l''article Social Media\r\n If you want the news, please subscribe for our social media    If you want some news, please subscribe our Newsletter\r\n Contact  News update   Voici la new 1       News 2    New 3  ', 'Home', '', NULL, '2014-12-09 15:43:42', '2015-03-02 22:46:41', NULL, 0),
(123, '', 'Présentation', '', '/presentation', '2014-12-09 16:12:00', '2014-12-09 16:14:27', NULL, 0),
(124, '', 'Menu', NULL, '/!stacks/menu', '2014-12-09 16:29:04', '2014-12-09 16:29:46', NULL, 0),
(127, 'Perfect Logic All you want your website to do Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens Complete Solution A tools anything and everything you can think Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens Uber Culture Fresh,Modern and ready for you Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens Welcome on my website Social Media If you want to follow us, please click on the differents logos    Newsletter If you want to be inform about the news, please sign up for our Newletter  Ici on trouve des bouteilles d''alcools   Ici on trouve des consoles de jeux   Ici on trouve de la nourriture  ', 'Produits', '', '/produits', '2015-03-02 16:08:00', '2015-03-02 23:36:21', NULL, 0),
(128, 'Perfect Logic All you want your website to do Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens Complete Solution A tools anything and everything you can think Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens Uber Culture Fresh,Modern and ready for you Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens Welcome on my website Social Media If you want to follow us, please click on the differents logos    Newsletter If you want to be inform about the news, please sign up for our Newletter ', 'Accueil', '', '/accueil', '2015-03-02 16:09:00', '2015-03-02 16:10:06', NULL, 0),
(129, '', 'Blog', '', '/blog', '2015-03-02 22:41:00', '2015-03-03 14:03:57', NULL, 0),
(130, '', 'Contact', '', '/contact', '2015-03-02 22:41:00', '2015-03-02 23:04:40', NULL, 0),
(131, '', 'Plan', '', '/plan', '2015-03-02 22:42:00', '2015-03-02 22:55:19', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pagestatistics`
--

CREATE TABLE IF NOT EXISTS `pagestatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=807 ;

--
-- Contenu de la table `pagestatistics`
--

INSERT INTO `pagestatistics` (`pstID`, `cID`, `date`, `timestamp`, `uID`) VALUES
(1, 1, '2014-12-09', '2014-12-09 15:49:58', 1),
(2, 106, '2014-12-09', '2014-12-09 15:50:00', 1),
(3, 1, '2014-12-09', '2014-12-09 15:50:35', 1),
(4, 1, '2014-12-09', '2014-12-09 15:50:41', 1),
(5, 1, '2014-12-09', '2014-12-09 15:50:44', 1),
(6, 1, '2014-12-09', '2014-12-09 15:51:09', 1),
(7, 1, '2014-12-09', '2014-12-09 15:51:16', 1),
(8, 1, '2014-12-09', '2014-12-09 16:01:35', 1),
(9, 1, '2014-12-09', '2014-12-09 16:01:35', 1),
(10, 1, '2014-12-09', '2014-12-09 16:03:08', 1),
(11, 1, '2014-12-09', '2014-12-09 16:03:09', 1),
(12, 1, '2014-12-09', '2014-12-09 16:03:20', 1),
(13, 1, '2014-12-09', '2014-12-09 16:12:38', 1),
(14, 1, '2014-12-09', '2014-12-09 16:12:45', 1),
(15, 123, '2014-12-09', '2014-12-09 16:12:58', 1),
(16, 123, '2014-12-09', '2014-12-09 16:13:18', 1),
(17, 1, '2014-12-09', '2014-12-09 16:13:21', 1),
(18, 1, '2014-12-09', '2014-12-09 16:13:32', 1),
(19, 1, '2014-12-09', '2014-12-09 16:13:58', 1),
(20, 1, '2014-12-09', '2014-12-09 16:13:58', 1),
(21, 1, '2014-12-09', '2014-12-09 16:14:07', 1),
(22, 7, '2014-12-09', '2014-12-09 16:14:12', 1),
(23, 123, '2014-12-09', '2014-12-09 16:14:21', 1),
(24, 123, '2014-12-09', '2014-12-09 16:14:26', 1),
(25, 1, '2014-12-09', '2014-12-09 16:14:28', 1),
(26, 1, '2014-12-09', '2014-12-09 16:14:32', 1),
(27, 1, '2014-12-09', '2014-12-09 16:15:39', 1),
(28, 1, '2014-12-09', '2014-12-09 16:15:40', 1),
(29, 1, '2014-12-09', '2014-12-09 16:15:52', 1),
(30, 1, '2014-12-09', '2014-12-09 16:15:52', 1),
(31, 1, '2014-12-09', '2014-12-09 16:16:18', 1),
(32, 1, '2014-12-09', '2014-12-09 16:16:18', 1),
(33, 1, '2014-12-09', '2014-12-09 16:17:02', 1),
(34, 1, '2014-12-09', '2014-12-09 16:17:03', 1),
(35, 1, '2014-12-09', '2014-12-09 16:17:37', 1),
(36, 1, '2014-12-09', '2014-12-09 16:17:38', 1),
(37, 1, '2014-12-09', '2014-12-09 16:18:06', 1),
(38, 1, '2014-12-09', '2014-12-09 16:18:07', 1),
(39, 2, '2014-12-09', '2014-12-09 16:28:51', 1),
(40, 40, '2014-12-09', '2014-12-09 16:28:55', 1),
(41, 40, '2014-12-09', '2014-12-09 16:29:04', 1),
(42, 40, '2014-12-09', '2014-12-09 16:29:05', 1),
(43, 1, '2014-12-09', '2014-12-09 16:29:11', 1),
(44, 40, '2014-12-09', '2014-12-09 16:29:30', 1),
(45, 124, '2014-12-09', '2014-12-09 16:29:45', 1),
(46, 40, '2014-12-09', '2014-12-09 16:29:45', 1),
(47, 1, '2014-12-09', '2014-12-09 16:30:00', 1),
(48, 1, '2014-12-09', '2014-12-09 16:30:04', 1),
(49, 1, '2014-12-09', '2014-12-09 16:30:07', 1),
(50, 1, '2014-12-09', '2014-12-09 16:30:34', 1),
(51, 1, '2014-12-09', '2014-12-09 16:30:34', 1),
(52, 1, '2014-12-09', '2014-12-09 16:30:45', 1),
(53, 1, '2014-12-09', '2014-12-09 16:30:46', 1),
(54, 1, '2014-12-09', '2014-12-09 16:30:54', 1),
(55, 123, '2014-12-09', '2014-12-09 16:30:57', 1),
(56, 1, '2014-12-09', '2014-12-09 16:31:55', 1),
(57, 1, '2014-12-10', '2014-12-10 12:39:32', 0),
(58, 1, '2015-01-06', '2015-01-06 16:13:17', 0),
(59, 111, '2015-01-06', '2015-01-06 16:37:59', 0),
(60, 111, '2015-01-06', '2015-01-06 16:38:29', 0),
(61, 111, '2015-01-06', '2015-01-06 16:38:34', 0),
(62, 111, '2015-01-06', '2015-01-06 16:38:36', 0),
(63, 111, '2015-01-06', '2015-01-06 16:39:15', 0),
(64, 1, '2015-01-06', '2015-01-06 16:39:17', 1),
(65, 107, '2015-01-06', '2015-01-06 16:39:18', 1),
(66, 2, '2015-01-06', '2015-01-06 16:39:28', 1),
(67, 28, '2015-01-06', '2015-01-06 16:39:36', 1),
(68, 28, '2015-01-06', '2015-01-06 16:39:49', 1),
(69, 30, '2015-01-06', '2015-01-06 16:39:49', 1),
(70, 28, '2015-01-06', '2015-01-06 16:39:55', 1),
(71, 28, '2015-01-06', '2015-01-06 16:39:59', 1),
(72, 28, '2015-01-06', '2015-01-06 16:40:01', 1),
(73, 1, '2015-01-06', '2015-01-06 16:40:04', 1),
(74, 28, '2015-01-06', '2015-01-06 16:40:15', 1),
(75, 28, '2015-01-06', '2015-01-06 16:41:00', 1),
(76, 28, '2015-01-06', '2015-01-06 16:46:24', 1),
(77, 30, '2015-01-06', '2015-01-06 16:46:24', 1),
(78, 1, '2015-01-06', '2015-01-06 16:46:38', 1),
(79, 2, '2015-01-06', '2015-01-06 16:46:41', 1),
(80, 28, '2015-01-06', '2015-01-06 16:46:43', 1),
(81, 28, '2015-01-06', '2015-01-06 16:46:45', 1),
(82, 28, '2015-01-06', '2015-01-06 16:46:47', 1),
(83, 1, '2015-01-06', '2015-01-06 16:46:50', 1),
(84, 28, '2015-01-06', '2015-01-06 16:48:15', 1),
(85, 28, '2015-01-06', '2015-01-06 16:48:17', 1),
(86, 28, '2015-01-06', '2015-01-06 16:48:19', 1),
(87, 30, '2015-01-06', '2015-01-06 16:48:19', 1),
(88, 2, '2015-01-06', '2015-01-06 16:48:22', 1),
(89, 28, '2015-01-06', '2015-01-06 16:48:24', 1),
(90, 28, '2015-01-06', '2015-01-06 16:48:25', 1),
(91, 28, '2015-01-06', '2015-01-06 16:48:26', 1),
(92, 1, '2015-01-06', '2015-01-06 16:48:28', 1),
(93, 1, '2015-01-06', '2015-01-06 16:48:35', 1),
(94, 28, '2015-01-06', '2015-01-06 16:51:20', 1),
(95, 28, '2015-01-06', '2015-01-06 16:51:23', 1),
(96, 28, '2015-01-06', '2015-01-06 16:51:25', 1),
(97, 30, '2015-01-06', '2015-01-06 16:51:25', 1),
(98, 2, '2015-01-06', '2015-01-06 16:51:30', 1),
(99, 28, '2015-01-06', '2015-01-06 16:51:32', 1),
(100, 28, '2015-01-06', '2015-01-06 16:51:33', 1),
(101, 28, '2015-01-06', '2015-01-06 16:51:35', 1),
(102, 1, '2015-01-06', '2015-01-06 16:51:37', 1),
(103, 28, '2015-01-06', '2015-01-06 16:52:01', 1),
(104, 28, '2015-01-06', '2015-01-06 16:52:03', 1),
(105, 28, '2015-01-06', '2015-01-06 16:52:05', 1),
(106, 30, '2015-01-06', '2015-01-06 16:52:05', 1),
(107, 28, '2015-01-06', '2015-01-06 16:52:09', 1),
(108, 28, '2015-01-06', '2015-01-06 16:52:10', 1),
(109, 1, '2015-01-06', '2015-01-06 16:52:11', 1),
(110, 28, '2015-01-06', '2015-01-06 16:52:14', 1),
(111, 28, '2015-01-06', '2015-01-06 16:52:16', 1),
(112, 1, '2015-01-06', '2015-01-06 16:52:17', 1),
(113, 1, '2015-01-06', '2015-01-06 16:52:25', 1),
(114, 2, '2015-01-06', '2015-01-06 16:54:33', 1),
(115, 28, '2015-01-06', '2015-01-06 16:54:35', 1),
(116, 28, '2015-01-06', '2015-01-06 16:54:36', 1),
(117, 28, '2015-01-06', '2015-01-06 16:54:38', 1),
(118, 30, '2015-01-06', '2015-01-06 16:54:38', 1),
(119, 28, '2015-01-06', '2015-01-06 16:54:40', 1),
(120, 28, '2015-01-06', '2015-01-06 16:54:42', 1),
(121, 28, '2015-01-06', '2015-01-06 16:54:43', 1),
(122, 1, '2015-01-06', '2015-01-06 16:54:44', 1),
(123, 1, '2015-01-06', '2015-01-06 16:54:51', 1),
(124, 2, '2015-01-06', '2015-01-06 16:55:44', 1),
(125, 28, '2015-01-06', '2015-01-06 16:55:47', 1),
(126, 28, '2015-01-06', '2015-01-06 16:55:48', 1),
(127, 28, '2015-01-06', '2015-01-06 16:55:50', 1),
(128, 30, '2015-01-06', '2015-01-06 16:55:50', 1),
(129, 28, '2015-01-06', '2015-01-06 16:55:54', 1),
(130, 28, '2015-01-06', '2015-01-06 16:55:56', 1),
(131, 28, '2015-01-06', '2015-01-06 16:55:57', 1),
(132, 1, '2015-01-06', '2015-01-06 16:55:58', 1),
(133, 2, '2015-01-06', '2015-01-06 16:57:59', 1),
(134, 28, '2015-01-06', '2015-01-06 16:58:01', 1),
(135, 28, '2015-01-06', '2015-01-06 16:58:03', 1),
(136, 28, '2015-01-06', '2015-01-06 16:58:05', 1),
(137, 30, '2015-01-06', '2015-01-06 16:58:05', 1),
(138, 28, '2015-01-06', '2015-01-06 16:58:07', 1),
(139, 28, '2015-01-06', '2015-01-06 16:58:08', 1),
(140, 28, '2015-01-06', '2015-01-06 16:58:10', 1),
(141, 1, '2015-01-06', '2015-01-06 16:58:11', 1),
(142, 1, '2015-01-06', '2015-01-06 17:01:09', 0),
(143, 2, '2015-01-06', '2015-01-06 17:03:56', 1),
(144, 28, '2015-01-06', '2015-01-06 17:03:58', 1),
(145, 28, '2015-01-06', '2015-01-06 17:04:00', 1),
(146, 28, '2015-01-06', '2015-01-06 17:04:02', 1),
(147, 30, '2015-01-06', '2015-01-06 17:04:02', 1),
(148, 28, '2015-01-06', '2015-01-06 17:04:05', 1),
(149, 28, '2015-01-06', '2015-01-06 17:04:06', 1),
(150, 28, '2015-01-06', '2015-01-06 17:04:08', 1),
(151, 1, '2015-01-06', '2015-01-06 17:04:09', 1),
(152, 1, '2015-01-08', '2015-01-08 12:23:45', 0),
(153, 1, '2015-03-02', '2015-03-02 13:05:58', 0),
(154, 1, '2015-03-02', '2015-03-02 13:07:12', 0),
(155, 1, '2015-03-02', '2015-03-02 13:12:50', 0),
(156, 1, '2015-03-02', '2015-03-02 13:14:19', 0),
(157, 1, '2015-03-02', '2015-03-02 13:18:44', 0),
(158, 111, '2015-03-02', '2015-03-02 13:21:06', 0),
(159, 111, '2015-03-02', '2015-03-02 13:21:22', 0),
(160, 111, '2015-03-02', '2015-03-02 13:21:42', 0),
(161, 111, '2015-03-02', '2015-03-02 13:22:02', 0),
(162, 111, '2015-03-02', '2015-03-02 13:22:04', 0),
(163, 111, '2015-03-02', '2015-03-02 13:22:45', 0),
(164, 111, '2015-03-02', '2015-03-02 13:23:17', 0),
(165, 111, '2015-03-02', '2015-03-02 13:23:29', 0),
(166, 111, '2015-03-02', '2015-03-02 13:23:41', 0),
(167, 1, '2015-03-02', '2015-03-02 13:24:42', 0),
(168, 111, '2015-03-02', '2015-03-02 13:25:04', 0),
(169, 111, '2015-03-02', '2015-03-02 13:25:10', 0),
(170, 111, '2015-03-02', '2015-03-02 13:25:44', 0),
(171, 2, '2015-03-02', '2015-03-02 13:25:46', 1),
(172, 107, '2015-03-02', '2015-03-02 13:25:47', 1),
(173, 7, '2015-03-02', '2015-03-02 13:26:02', 1),
(174, 123, '2015-03-02', '2015-03-02 13:26:10', 1),
(175, 111, '2015-03-02', '2015-03-02 13:31:03', 0),
(176, 1, '2015-03-02', '2015-03-02 13:31:16', 0),
(177, 2, '2015-03-02', '2015-03-02 13:32:00', 1),
(178, 32, '2015-03-02', '2015-03-02 13:39:55', 1),
(179, 33, '2015-03-02', '2015-03-02 13:40:11', 1),
(180, 33, '2015-03-02', '2015-03-02 13:40:42', 1),
(181, 32, '2015-03-02', '2015-03-02 13:40:43', 1),
(182, 32, '2015-03-02', '2015-03-02 13:41:01', 1),
(183, 125, '2015-03-02', '2015-03-02 13:41:01', 1),
(184, 2, '2015-03-02', '2015-03-02 13:41:13', 1),
(185, 1, '2015-03-02', '2015-03-02 13:41:26', 0),
(186, 28, '2015-03-02', '2015-03-02 13:41:53', 1),
(187, 28, '2015-03-02', '2015-03-02 13:46:51', 1),
(188, 28, '2015-03-02', '2015-03-02 13:47:03', 1),
(189, 30, '2015-03-02', '2015-03-02 13:47:04', 1),
(190, 28, '2015-03-02', '2015-03-02 13:47:33', 1),
(191, 28, '2015-03-02', '2015-03-02 13:47:38', 1),
(192, 28, '2015-03-02', '2015-03-02 13:47:42', 1),
(193, 1, '2015-03-02', '2015-03-02 13:47:52', 0),
(194, 1, '2015-03-02', '2015-03-02 13:47:53', 0),
(195, 1, '2015-03-02', '2015-03-02 13:47:53', 0),
(196, 1, '2015-03-02', '2015-03-02 13:47:53', 0),
(197, 1, '2015-03-02', '2015-03-02 13:47:54', 0),
(198, 1, '2015-03-02', '2015-03-02 13:48:04', 0),
(199, 68, '2015-03-02', '2015-03-02 13:49:24', 1),
(200, 68, '2015-03-02', '2015-03-02 13:49:28', 1),
(201, 68, '2015-03-02', '2015-03-02 13:49:36', 1),
(202, 2, '2015-03-02', '2015-03-02 13:49:42', 1),
(203, 1, '2015-03-02', '2015-03-02 13:50:05', 0),
(204, 1, '2015-03-02', '2015-03-02 13:50:06', 0),
(205, 1, '2015-03-02', '2015-03-02 13:51:38', 1),
(206, 1, '2015-03-02', '2015-03-02 13:54:52', 0),
(207, 1, '2015-03-02', '2015-03-02 13:55:02', 1),
(208, 1, '2015-03-02', '2015-03-02 13:55:59', 1),
(209, 1, '2015-03-02', '2015-03-02 13:56:19', 1),
(210, 1, '2015-03-02', '2015-03-02 13:57:16', 1),
(211, 1, '2015-03-02', '2015-03-02 13:58:09', 1),
(212, 1, '2015-03-02', '2015-03-02 13:58:58', 1),
(213, 1, '2015-03-02', '2015-03-02 13:59:42', 0),
(214, 111, '2015-03-02', '2015-03-02 14:00:00', 0),
(215, 2, '2015-03-02', '2015-03-02 14:00:02', 1),
(216, 1, '2015-03-02', '2015-03-02 14:00:07', 1),
(217, 1, '2015-03-02', '2015-03-02 14:00:20', 1),
(218, 1, '2015-03-02', '2015-03-02 14:02:08', 1),
(219, 1, '2015-03-02', '2015-03-02 14:02:12', 1),
(220, 1, '2015-03-02', '2015-03-02 14:03:30', 0),
(221, 111, '2015-03-02', '2015-03-02 14:04:03', 0),
(222, 2, '2015-03-02', '2015-03-02 14:04:04', 1),
(223, 1, '2015-03-02', '2015-03-02 14:04:07', 1),
(224, 1, '2015-03-02', '2015-03-02 14:04:18', 1),
(225, 1, '2015-03-02', '2015-03-02 14:04:45', 1),
(226, 1, '2015-03-02', '2015-03-02 14:04:46', 1),
(227, 1, '2015-03-02', '2015-03-02 14:05:11', 1),
(228, 1, '2015-03-02', '2015-03-02 14:05:12', 1),
(229, 1, '2015-03-02', '2015-03-02 14:05:21', 1),
(230, 1, '2015-03-02', '2015-03-02 14:18:41', 1),
(231, 1, '2015-03-02', '2015-03-02 14:19:04', 1),
(232, 1, '2015-03-02', '2015-03-02 14:19:08', 1),
(233, 1, '2015-03-02', '2015-03-02 14:19:18', 1),
(234, 1, '2015-03-02', '2015-03-02 14:19:28', 1),
(235, 1, '2015-03-02', '2015-03-02 14:21:58', 1),
(236, 1, '2015-03-02', '2015-03-02 14:22:02', 1),
(237, 2, '2015-03-02', '2015-03-02 14:23:43', 1),
(238, 28, '2015-03-02', '2015-03-02 14:23:45', 1),
(239, 28, '2015-03-02', '2015-03-02 14:23:54', 1),
(240, 30, '2015-03-02', '2015-03-02 14:23:54', 1),
(241, 30, '2015-03-02', '2015-03-02 14:24:00', 1),
(242, 1, '2015-03-02', '2015-03-02 14:24:08', 1),
(243, 2, '2015-03-02', '2015-03-02 14:24:11', 1),
(244, 28, '2015-03-02', '2015-03-02 14:24:16', 1),
(245, 31, '2015-03-02', '2015-03-02 14:24:22', 1),
(246, 28, '2015-03-02', '2015-03-02 14:24:28', 1),
(247, 28, '2015-03-02', '2015-03-02 14:24:43', 1),
(248, 28, '2015-03-02', '2015-03-02 14:24:46', 1),
(249, 1, '2015-03-02', '2015-03-02 14:24:49', 1),
(250, 1, '2015-03-02', '2015-03-02 14:25:03', 1),
(251, 2, '2015-03-02', '2015-03-02 14:26:34', 1),
(252, 32, '2015-03-02', '2015-03-02 14:26:45', 1),
(253, 1, '2015-03-02', '2015-03-02 14:26:51', 1),
(254, 1, '2015-03-02', '2015-03-02 14:27:31', 1),
(255, 2, '2015-03-02', '2015-03-02 14:27:38', 1),
(256, 32, '2015-03-02', '2015-03-02 14:27:42', 1),
(257, 32, '2015-03-02', '2015-03-02 14:27:47', 1),
(258, 125, '2015-03-02', '2015-03-02 14:27:47', 1),
(259, 2, '2015-03-02', '2015-03-02 14:28:18', 1),
(260, 28, '2015-03-02', '2015-03-02 14:28:24', 1),
(261, 28, '2015-03-02', '2015-03-02 14:28:30', 1),
(262, 28, '2015-03-02', '2015-03-02 14:28:34', 1),
(263, 30, '2015-03-02', '2015-03-02 14:28:34', 1),
(264, 28, '2015-03-02', '2015-03-02 14:28:53', 1),
(265, 28, '2015-03-02', '2015-03-02 14:29:07', 1),
(266, 28, '2015-03-02', '2015-03-02 14:29:10', 1),
(267, 2, '2015-03-02', '2015-03-02 14:29:13', 1),
(268, 32, '2015-03-02', '2015-03-02 14:29:18', 1),
(269, 32, '2015-03-02', '2015-03-02 14:29:23', 1),
(270, 2, '2015-03-02', '2015-03-02 14:29:38', 1),
(271, 32, '2015-03-02', '2015-03-02 14:29:41', 1),
(272, 32, '2015-03-02', '2015-03-02 14:29:51', 1),
(273, 32, '2015-03-02', '2015-03-02 14:30:11', 1),
(274, 2, '2015-03-02', '2015-03-02 14:30:12', 1),
(275, 32, '2015-03-02', '2015-03-02 14:30:41', 1),
(276, 32, '2015-03-02', '2015-03-02 14:30:59', 1),
(277, 32, '2015-03-02', '2015-03-02 14:31:16', 1),
(278, 32, '2015-03-02', '2015-03-02 14:31:20', 1),
(279, 2, '2015-03-02', '2015-03-02 14:31:23', 1),
(280, 28, '2015-03-02', '2015-03-02 14:31:26', 1),
(281, 28, '2015-03-02', '2015-03-02 14:31:30', 1),
(282, 2, '2015-03-02', '2015-03-02 14:31:34', 1),
(283, 32, '2015-03-02', '2015-03-02 14:31:36', 1),
(284, 32, '2015-03-02', '2015-03-02 14:31:41', 1),
(285, 32, '2015-03-02', '2015-03-02 14:31:48', 1),
(286, 32, '2015-03-02', '2015-03-02 14:31:49', 1),
(287, 32, '2015-03-02', '2015-03-02 14:31:54', 1),
(288, 126, '2015-03-02', '2015-03-02 14:31:54', 1),
(289, 2, '2015-03-02', '2015-03-02 14:32:01', 1),
(290, 28, '2015-03-02', '2015-03-02 14:32:04', 1),
(291, 28, '2015-03-02', '2015-03-02 14:32:09', 1),
(292, 30, '2015-03-02', '2015-03-02 14:32:10', 1),
(293, 28, '2015-03-02', '2015-03-02 14:32:16', 1),
(294, 28, '2015-03-02', '2015-03-02 14:32:20', 1),
(295, 28, '2015-03-02', '2015-03-02 14:32:23', 1),
(296, 1, '2015-03-02', '2015-03-02 14:32:25', 1),
(297, 28, '2015-03-02', '2015-03-02 14:32:55', 1),
(298, 1, '2015-03-02', '2015-03-02 14:32:58', 1),
(299, 2, '2015-03-02', '2015-03-02 14:35:07', 1),
(300, 32, '2015-03-02', '2015-03-02 14:35:12', 1),
(301, 32, '2015-03-02', '2015-03-02 14:35:15', 1),
(302, 126, '2015-03-02', '2015-03-02 14:35:16', 1),
(303, 126, '2015-03-02', '2015-03-02 14:36:23', 1),
(304, 126, '2015-03-02', '2015-03-02 14:46:33', 1),
(305, 126, '2015-03-02', '2015-03-02 14:46:33', 1),
(306, 126, '2015-03-02', '2015-03-02 14:48:14', 1),
(307, 126, '2015-03-02', '2015-03-02 14:48:15', 1),
(308, 126, '2015-03-02', '2015-03-02 14:49:08', 1),
(309, 126, '2015-03-02', '2015-03-02 14:49:08', 1),
(310, 126, '2015-03-02', '2015-03-02 14:49:37', 1),
(311, 126, '2015-03-02', '2015-03-02 14:49:37', 1),
(312, 126, '2015-03-02', '2015-03-02 14:50:15', 1),
(313, 126, '2015-03-02', '2015-03-02 14:50:15', 1),
(314, 126, '2015-03-02', '2015-03-02 14:51:38', 1),
(315, 126, '2015-03-02', '2015-03-02 14:51:39', 1),
(316, 126, '2015-03-02', '2015-03-02 14:52:35', 1),
(317, 126, '2015-03-02', '2015-03-02 14:52:35', 1),
(318, 126, '2015-03-02', '2015-03-02 14:54:21', 1),
(319, 126, '2015-03-02', '2015-03-02 14:54:22', 1),
(320, 126, '2015-03-02', '2015-03-02 14:55:29', 1),
(321, 126, '2015-03-02', '2015-03-02 14:55:29', 1),
(322, 126, '2015-03-02', '2015-03-02 14:56:31', 1),
(323, 126, '2015-03-02', '2015-03-02 14:56:31', 1),
(324, 126, '2015-03-02', '2015-03-02 14:57:15', 1),
(325, 126, '2015-03-02', '2015-03-02 14:57:15', 1),
(326, 126, '2015-03-02', '2015-03-02 14:57:55', 1),
(327, 126, '2015-03-02', '2015-03-02 14:57:55', 1),
(328, 126, '2015-03-02', '2015-03-02 15:03:17', 1),
(329, 126, '2015-03-02', '2015-03-02 15:03:17', 1),
(330, 126, '2015-03-02', '2015-03-02 15:04:23', 1),
(331, 126, '2015-03-02', '2015-03-02 15:04:23', 1),
(332, 126, '2015-03-02', '2015-03-02 15:04:45', 1),
(333, 126, '2015-03-02', '2015-03-02 15:04:45', 1),
(334, 126, '2015-03-02', '2015-03-02 15:07:20', 1),
(335, 126, '2015-03-02', '2015-03-02 15:07:21', 1),
(336, 126, '2015-03-02', '2015-03-02 15:09:18', 1),
(337, 126, '2015-03-02', '2015-03-02 15:09:19', 1),
(338, 126, '2015-03-02', '2015-03-02 15:11:27', 1),
(339, 126, '2015-03-02', '2015-03-02 15:11:28', 1),
(340, 126, '2015-03-02', '2015-03-02 15:18:27', 1),
(341, 126, '2015-03-02', '2015-03-02 15:18:28', 1),
(342, 126, '2015-03-02', '2015-03-02 15:23:48', 1),
(343, 126, '2015-03-02', '2015-03-02 15:23:48', 1),
(344, 120, '2015-03-02', '2015-03-02 15:27:30', 1),
(345, 120, '2015-03-02', '2015-03-02 15:27:40', 1),
(346, 120, '2015-03-02', '2015-03-02 15:27:49', 1),
(347, 120, '2015-03-02', '2015-03-02 15:27:49', 1),
(348, 126, '2015-03-02', '2015-03-02 15:30:47', 1),
(349, 126, '2015-03-02', '2015-03-02 15:30:48', 1),
(350, 120, '2015-03-02', '2015-03-02 15:31:13', 1),
(351, 120, '2015-03-02', '2015-03-02 15:31:25', 1),
(352, 120, '2015-03-02', '2015-03-02 15:31:30', 1),
(353, 120, '2015-03-02', '2015-03-02 15:31:35', 1),
(354, 120, '2015-03-02', '2015-03-02 15:31:44', 1),
(355, 120, '2015-03-02', '2015-03-02 15:31:45', 1),
(356, 120, '2015-03-02', '2015-03-02 15:31:46', 1),
(357, 120, '2015-03-02', '2015-03-02 15:31:46', 1),
(358, 120, '2015-03-02', '2015-03-02 15:31:46', 1),
(359, 120, '2015-03-02', '2015-03-02 15:31:46', 1),
(360, 120, '2015-03-02', '2015-03-02 15:32:07', 1),
(361, 120, '2015-03-02', '2015-03-02 15:32:07', 1),
(362, 120, '2015-03-02', '2015-03-02 15:32:08', 1),
(363, 120, '2015-03-02', '2015-03-02 15:32:08', 1),
(364, 120, '2015-03-02', '2015-03-02 15:32:08', 1),
(365, 120, '2015-03-02', '2015-03-02 15:32:21', 1),
(366, 120, '2015-03-02', '2015-03-02 15:32:21', 1),
(367, 120, '2015-03-02', '2015-03-02 15:32:21', 1),
(368, 120, '2015-03-02', '2015-03-02 15:32:22', 1),
(369, 120, '2015-03-02', '2015-03-02 15:32:22', 1),
(370, 120, '2015-03-02', '2015-03-02 15:32:27', 1),
(371, 120, '2015-03-02', '2015-03-02 15:32:27', 1),
(372, 120, '2015-03-02', '2015-03-02 15:32:27', 1),
(373, 120, '2015-03-02', '2015-03-02 15:32:27', 1),
(374, 120, '2015-03-02', '2015-03-02 15:32:28', 1),
(375, 120, '2015-03-02', '2015-03-02 15:32:33', 1),
(376, 120, '2015-03-02', '2015-03-02 15:32:33', 1),
(377, 120, '2015-03-02', '2015-03-02 15:32:33', 1),
(378, 120, '2015-03-02', '2015-03-02 15:32:33', 1),
(379, 120, '2015-03-02', '2015-03-02 15:32:33', 1),
(380, 120, '2015-03-02', '2015-03-02 15:32:40', 1),
(381, 120, '2015-03-02', '2015-03-02 15:32:40', 1),
(382, 120, '2015-03-02', '2015-03-02 15:32:40', 1),
(383, 120, '2015-03-02', '2015-03-02 15:32:40', 1),
(384, 120, '2015-03-02', '2015-03-02 15:32:40', 1),
(385, 120, '2015-03-02', '2015-03-02 15:32:46', 1),
(386, 120, '2015-03-02', '2015-03-02 15:32:46', 1),
(387, 120, '2015-03-02', '2015-03-02 15:32:46', 1),
(388, 120, '2015-03-02', '2015-03-02 15:32:46', 1),
(389, 120, '2015-03-02', '2015-03-02 15:32:47', 1),
(390, 126, '2015-03-02', '2015-03-02 15:33:20', 1),
(391, 126, '2015-03-02', '2015-03-02 15:33:21', 1),
(392, 120, '2015-03-02', '2015-03-02 15:33:29', 1),
(393, 120, '2015-03-02', '2015-03-02 15:33:29', 1),
(394, 120, '2015-03-02', '2015-03-02 15:33:30', 1),
(395, 120, '2015-03-02', '2015-03-02 15:33:30', 1),
(396, 120, '2015-03-02', '2015-03-02 15:33:30', 1),
(397, 120, '2015-03-02', '2015-03-02 15:34:12', 1),
(398, 120, '2015-03-02', '2015-03-02 15:34:12', 1),
(399, 120, '2015-03-02', '2015-03-02 15:34:12', 1),
(400, 120, '2015-03-02', '2015-03-02 15:34:12', 1),
(401, 120, '2015-03-02', '2015-03-02 15:34:12', 1),
(402, 120, '2015-03-02', '2015-03-02 15:34:17', 1),
(403, 120, '2015-03-02', '2015-03-02 15:34:17', 1),
(404, 120, '2015-03-02', '2015-03-02 15:34:17', 1),
(405, 120, '2015-03-02', '2015-03-02 15:34:17', 1),
(406, 120, '2015-03-02', '2015-03-02 15:34:17', 1),
(407, 120, '2015-03-02', '2015-03-02 15:34:24', 1),
(408, 120, '2015-03-02', '2015-03-02 15:34:24', 1),
(409, 120, '2015-03-02', '2015-03-02 15:34:25', 1),
(410, 120, '2015-03-02', '2015-03-02 15:34:25', 1),
(411, 120, '2015-03-02', '2015-03-02 15:34:25', 1),
(412, 126, '2015-03-02', '2015-03-02 15:35:01', 1),
(413, 126, '2015-03-02', '2015-03-02 15:35:01', 1),
(414, 126, '2015-03-02', '2015-03-02 15:35:45', 1),
(415, 126, '2015-03-02', '2015-03-02 15:35:45', 1),
(416, 126, '2015-03-02', '2015-03-02 15:37:10', 1),
(417, 126, '2015-03-02', '2015-03-02 15:37:10', 1),
(418, 126, '2015-03-02', '2015-03-02 15:39:37', 1),
(419, 126, '2015-03-02', '2015-03-02 15:39:37', 1),
(420, 126, '2015-03-02', '2015-03-02 15:40:44', 1),
(421, 126, '2015-03-02', '2015-03-02 15:40:44', 1),
(422, 126, '2015-03-02', '2015-03-02 15:43:56', 1),
(423, 126, '2015-03-02', '2015-03-02 15:43:57', 1),
(424, 126, '2015-03-02', '2015-03-02 15:47:01', 1),
(425, 126, '2015-03-02', '2015-03-02 15:47:01', 1),
(426, 126, '2015-03-02', '2015-03-02 15:47:37', 1),
(427, 126, '2015-03-02', '2015-03-02 15:47:48', 1),
(428, 126, '2015-03-02', '2015-03-02 15:48:10', 1),
(429, 126, '2015-03-02', '2015-03-02 15:48:10', 1),
(430, 126, '2015-03-02', '2015-03-02 15:48:16', 1),
(431, 2, '2015-03-02', '2015-03-02 15:50:30', 1),
(432, 7, '2015-03-02', '2015-03-02 15:50:39', 1),
(433, 1, '2015-03-02', '2015-03-02 15:50:46', 1),
(434, 1, '2015-03-02', '2015-03-02 15:50:55', 1),
(435, 2, '2015-03-02', '2015-03-02 15:51:07', 1),
(436, 7, '2015-03-02', '2015-03-02 15:51:14', 1),
(437, 123, '2015-03-02', '2015-03-02 15:51:18', 1),
(438, 7, '2015-03-02', '2015-03-02 15:51:23', 1),
(439, 2, '2015-03-02', '2015-03-02 15:51:25', 1),
(440, 1, '2015-03-02', '2015-03-02 15:51:27', 1),
(441, 7, '2015-03-02', '2015-03-02 15:51:28', 1),
(442, 2, '2015-03-02', '2015-03-02 15:51:29', 1),
(443, 126, '2015-03-02', '2015-03-02 15:51:31', 1),
(444, 32, '2015-03-02', '2015-03-02 15:51:53', 1),
(445, 1, '2015-03-02', '2015-03-02 15:51:59', 1),
(446, 1, '2015-03-02', '2015-03-02 15:52:05', 1),
(447, 2, '2015-03-02', '2015-03-02 15:52:10', 1),
(448, 32, '2015-03-02', '2015-03-02 15:52:14', 1),
(449, 32, '2015-03-02', '2015-03-02 15:52:21', 1),
(450, 32, '2015-03-02', '2015-03-02 15:52:25', 1),
(451, 102, '2015-03-02', '2015-03-02 15:52:32', 1),
(452, 32, '2015-03-02', '2015-03-02 15:52:37', 1),
(453, 1, '2015-03-02', '2015-03-02 15:52:38', 1),
(454, 32, '2015-03-02', '2015-03-02 15:52:46', 1),
(455, 2, '2015-03-02', '2015-03-02 15:52:48', 1),
(456, 1, '2015-03-02', '2015-03-02 15:52:49', 1),
(457, 1, '2015-03-02', '2015-03-02 15:52:51', 1),
(458, 32, '2015-03-02', '2015-03-02 15:52:52', 1),
(459, 126, '2015-03-02', '2015-03-02 15:52:53', 1),
(460, 1, '2015-03-02', '2015-03-02 15:53:29', 1),
(461, 1, '2015-03-02', '2015-03-02 15:53:32', 1),
(462, 1, '2015-03-02', '2015-03-02 15:53:46', 1),
(463, 1, '2015-03-02', '2015-03-02 15:54:10', 1),
(464, 2, '2015-03-02', '2015-03-02 15:55:00', 1),
(465, 7, '2015-03-02', '2015-03-02 15:55:03', 1),
(466, 1, '2015-03-02', '2015-03-02 15:55:11', 1),
(467, 7, '2015-03-02', '2015-03-02 15:55:13', 1),
(468, 123, '2015-03-02', '2015-03-02 15:55:16', 1),
(469, 7, '2015-03-02', '2015-03-02 15:55:18', 1),
(470, 126, '2015-03-02', '2015-03-02 15:55:42', 1),
(471, 126, '2015-03-02', '2015-03-02 15:55:48', 1),
(472, 32, '2015-03-02', '2015-03-02 15:55:50', 1),
(473, 1, '2015-03-02', '2015-03-02 15:56:10', 1),
(474, 1, '2015-03-02', '2015-03-02 15:56:13', 1),
(475, 1, '2015-03-02', '2015-03-02 15:56:21', 1),
(476, 1, '2015-03-02', '2015-03-02 15:56:32', 1),
(477, 1, '2015-03-02', '2015-03-02 15:56:47', 1),
(478, 1, '2015-03-02', '2015-03-02 15:56:53', 1),
(479, 126, '2015-03-02', '2015-03-02 15:57:02', 1),
(480, 1, '2015-03-02', '2015-03-02 16:02:38', 1),
(481, 1, '2015-03-02', '2015-03-02 16:02:49', 1),
(482, 32, '2015-03-02', '2015-03-02 16:03:14', 1),
(483, 32, '2015-03-02', '2015-03-02 16:03:22', 1),
(484, 126, '2015-03-02', '2015-03-02 16:03:22', 1),
(485, 32, '2015-03-02', '2015-03-02 16:03:33', 1),
(486, 32, '2015-03-02', '2015-03-02 16:03:40', 1),
(487, 125, '2015-03-02', '2015-03-02 16:03:40', 1),
(488, 32, '2015-03-02', '2015-03-02 16:03:44', 1),
(489, 32, '2015-03-02', '2015-03-02 16:03:50', 1),
(490, 32, '2015-03-02', '2015-03-02 16:03:57', 1),
(491, 32, '2015-03-02', '2015-03-02 16:03:57', 1),
(492, 1, '2015-03-02', '2015-03-02 16:04:02', 1),
(493, 1, '2015-03-02', '2015-03-02 16:04:16', 1),
(494, 1, '2015-03-02', '2015-03-02 16:04:29', 1),
(495, 2, '2015-03-02', '2015-03-02 16:04:51', 1),
(496, 28, '2015-03-02', '2015-03-02 16:04:54', 1),
(497, 28, '2015-03-02', '2015-03-02 16:04:59', 1),
(498, 28, '2015-03-02', '2015-03-02 16:05:02', 1),
(499, 30, '2015-03-02', '2015-03-02 16:05:16', 1),
(500, 28, '2015-03-02', '2015-03-02 16:05:33', 1),
(501, 28, '2015-03-02', '2015-03-02 16:05:35', 1),
(502, 28, '2015-03-02', '2015-03-02 16:05:41', 1),
(503, 30, '2015-03-02', '2015-03-02 16:05:41', 1),
(504, 28, '2015-03-02', '2015-03-02 16:05:45', 1),
(505, 28, '2015-03-02', '2015-03-02 16:05:50', 1),
(506, 28, '2015-03-02', '2015-03-02 16:05:52', 1),
(507, 1, '2015-03-02', '2015-03-02 16:06:03', 1),
(508, 1, '2015-03-02', '2015-03-02 16:06:08', 1),
(509, 1, '2015-03-02', '2015-03-02 16:06:26', 1),
(510, 1, '2015-03-02', '2015-03-02 16:06:26', 1),
(511, 1, '2015-03-02', '2015-03-02 16:07:24', 1),
(512, 1, '2015-03-02', '2015-03-02 16:07:24', 1),
(513, 2, '2015-03-02', '2015-03-02 16:07:29', 1),
(514, 1, '2015-03-02', '2015-03-02 16:07:35', 1),
(515, 1, '2015-03-02', '2015-03-02 16:07:40', 1),
(516, 2, '2015-03-02', '2015-03-02 16:07:46', 1),
(517, 4, '2015-03-02', '2015-03-02 16:07:49', 1),
(518, 2, '2015-03-02', '2015-03-02 16:07:52', 1),
(519, 7, '2015-03-02', '2015-03-02 16:07:56', 1),
(520, 123, '2015-03-02', '2015-03-02 16:08:29', 1),
(521, 7, '2015-03-02', '2015-03-02 16:08:35', 1),
(522, 6, '2015-03-02', '2015-03-02 16:09:12', 1),
(523, 7, '2015-03-02', '2015-03-02 16:09:12', 1),
(524, 127, '2015-03-02', '2015-03-02 16:09:17', 1),
(525, 7, '2015-03-02', '2015-03-02 16:09:31', 1),
(526, 6, '2015-03-02', '2015-03-02 16:10:06', 1),
(527, 7, '2015-03-02', '2015-03-02 16:10:06', 1),
(528, 1, '2015-03-02', '2015-03-02 16:10:15', 1),
(529, 128, '2015-03-02', '2015-03-02 16:10:25', 1),
(530, 1, '2015-03-02', '2015-03-02 16:11:28', 1),
(531, 1, '2015-03-02', '2015-03-02 16:11:35', 1),
(532, 1, '2015-03-02', '2015-03-02 16:11:44', 1),
(533, 2, '2015-03-02', '2015-03-02 16:11:54', 1),
(534, 1, '2015-03-02', '2015-03-02 21:47:27', 1),
(535, 1, '2015-03-02', '2015-03-02 21:48:58', 1),
(536, 2, '2015-03-02', '2015-03-02 21:49:10', 1),
(537, 7, '2015-03-02', '2015-03-02 21:49:12', 1),
(538, 127, '2015-03-02', '2015-03-02 21:49:17', 1),
(539, 1, '2015-03-02', '2015-03-02 21:51:45', 1),
(540, 1, '2015-03-02', '2015-03-02 21:51:45', 1),
(541, 1, '2015-03-02', '2015-03-02 21:51:53', 1),
(542, 1, '2015-03-02', '2015-03-02 21:52:57', 1),
(543, 1, '2015-03-02', '2015-03-02 21:52:57', 1),
(544, 1, '2015-03-02', '2015-03-02 21:53:32', 1),
(545, 1, '2015-03-02', '2015-03-02 21:53:32', 1),
(546, 1, '2015-03-02', '2015-03-02 21:54:47', 1),
(547, 1, '2015-03-02', '2015-03-02 21:54:48', 1),
(548, 1, '2015-03-02', '2015-03-02 21:55:53', 1),
(549, 1, '2015-03-02', '2015-03-02 21:55:54', 1),
(550, 1, '2015-03-02', '2015-03-02 21:56:45', 1),
(551, 1, '2015-03-02', '2015-03-02 21:56:46', 1),
(552, 1, '2015-03-02', '2015-03-02 21:58:05', 1),
(553, 1, '2015-03-02', '2015-03-02 21:58:05', 1),
(554, 1, '2015-03-02', '2015-03-02 21:58:43', 1),
(555, 1, '2015-03-02', '2015-03-02 21:58:43', 1),
(556, 1, '2015-03-02', '2015-03-02 21:59:52', 1),
(557, 1, '2015-03-02', '2015-03-02 21:59:53', 1),
(558, 120, '2015-03-02', '2015-03-02 22:01:25', 1),
(559, 120, '2015-03-02', '2015-03-02 22:01:29', 1),
(560, 120, '2015-03-02', '2015-03-02 22:01:34', 1),
(561, 120, '2015-03-02', '2015-03-02 22:01:41', 1),
(562, 120, '2015-03-02', '2015-03-02 22:01:51', 1),
(563, 120, '2015-03-02', '2015-03-02 22:01:53', 1),
(564, 120, '2015-03-02', '2015-03-02 22:01:53', 1),
(565, 120, '2015-03-02', '2015-03-02 22:01:53', 1),
(566, 120, '2015-03-02', '2015-03-02 22:01:53', 1),
(567, 120, '2015-03-02', '2015-03-02 22:01:53', 1),
(568, 127, '2015-03-02', '2015-03-02 22:02:00', 1),
(569, 120, '2015-03-02', '2015-03-02 22:02:25', 1),
(570, 120, '2015-03-02', '2015-03-02 22:02:25', 1),
(571, 120, '2015-03-02', '2015-03-02 22:02:25', 1),
(572, 120, '2015-03-02', '2015-03-02 22:02:25', 1),
(573, 120, '2015-03-02', '2015-03-02 22:02:25', 1),
(574, 1, '2015-03-02', '2015-03-02 22:02:55', 1),
(575, 1, '2015-03-02', '2015-03-02 22:02:55', 1),
(576, 1, '2015-03-02', '2015-03-02 22:03:05', 1),
(577, 1, '2015-03-02', '2015-03-02 22:03:49', 1),
(578, 1, '2015-03-02', '2015-03-02 22:03:50', 1),
(579, 1, '2015-03-02', '2015-03-02 22:06:09', 1),
(580, 1, '2015-03-02', '2015-03-02 22:06:09', 1),
(581, 1, '2015-03-02', '2015-03-02 22:08:43', 1),
(582, 1, '2015-03-02', '2015-03-02 22:08:44', 1),
(583, 1, '2015-03-02', '2015-03-02 22:09:39', 1),
(584, 1, '2015-03-02', '2015-03-02 22:09:40', 1),
(585, 1, '2015-03-02', '2015-03-02 22:10:38', 1),
(586, 1, '2015-03-02', '2015-03-02 22:11:10', 1),
(587, 1, '2015-03-02', '2015-03-02 22:11:11', 1),
(588, 1, '2015-03-02', '2015-03-02 22:12:40', 1),
(589, 1, '2015-03-02', '2015-03-02 22:12:41', 1),
(590, 120, '2015-03-02', '2015-03-02 22:15:08', 1),
(591, 55, '2015-03-02', '2015-03-02 22:15:46', 1),
(592, 55, '2015-03-02', '2015-03-02 22:15:53', 1),
(593, 55, '2015-03-02', '2015-03-02 22:15:53', 1),
(594, 120, '2015-03-02', '2015-03-02 22:17:31', 1),
(595, 120, '2015-03-02', '2015-03-02 22:17:35', 1),
(596, 120, '2015-03-02', '2015-03-02 22:17:43', 1),
(597, 120, '2015-03-02', '2015-03-02 22:17:57', 1),
(598, 120, '2015-03-02', '2015-03-02 22:17:59', 1),
(599, 120, '2015-03-02', '2015-03-02 22:18:00', 1),
(600, 120, '2015-03-02', '2015-03-02 22:18:03', 1),
(601, 1, '2015-03-02', '2015-03-02 22:19:12', 1),
(602, 1, '2015-03-02', '2015-03-02 22:19:12', 1),
(603, 1, '2015-03-02', '2015-03-02 22:20:00', 1),
(604, 1, '2015-03-02', '2015-03-02 22:20:00', 1),
(605, 120, '2015-03-02', '2015-03-02 22:20:29', 1),
(606, 120, '2015-03-02', '2015-03-02 22:20:35', 1),
(607, 120, '2015-03-02', '2015-03-02 22:20:44', 1),
(608, 120, '2015-03-02', '2015-03-02 22:20:50', 1),
(609, 120, '2015-03-02', '2015-03-02 22:21:40', 1),
(610, 120, '2015-03-02', '2015-03-02 22:21:50', 1),
(611, 120, '2015-03-02', '2015-03-02 22:21:59', 1),
(612, 120, '2015-03-02', '2015-03-02 22:22:00', 1),
(613, 1, '2015-03-02', '2015-03-02 22:22:38', 1),
(614, 1, '2015-03-02', '2015-03-02 22:22:38', 1),
(615, 1, '2015-03-02', '2015-03-02 22:23:03', 1),
(616, 1, '2015-03-02', '2015-03-02 22:23:04', 1),
(617, 1, '2015-03-02', '2015-03-02 22:23:21', 1),
(618, 1, '2015-03-02', '2015-03-02 22:23:22', 1),
(619, 1, '2015-03-02', '2015-03-02 22:23:22', 1),
(620, 1, '2015-03-02', '2015-03-02 22:24:34', 1),
(621, 1, '2015-03-02', '2015-03-02 22:24:34', 1),
(622, 1, '2015-03-02', '2015-03-02 22:25:07', 1),
(623, 1, '2015-03-02', '2015-03-02 22:25:22', 1),
(624, 1, '2015-03-02', '2015-03-02 22:25:46', 1),
(625, 1, '2015-03-02', '2015-03-02 22:26:02', 1),
(626, 1, '2015-03-02', '2015-03-02 22:26:37', 1),
(627, 1, '2015-03-02', '2015-03-02 22:27:44', 1),
(628, 1, '2015-03-02', '2015-03-02 22:27:54', 1),
(629, 1, '2015-03-02', '2015-03-02 22:28:12', 1),
(630, 1, '2015-03-02', '2015-03-02 22:28:13', 1),
(631, 1, '2015-03-02', '2015-03-02 22:28:23', 1),
(632, 1, '2015-03-02', '2015-03-02 22:28:35', 1),
(633, 1, '2015-03-02', '2015-03-02 22:29:15', 1),
(634, 1, '2015-03-02', '2015-03-02 22:29:17', 1),
(635, 1, '2015-03-02', '2015-03-02 22:29:48', 1),
(636, 1, '2015-03-02', '2015-03-02 22:29:49', 1),
(637, 1, '2015-03-02', '2015-03-02 22:30:08', 1),
(638, 1, '2015-03-02', '2015-03-02 22:30:36', 1),
(639, 1, '2015-03-02', '2015-03-02 22:32:01', 1),
(640, 1, '2015-03-02', '2015-03-02 22:32:02', 1),
(641, 1, '2015-03-02', '2015-03-02 22:32:08', 1),
(642, 1, '2015-03-02', '2015-03-02 22:32:16', 1),
(643, 1, '2015-03-02', '2015-03-02 22:32:36', 1),
(644, 1, '2015-03-02', '2015-03-02 22:32:36', 1),
(645, 1, '2015-03-02', '2015-03-02 22:32:41', 1),
(646, 1, '2015-03-02', '2015-03-02 22:33:00', 1),
(647, 1, '2015-03-02', '2015-03-02 22:33:20', 1),
(648, 1, '2015-03-02', '2015-03-02 22:33:21', 1),
(649, 1, '2015-03-02', '2015-03-02 22:34:51', 1),
(650, 1, '2015-03-02', '2015-03-02 22:35:04', 1),
(651, 1, '2015-03-02', '2015-03-02 22:35:23', 1),
(652, 1, '2015-03-02', '2015-03-02 22:35:23', 1),
(653, 1, '2015-03-02', '2015-03-02 22:35:43', 1),
(654, 1, '2015-03-02', '2015-03-02 22:35:43', 1),
(655, 1, '2015-03-02', '2015-03-02 22:35:52', 1),
(656, 1, '2015-03-02', '2015-03-02 22:36:18', 1),
(657, 1, '2015-03-02', '2015-03-02 22:36:35', 1),
(658, 1, '2015-03-02', '2015-03-02 22:36:35', 1),
(659, 1, '2015-03-02', '2015-03-02 22:36:55', 1),
(660, 1, '2015-03-02', '2015-03-02 22:36:55', 1),
(661, 1, '2015-03-02', '2015-03-02 22:37:03', 1),
(662, 1, '2015-03-02', '2015-03-02 22:37:29', 1),
(663, 120, '2015-03-02', '2015-03-02 22:37:41', 1),
(664, 120, '2015-03-02', '2015-03-02 22:37:48', 1),
(665, 1, '2015-03-02', '2015-03-02 22:38:13', 1),
(666, 1, '2015-03-02', '2015-03-02 22:38:13', 1),
(667, 1, '2015-03-02', '2015-03-02 22:38:29', 1),
(668, 1, '2015-03-02', '2015-03-02 22:38:29', 1),
(669, 1, '2015-03-02', '2015-03-02 22:38:46', 1),
(670, 1, '2015-03-02', '2015-03-02 22:38:46', 1),
(671, 1, '2015-03-02', '2015-03-02 22:38:53', 1),
(672, 1, '2015-03-02', '2015-03-02 22:39:16', 1),
(673, 1, '2015-03-02', '2015-03-02 22:39:35', 1),
(674, 1, '2015-03-02', '2015-03-02 22:39:35', 1),
(675, 1, '2015-03-02', '2015-03-02 22:39:43', 1),
(676, 1, '2015-03-02', '2015-03-02 22:39:54', 1),
(677, 1, '2015-03-02', '2015-03-02 22:39:56', 1),
(678, 1, '2015-03-02', '2015-03-02 22:40:15', 1),
(679, 1, '2015-03-02', '2015-03-02 22:40:15', 1),
(680, 1, '2015-03-02', '2015-03-02 22:40:37', 1),
(681, 1, '2015-03-02', '2015-03-02 22:40:37', 1),
(682, 1, '2015-03-02', '2015-03-02 22:40:42', 1),
(683, 1, '2015-03-02', '2015-03-02 22:40:59', 1),
(684, 2, '2015-03-02', '2015-03-02 22:41:16', 1),
(685, 7, '2015-03-02', '2015-03-02 22:41:19', 1),
(686, 6, '2015-03-02', '2015-03-02 22:41:50', 1),
(687, 7, '2015-03-02', '2015-03-02 22:41:51', 1),
(688, 6, '2015-03-02', '2015-03-02 22:42:08', 1),
(689, 7, '2015-03-02', '2015-03-02 22:42:08', 1),
(690, 6, '2015-03-02', '2015-03-02 22:42:23', 1),
(691, 7, '2015-03-02', '2015-03-02 22:42:23', 1),
(692, 1, '2015-03-02', '2015-03-02 22:42:31', 1),
(693, 1, '2015-03-02', '2015-03-02 22:42:34', 1),
(694, 2, '2015-03-02', '2015-03-02 22:43:13', 1),
(695, 8, '2015-03-02', '2015-03-02 22:43:16', 1),
(696, 1, '2015-03-02', '2015-03-02 22:43:34', 1),
(697, 1, '2015-03-02', '2015-03-02 22:44:16', 1),
(698, 1, '2015-03-02', '2015-03-02 22:44:17', 1),
(699, 127, '2015-03-02', '2015-03-02 22:44:25', 1),
(700, 1, '2015-03-02', '2015-03-02 22:44:29', 1),
(701, 129, '2015-03-02', '2015-03-02 22:44:31', 1),
(702, 1, '2015-03-02', '2015-03-02 22:44:35', 1),
(703, 131, '2015-03-02', '2015-03-02 22:44:38', 1),
(704, 131, '2015-03-02', '2015-03-02 22:44:40', 1),
(705, 131, '2015-03-02', '2015-03-02 22:45:09', 1),
(706, 131, '2015-03-02', '2015-03-02 22:45:09', 1),
(707, 131, '2015-03-02', '2015-03-02 22:45:17', 1),
(708, 1, '2015-03-02', '2015-03-02 22:45:20', 1),
(709, 1, '2015-03-02', '2015-03-02 22:46:40', 1),
(710, 131, '2015-03-02', '2015-03-02 22:46:46', 1),
(711, 131, '2015-03-02', '2015-03-02 22:46:54', 1),
(712, 131, '2015-03-02', '2015-03-02 22:47:49', 1),
(713, 131, '2015-03-02', '2015-03-02 22:48:11', 1),
(714, 131, '2015-03-02', '2015-03-02 22:48:53', 1),
(715, 131, '2015-03-02', '2015-03-02 22:49:18', 1),
(716, 131, '2015-03-02', '2015-03-02 22:49:43', 1),
(717, 131, '2015-03-02', '2015-03-02 22:50:13', 1),
(718, 2, '2015-03-02', '2015-03-02 22:51:46', 1),
(719, 32, '2015-03-02', '2015-03-02 22:51:49', 1),
(720, 33, '2015-03-02', '2015-03-02 22:51:51', 1),
(721, 33, '2015-03-02', '2015-03-02 22:51:59', 1),
(722, 33, '2015-03-02', '2015-03-02 22:52:07', 1),
(723, 32, '2015-03-02', '2015-03-02 22:52:07', 1),
(724, 2, '2015-03-02', '2015-03-02 22:52:14', 1),
(725, 1, '2015-03-02', '2015-03-02 22:52:17', 1),
(726, 1, '2015-03-02', '2015-03-02 22:52:26', 1),
(727, 1, '2015-03-02', '2015-03-02 22:52:34', 1),
(728, 131, '2015-03-02', '2015-03-02 22:52:36', 1),
(729, 131, '2015-03-02', '2015-03-02 22:52:40', 1),
(730, 131, '2015-03-02', '2015-03-02 22:55:18', 1),
(731, 1, '2015-03-02', '2015-03-02 22:56:38', 1),
(732, 130, '2015-03-03', '2015-03-02 23:00:55', 1),
(733, 130, '2015-03-03', '2015-03-02 23:01:01', 1),
(734, 130, '2015-03-03', '2015-03-02 23:01:23', 1),
(735, 130, '2015-03-03', '2015-03-02 23:01:23', 1),
(736, 130, '2015-03-03', '2015-03-02 23:04:39', 1),
(737, 127, '2015-03-03', '2015-03-02 23:15:20', 1),
(738, 127, '2015-03-03', '2015-03-02 23:15:20', 1),
(739, 127, '2015-03-03', '2015-03-02 23:15:24', 1),
(740, 127, '2015-03-03', '2015-03-02 23:15:33', 1),
(741, 127, '2015-03-03', '2015-03-02 23:16:00', 1),
(742, 127, '2015-03-03', '2015-03-02 23:16:00', 1),
(743, 127, '2015-03-03', '2015-03-02 23:16:18', 1),
(744, 1, '2015-03-03', '2015-03-02 23:20:56', 1),
(745, 127, '2015-03-03', '2015-03-02 23:21:00', 1),
(746, 127, '2015-03-03', '2015-03-02 23:22:44', 1),
(747, 127, '2015-03-03', '2015-03-02 23:22:51', 1),
(748, 127, '2015-03-03', '2015-03-02 23:23:54', 1),
(749, 127, '2015-03-03', '2015-03-02 23:24:18', 1),
(750, 127, '2015-03-03', '2015-03-02 23:24:46', 1),
(751, 127, '2015-03-03', '2015-03-02 23:24:47', 1),
(752, 127, '2015-03-03', '2015-03-02 23:24:48', 1),
(753, 127, '2015-03-03', '2015-03-02 23:24:48', 1),
(754, 127, '2015-03-03', '2015-03-02 23:24:48', 1),
(755, 127, '2015-03-03', '2015-03-02 23:25:22', 1),
(756, 127, '2015-03-03', '2015-03-02 23:25:31', 1),
(757, 127, '2015-03-03', '2015-03-02 23:27:11', 1),
(758, 127, '2015-03-03', '2015-03-02 23:27:11', 1),
(759, 127, '2015-03-03', '2015-03-02 23:27:19', 1),
(760, 127, '2015-03-03', '2015-03-02 23:27:28', 1),
(761, 127, '2015-03-03', '2015-03-02 23:27:54', 1),
(762, 127, '2015-03-03', '2015-03-02 23:31:03', 1),
(763, 127, '2015-03-03', '2015-03-02 23:31:10', 1),
(764, 127, '2015-03-03', '2015-03-02 23:32:11', 1),
(765, 127, '2015-03-03', '2015-03-02 23:32:11', 1),
(766, 127, '2015-03-03', '2015-03-02 23:32:17', 1),
(767, 127, '2015-03-03', '2015-03-02 23:32:30', 1),
(768, 127, '2015-03-03', '2015-03-02 23:33:13', 1),
(769, 127, '2015-03-03', '2015-03-02 23:33:13', 1),
(770, 127, '2015-03-03', '2015-03-02 23:33:18', 1),
(771, 127, '2015-03-03', '2015-03-02 23:33:23', 1),
(772, 127, '2015-03-03', '2015-03-02 23:33:53', 1),
(773, 127, '2015-03-03', '2015-03-02 23:33:54', 1),
(774, 127, '2015-03-03', '2015-03-02 23:33:58', 1),
(775, 127, '2015-03-03', '2015-03-02 23:34:06', 1),
(776, 127, '2015-03-03', '2015-03-02 23:34:27', 1),
(777, 127, '2015-03-03', '2015-03-02 23:34:36', 1),
(778, 127, '2015-03-03', '2015-03-02 23:34:54', 1),
(779, 127, '2015-03-03', '2015-03-02 23:34:55', 1),
(780, 127, '2015-03-03', '2015-03-02 23:35:05', 1),
(781, 127, '2015-03-03', '2015-03-02 23:35:17', 1),
(782, 127, '2015-03-03', '2015-03-02 23:35:43', 1),
(783, 127, '2015-03-03', '2015-03-02 23:35:53', 1),
(784, 127, '2015-03-03', '2015-03-02 23:36:13', 1),
(785, 127, '2015-03-03', '2015-03-02 23:36:13', 1),
(786, 127, '2015-03-03', '2015-03-02 23:36:20', 1),
(787, 127, '2015-03-03', '2015-03-03 13:57:37', 1),
(788, 107, '2015-03-03', '2015-03-03 13:57:38', 1),
(789, 129, '2015-03-03', '2015-03-03 13:58:07', 1),
(790, 129, '2015-03-03', '2015-03-03 13:58:12', 1),
(791, 129, '2015-03-03', '2015-03-03 13:58:32', 1),
(792, 129, '2015-03-03', '2015-03-03 13:58:33', 1),
(793, 129, '2015-03-03', '2015-03-03 14:00:06', 1),
(794, 129, '2015-03-03', '2015-03-03 14:00:06', 1),
(795, 129, '2015-03-03', '2015-03-03 14:00:13', 1),
(796, 1, '2015-03-03', '2015-03-03 14:00:17', 1),
(797, 129, '2015-03-03', '2015-03-03 14:00:22', 1),
(798, 129, '2015-03-03', '2015-03-03 14:00:24', 1),
(799, 129, '2015-03-03', '2015-03-03 14:01:22', 1),
(800, 129, '2015-03-03', '2015-03-03 14:01:22', 1),
(801, 129, '2015-03-03', '2015-03-03 14:02:17', 1),
(802, 129, '2015-03-03', '2015-03-03 14:02:17', 1),
(803, 129, '2015-03-03', '2015-03-03 14:03:39', 1),
(804, 129, '2015-03-03', '2015-03-03 14:03:39', 1),
(805, 129, '2015-03-03', '2015-03-03 14:03:56', 1),
(806, 131, '2015-03-03', '2015-03-03 14:04:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pagethemes`
--

CREATE TABLE IF NOT EXISTS `pagethemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `pagethemes`
--

INSERT INTO `pagethemes` (`ptID`, `ptHandle`, `ptName`, `ptDescription`, `pkgID`) VALUES
(1, 'default', 'Plain Yogurt', 'Plain Yogurt is concrete5''s default theme.', 0),
(2, 'greensalad', 'Green Salad Theme', 'This is concrete5''s Green Salad site theme.', 0),
(3, 'dark_chocolate', 'Dark Chocolate', 'Dark Chocolate is concrete5''s default theme in black.', 0),
(4, 'greek_yogurt', 'Greek Yogurt', 'An elegant theme for concrete5.', 0),
(14, 'MonTheme', '', '', 0),
(18, 'montheme2', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `pagethemestyles`
--

CREATE TABLE IF NOT EXISTS `pagethemestyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pagetypeattributes`
--

CREATE TABLE IF NOT EXISTS `pagetypeattributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pagetypes`
--

CREATE TABLE IF NOT EXISTS `pagetypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `pagetypes`
--

INSERT INTO `pagetypes` (`ctID`, `ctHandle`, `ctIcon`, `ctName`, `ctIsInternal`, `pkgID`) VALUES
(1, 'core_stack', 'main.png', 'Stack', 1, 0),
(2, 'dashboard_primary_five', 'main.png', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', 'main.png', 'Dashboard Header + Four Column', 1, 0),
(4, 'right_sidebar', 'right_sidebar.png', 'Right Sidebar', 0, 0),
(6, 'accueil', 'template3.png', 'Accueil', 0, 0),
(7, 'video', 'template3.png', 'Videos', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pageworkflowprogress`
--

CREATE TABLE IF NOT EXISTS `pageworkflowprogress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccess`
--

CREATE TABLE IF NOT EXISTS `permissionaccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Contenu de la table `permissionaccess`
--

INSERT INTO `permissionaccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentities`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `permissionaccessentities`
--

INSERT INTO `permissionaccessentities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentitygroups`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentitygroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `permissionaccessentitygroups`
--

INSERT INTO `permissionaccessentitygroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentitygroupsets`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentitygroupsets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentitytypecategories`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentitytypecategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `permissionaccessentitytypecategories`
--

INSERT INTO `permissionaccessentitytypecategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 1),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 1),
(6, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentitytypes`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentitytypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `permissionaccessentitytypes`
--

INSERT INTO `permissionaccessentitytypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentityusers`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentityusers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccesslist`
--

CREATE TABLE IF NOT EXISTS `permissionaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `permissionaccesslist`
--

INSERT INTO `permissionaccesslist` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 1, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 1, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(28, 1, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 1, 0, 10),
(32, 1, 0, 10),
(33, 1, 0, 10),
(34, 1, 0, 10),
(35, 2, 0, 10),
(36, 2, 0, 10),
(37, 2, 0, 10),
(38, 2, 0, 10),
(39, 2, 0, 10),
(39, 3, 0, 10),
(40, 2, 0, 10),
(40, 3, 0, 10),
(41, 2, 0, 10),
(42, 2, 0, 10),
(43, 2, 0, 10),
(44, 1, 0, 10),
(44, 2, 0, 10),
(45, 1, 0, 10),
(46, 1, 0, 10),
(47, 1, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 2, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 1, 0, 10),
(58, 1, 0, 10),
(59, 1, 0, 10),
(60, 1, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 1, 0, 10),
(66, 1, 0, 10),
(67, 1, 0, 10),
(68, 1, 0, 10);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessworkflows`
--

CREATE TABLE IF NOT EXISTS `permissionaccessworkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `permissionassignments`
--

CREATE TABLE IF NOT EXISTS `permissionassignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `permissionassignments`
--

INSERT INTO `permissionassignments` (`paID`, `pkID`) VALUES
(1, 17),
(2, 18),
(3, 55),
(4, 56),
(5, 57),
(6, 58),
(7, 60),
(8, 61),
(9, 62),
(10, 63),
(11, 64),
(12, 66),
(13, 67),
(14, 68),
(15, 69),
(16, 70),
(17, 71),
(18, 72);

-- --------------------------------------------------------

--
-- Structure de la table `permissiondurationobjects`
--

CREATE TABLE IF NOT EXISTS `permissiondurationobjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `permissionkeycategories`
--

CREATE TABLE IF NOT EXISTS `permissionkeycategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `permissionkeycategories`
--

INSERT INTO `permissionkeycategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'composer_page', NULL),
(5, 'user', NULL),
(6, 'file_set', NULL),
(7, 'file', NULL),
(8, 'area', NULL),
(9, 'block_type', NULL),
(10, 'block', NULL),
(11, 'admin', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace_newsflow', NULL),
(14, 'basic_workflow', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `permissionkeys`
--

CREATE TABLE IF NOT EXISTS `permissionkeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Contenu de la table `permissionkeys`
--

INSERT INTO `permissionkeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_type', 'Change Page Type', 0, 0, 'Ability to change just the page type for this page, also check out Theme permissions.', 1, 0),
(10, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(11, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site''s Trash.', 1, 0),
(12, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(13, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(14, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(15, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(16, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(17, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(18, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(19, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 8, 0),
(20, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 8, 0),
(21, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 8, 0),
(22, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 8, 0),
(23, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 8, 0),
(24, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area''s custom CSS.', 8, 0),
(25, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 8, 0),
(26, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 8, 0),
(27, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 8, 0),
(28, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 10, 0),
(29, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 10, 0),
(30, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 10, 0),
(31, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 10, 0),
(32, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 10, 0),
(33, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 10, 0),
(34, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 10, 0),
(35, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 6, 0),
(36, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 6, 0),
(37, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 6, 0),
(38, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 6, 0),
(39, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 6, 0),
(40, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 6, 0),
(41, 'delete_file_set', 'Delete File Set', 0, 0, 'Can delete file set.', 6, 0),
(42, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 6, 0),
(43, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 6, 0),
(44, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 7, 0),
(45, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 7, 0),
(46, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 7, 0),
(47, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 7, 0),
(48, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 7, 0),
(49, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 7, 0),
(50, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 7, 0),
(51, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(52, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(53, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(54, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(55, 'access_user_search', 'Access User Search', 0, 1, '', 5, 0),
(56, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 5, 0),
(57, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 5, 0),
(58, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 5, 0),
(59, 'sudo', 'Sign in as User', 0, 0, NULL, 5, 0),
(60, 'delete_user', 'Delete User', 0, 0, NULL, 5, 0),
(61, 'access_group_search', 'Access Group Search', 0, 0, '', 5, 0),
(62, 'edit_groups', 'Edit Groups', 0, 0, '', 5, 0),
(63, 'assign_user_groups', 'Assign Groups to User', 0, 1, '', 5, 0),
(64, 'backup', 'Perform Backups', 0, 0, NULL, 11, 0),
(65, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 11, 0),
(66, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(67, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 11, 0),
(68, 'empty_trash', 'Empty Trash', 0, 0, NULL, 11, 0),
(69, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(70, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(71, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0),
(72, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pilecontents`
--

CREATE TABLE IF NOT EXISTS `pilecontents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `pilecontents`
--

INSERT INTO `pilecontents` (`pcID`, `pID`, `itemID`, `itemType`, `quantity`, `timestamp`, `displayOrder`) VALUES
(1, 1, 15, 'BLOCK', 1, '2014-12-09 16:15:56', 1);

-- --------------------------------------------------------

--
-- Structure de la table `piles`
--

CREATE TABLE IF NOT EXISTS `piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `piles`
--

INSERT INTO `piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1, 1, 1, '2014-12-09 16:15:56', NULL, 'READY');

-- --------------------------------------------------------

--
-- Structure de la table `queuemessages`
--

CREATE TABLE IF NOT EXISTS `queuemessages` (
  `message_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) DEFAULT NULL,
  `body` varchar(8192) NOT NULL,
  `md5` varchar(32) NOT NULL,
  `timeout` decimal(14,0) unsigned DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `queuepageduplicationrelations`
--

CREATE TABLE IF NOT EXISTS `queuepageduplicationrelations` (
  `queue_name` varchar(255) NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `queues`
--

CREATE TABLE IF NOT EXISTS `queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) NOT NULL,
  `timeout` int(5) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `signuprequests`
--

CREATE TABLE IF NOT EXISTS `signuprequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `stacks`
--

CREATE TABLE IF NOT EXISTS `stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `stacks`
--

INSERT INTO `stacks` (`stID`, `stName`, `stType`, `cID`) VALUES
(1, 'Menu', 0, 124);

-- --------------------------------------------------------

--
-- Structure de la table `systemantispamlibraries`
--

CREATE TABLE IF NOT EXISTS `systemantispamlibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `systemcaptchalibraries`
--

CREATE TABLE IF NOT EXISTS `systemcaptchalibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `systemcaptchalibraries`
--

INSERT INTO `systemcaptchalibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `systemnotifications`
--

CREATE TABLE IF NOT EXISTS `systemnotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `systemnotifications`
--

INSERT INTO `systemnotifications` (`snID`, `snTypeID`, `snURL`, `snURL2`, `snDateTime`, `snIsArchived`, `snIsNew`, `snTitle`, `snDescription`, `snBody`) VALUES
(1, 10, '/Concrete5/concrete5.6.3.2/index.php/dashboard/system/backup_restore/update/', NULL, '2015-03-02 13:25:49', 0, 1, 'Une nouvelle version de concrete5 est disponible.', '', '\n\n                <h2>5.6.3.3 Release Notes</h2>\n\n                <p>\n                    Version 5.6.3.3 introduces a lot of bug fixes and some security improvements. It is recommended for all users of concrete5 5.6.x\n               </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href="http://www.concrete5.org/documentation/background/version_history/5-6-3-3/" target="_blank">Full 5.6.3.3 Release Notes</a></h3>\n\n\n                ');

-- --------------------------------------------------------

--
-- Structure de la table `userattributekeys`
--

CREATE TABLE IF NOT EXISTS `userattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `userattributekeys`
--

INSERT INTO `userattributekeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(10, 0, 0, 1, 0, 1, 0, 1, 1),
(11, 0, 0, 1, 0, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `userattributevalues`
--

CREATE TABLE IF NOT EXISTS `userattributevalues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userbannedips`
--

CREATE TABLE IF NOT EXISTS `userbannedips` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `usergroups`
--

CREATE TABLE IF NOT EXISTS `usergroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `useropenids`
--

CREATE TABLE IF NOT EXISTS `useropenids` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissionassigngroupaccesslist`
--

CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissionassigngroupaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissioneditpropertyaccesslist`
--

CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissioneditpropertyattributeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissionusersearchaccesslist`
--

CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissionusersearchaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissionviewattributeaccesslist`
--

CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissionviewattributeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userpointhistory`
--

CREATE TABLE IF NOT EXISTS `userpointhistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `userprivatemessages`
--

CREATE TABLE IF NOT EXISTS `userprivatemessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `userprivatemessagesto`
--

CREATE TABLE IF NOT EXISTS `userprivatemessagesto` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(255) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'Wallaert.kevin@hotmail.fr', '$2a$12$jlcMF8wyY9oinevY1K/EMuBX51o30jgdXNoLk2zfxrppB5k9o9O8e', '1', -1, 1, '2014-12-09 15:43:33', 0, 1425391419, 1425305043, 2130706433, 1425304801, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `usersearchindexattributes`
--

CREATE TABLE IF NOT EXISTS `usersearchindexattributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `usersfriends`
--

CREATE TABLE IF NOT EXISTS `usersfriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uservalidationhashes`
--

CREATE TABLE IF NOT EXISTS `uservalidationhashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `uservalidationhashes`
--

INSERT INTO `uservalidationhashes` (`uvhID`, `uID`, `uHash`, `type`, `uDateGenerated`, `uDateRedeemed`) VALUES
(2, 1, 'e9DlpiZD3QOMGfFn7NJC5HLVq7E0tgYlG4DhfgVNATYvazSnvQUUrHnw2Nboj9Sa', 1, 1425302522, 0);

-- --------------------------------------------------------

--
-- Structure de la table `workflowprogress`
--

CREATE TABLE IF NOT EXISTS `workflowprogress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Structure de la table `workflowprogresscategories`
--

CREATE TABLE IF NOT EXISTS `workflowprogresscategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `workflowprogresscategories`
--

INSERT INTO `workflowprogresscategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `workflowprogresshistory`
--

CREATE TABLE IF NOT EXISTS `workflowprogresshistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Contenu de la table `workflowprogresshistory`
--

INSERT INTO `workflowprogresshistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2014-12-09 16:03:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"1";}'),
(2, 2, '2014-12-09 16:14:06', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"2";}'),
(3, 3, '2014-12-09 16:14:26', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"123";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"3";}'),
(4, 4, '2014-12-09 16:29:44', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"124";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"4";}'),
(5, 5, '2014-12-09 16:30:04', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"4";s:4:"wrID";s:1:"5";}'),
(6, 6, '2014-12-09 16:30:53', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"5";s:4:"wrID";s:1:"6";}'),
(7, 1, '2015-03-02 15:56:47', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"6";s:4:"wrID";s:1:"1";}'),
(8, 2, '2015-03-02 16:02:37', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"7";s:4:"wrID";s:1:"2";}'),
(9, 3, '2015-03-02 16:07:39', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"8";s:4:"wrID";s:1:"3";}'),
(10, 4, '2015-03-02 16:09:11', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"4";}'),
(11, 5, '2015-03-02 16:09:45', 'O:29:"DeletePagePageWorkflowRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"11";s:3:"cID";s:3:"123";s:4:"wrID";s:1:"5";}'),
(12, 6, '2015-03-02 16:10:05', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"6";}'),
(13, 7, '2015-03-02 22:25:21', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"9";s:4:"wrID";s:1:"7";}'),
(14, 8, '2015-03-02 22:37:02', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"17";s:4:"wrID";s:1:"8";}'),
(15, 9, '2015-03-02 22:38:53', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"18";s:4:"wrID";s:1:"9";}'),
(16, 10, '2015-03-02 22:40:59', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"20";s:4:"wrID";s:2:"10";}'),
(17, 11, '2015-03-02 22:41:50', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"129";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"11";}'),
(18, 12, '2015-03-02 22:42:07', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"130";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"12";}'),
(19, 13, '2015-03-02 22:42:23', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"131";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"13";}'),
(20, 14, '2015-03-02 22:43:27', 'O:29:"DeletePagePageWorkflowRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"11";s:3:"cID";s:3:"128";s:4:"wrID";s:2:"14";}'),
(21, 15, '2015-03-02 22:45:16', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"131";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"15";}'),
(22, 16, '2015-03-02 22:46:39', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"21";s:4:"wrID";s:2:"16";}'),
(23, 17, '2015-03-02 22:47:48', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"131";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"17";}'),
(24, 18, '2015-03-02 22:49:17', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"131";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"18";}'),
(25, 19, '2015-03-02 22:50:12', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"131";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"19";}'),
(26, 20, '2015-03-02 22:55:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"131";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"20";}'),
(27, 21, '2015-03-02 23:04:38', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"130";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"21";}'),
(28, 22, '2015-03-02 23:22:43', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"22";}'),
(29, 23, '2015-03-02 23:23:53', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"23";}'),
(30, 24, '2015-03-02 23:25:21', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"24";}'),
(31, 25, '2015-03-02 23:27:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"25";}'),
(32, 26, '2015-03-02 23:27:53', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"26";}'),
(33, 27, '2015-03-02 23:32:16', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:1:"7";s:4:"wrID";s:2:"27";}'),
(34, 28, '2015-03-02 23:33:17', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:1:"8";s:4:"wrID";s:2:"28";}'),
(35, 29, '2015-03-02 23:33:58', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:1:"9";s:4:"wrID";s:2:"29";}'),
(36, 30, '2015-03-02 23:34:26', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:2:"10";s:4:"wrID";s:2:"30";}'),
(37, 31, '2015-03-02 23:35:04', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:2:"11";s:4:"wrID";s:2:"31";}'),
(38, 32, '2015-03-02 23:35:42', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:2:"12";s:4:"wrID";s:2:"32";}'),
(39, 33, '2015-03-02 23:36:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"127";s:4:"cvID";s:2:"13";s:4:"wrID";s:2:"33";}'),
(40, 34, '2015-03-03 14:00:13', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"129";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"34";}'),
(41, 35, '2015-03-03 14:03:54', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"129";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"35";}');

-- --------------------------------------------------------

--
-- Structure de la table `workflowrequestobjects`
--

CREATE TABLE IF NOT EXISTS `workflowrequestobjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Structure de la table `workflows`
--

CREATE TABLE IF NOT EXISTS `workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `workflowtypes`
--

CREATE TABLE IF NOT EXISTS `workflowtypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `workflowtypes`
--

INSERT INTO `workflowtypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
